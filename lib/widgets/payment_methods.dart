import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';

class PaymentMethodsWidget extends StatelessWidget {
  final String text1;
  final IconData icon;

  final String text2;
  final String text3;
  final bool isText1Shown;
  final bool isGapShouldShow;
  final Widget? navigatorScreen;

  const PaymentMethodsWidget({
    super.key,
    this.text1 = 'Header',
    required this.icon,
    required this.text2,
    required this.text3,
    this.isText1Shown = false,
    this.isGapShouldShow = true,
    this.navigatorScreen,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        if (navigatorScreen == null) {
          Fluttertoast.showToast(msg: 'No Screen');
        } else {
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => navigatorScreen!,
            ),
          );
        }
      },
      child: Column(
        children: [
          isGapShouldShow
              ? Container(
                  padding: const EdgeInsets.all(3),
                  decoration: BoxDecoration(
                    color: isText1Shown
                        ? const Color(0xffFFD766)
                        : Colors.transparent,
                    borderRadius: BorderRadius.circular(5),
                  ),
                  child: Text(
                    text1,
                    style: TextStyle(
                      color: isText1Shown ? Colors.black : Colors.transparent,
                      fontWeight: FontWeight.bold,
                      fontSize: 11,
                    ),
                  ),
                )
              : const SizedBox(),
          Icon(
            icon,
            color: const Color(0xff092C6C),
            size: 30,
          ),
          const SizedBox(
            height: 10,
          ),
          Text(
            text2,
            style: const TextStyle(
              color: Colors.black,
              fontWeight: FontWeight.bold,
              fontSize: 13,
            ),
          ),
          Text(
            text3,
            style: const TextStyle(
              color: Colors.black,
              fontWeight: FontWeight.bold,
              fontSize: 13,
            ),
          ),
        ],
      ),
    );
  }
}
