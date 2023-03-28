import 'dart:math';

import 'package:flutter/material.dart';

class PaytmBalanceWidget extends StatelessWidget {
  final String image;
  final String text1;
  final String text2;
  final String balance;
  final bool isText1iconShown;
  final IconData text1Icon;
  final bool isText2Shown;
  final bool isBalanceShown;
  final String rightCornerText;
  final bool isDividerShown;

  const PaytmBalanceWidget({
    required this.image,
    required this.text1,
    required this.text2,
    required this.balance,
    this.isText1iconShown = true,
    required this.text1Icon,
    this.isText2Shown = true,
    this.isBalanceShown = true,
    this.isDividerShown = true,
    required this.rightCornerText,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          children: [
            Image.asset(
              image,
              fit: BoxFit.cover,
              height: 40,
              width: 40,
            ),
            const SizedBox(
              width: 15,
            ),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    children: [
                      Text(
                        text1,
                        style: const TextStyle(
                          color: Colors.black,
                          fontWeight: FontWeight.bold,
                          fontSize: 15,
                        ),
                      ),
                      const SizedBox(
                        width: 10,
                      ),
                      Transform.rotate(
                        angle: pi / 2,
                        child: Icon(
                          text1Icon,
                          color: isText1iconShown
                              ? Colors.black
                              : Colors.transparent,
                          size: 15,
                        ),
                      )
                    ],
                  ),
                  const SizedBox(
                    height: 3,
                  ),
                  isText2Shown
                      ? Text(
                          text2,
                          style: const TextStyle(
                            color: Colors.grey,
                            // fontWeight: FontWeight.bold,
                            fontSize: 13,
                          ),
                        )
                      : const SizedBox(),
                ],
              ),
            ),
            isBalanceShown
                ? Text(
                    balance,
                    style: const TextStyle(
                      color: Colors.black,
                      fontWeight: FontWeight.bold,
                      fontSize: 15,
                    ),
                  )
                : Text(
                    rightCornerText,
                    style: const TextStyle(
                      color: Colors.blue,
                      fontWeight: FontWeight.bold,
                      fontSize: 15,
                    ),
                  ),
          ],
        ),
        Padding(
          padding: const EdgeInsets.symmetric(vertical: 15),
          child: isDividerShown
              ? Container(
                  color: Colors.grey,
                  width: 500,
                  height: 1,
                )
              : const SizedBox(),
        ),
      ],
    );
  }
}
