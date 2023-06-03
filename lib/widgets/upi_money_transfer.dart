import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';

class UpiMoneyTransferWidget extends StatelessWidget {
  final IconData icon;
  final String text1;
  final String text2;
  final Widget? navigatorScreen;
  const UpiMoneyTransferWidget({
    super.key,
    required this.icon,
    required this.text1,
    required this.text2,
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
          // ScaffoldMessenger.of(context).showSnackBar(
          //   const SnackBar(
          //     content: Text(
          //       'opened',
          //       style: TextStyle(
          //         color: Colors.white,
          //         fontWeight: FontWeight.bold,
          //       ),
          //     ),
          //   ),
          // );
        }
      },
      child: Column(
        children: [
          Container(
            padding: const EdgeInsets.all(10),
            decoration: const BoxDecoration(
              color: Color(0xffE1F5FE),
              shape: BoxShape.circle,
            ),
            child: Icon(
              icon,
              color: Colors.black,
              size: 30,
            ),
          ),
          const SizedBox(
            height: 5,
          ),
          Text(
            text1,
            style: const TextStyle(
              color: Colors.black,
              fontWeight: FontWeight.bold,
              fontSize: 13,
            ),
          ),
          Text(
            text2,
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
