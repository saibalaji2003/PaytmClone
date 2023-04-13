import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';

class BenefitsContainerWidget extends StatelessWidget {
  final IconData icon;
  final String text1;
  final bool isContainerShown;
  final bool isContainerTextShown;
  final String containerText;
  final String text2;
  final String rightCornerText;
  final bool text2ColorShown;
  final Widget? navigatorScreen;
  const BenefitsContainerWidget({
    super.key,
    required this.icon,
    required this.text1,
    this.isContainerShown = true,
    this.isContainerTextShown = true,
    required this.text2,
    required this.rightCornerText,
    required this.containerText,
    this.text2ColorShown = true,
    this.navigatorScreen,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        if (navigatorScreen == null) {
          Fluttertoast.showToast(msg: 'No Screen Here');
        } else {
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => navigatorScreen!,
            ),
          );
        }
      },
      child: Container(
        padding: const EdgeInsets.all(16),
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(15),
        ),
        child: Row(
          children: [
            Icon(
              icon,
              color: const Color(0xff092C6C),
              size: 25,
            ),
            const SizedBox(
              width: 10,
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
                          fontSize: 15,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      isContainerShown
                          ? Container(
                              decoration: BoxDecoration(
                                color: Colors.grey.shade200,
                                borderRadius: BorderRadius.circular(5),
                              ),
                              child: Text(
                                containerText,
                                style: TextStyle(
                                  color: isContainerShown
                                      ? Colors.green
                                      : Colors.transparent,
                                  fontSize: 15,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            )
                          : const SizedBox()
                    ],
                  ),
                  const SizedBox(
                    height: 3,
                  ),
                  Text(
                    text2,
                    style: TextStyle(
                      color: text2ColorShown ? Colors.black : Colors.green,
                      fontSize: 12,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ],
              ),
            ),
            Row(
              children: [
                Text(
                  rightCornerText,
                  style: const TextStyle(
                    color: Colors.blue,
                    fontSize: 13,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                const Icon(
                  Icons.arrow_forward_ios,
                  color: Colors.blue,
                  size: 15,
                )
              ],
            ),
          ],
        ),
      ),
    );
  }
}
