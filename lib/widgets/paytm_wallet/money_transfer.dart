import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';

class PaytmWalletMoneyTransfer extends StatelessWidget {
  final IconData icon;
  final String text1;
  final String text2;

  final bool isContainerShown;
  final String containerText;
  final bool containerTextColor;
  final Widget? navigatorScreen;
  const PaytmWalletMoneyTransfer({
    super.key,
    required this.icon,
    required this.text1,
    required this.text2,
    this.navigatorScreen,
    this.isContainerShown = true,
    required this.containerText,
    this.containerTextColor = true,
  });

  @override
  Widget build(BuildContext context) {
    return Flexible(
      child: GestureDetector(
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
            Stack(
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
                Positioned(
                    top: -0,
                    right: 2,
                    child: isContainerShown
                        ? Container(
                            padding: const EdgeInsets.symmetric(
                                horizontal: 6, vertical: 2),
                            decoration: BoxDecoration(
                              color: Colors.green.shade800,
                              borderRadius: BorderRadius.circular(5),
                            ),
                            child: Text(
                              containerText,
                              style: TextStyle(
                                color: containerTextColor
                                    ? Colors.white
                                    : Colors.transparent,
                                fontWeight: FontWeight.bold,
                                fontSize: 11,
                              ),
                            ),
                          )
                        : const SizedBox()),
              ],
            ),
            const SizedBox(
              height: 10,
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
      ),
    );
  }
}
