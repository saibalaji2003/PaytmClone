import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';

class BottomBlueContainerWIdget extends StatelessWidget {
  final String text;
  final bool containerColor;
  final Widget? navigator;

  const BottomBlueContainerWIdget({
    super.key,
    required this.text,
    this.containerColor = true,
    this.navigator,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        if (navigator == null) {
          Fluttertoast.showToast(msg: 'No Screen Here');
        } else {
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => navigator!,
            ),
          );
        }
      },
      child: Container(
        padding: const EdgeInsets.all(10),
        decoration: BoxDecoration(
          color: containerColor
              ? const Color(0xffE1F5FE)
              : const Color(0xffF5F8FD),
          borderRadius: const BorderRadius.only(
            bottomLeft: Radius.circular(15),
            bottomRight: Radius.circular(15),
          ),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              text,
              style: const TextStyle(
                color: Colors.black,
                fontWeight: FontWeight.bold,
                fontSize: 14,
              ),
            ),
            const Icon(
              Icons.arrow_forward_ios,
              color: Colors.black,
              size: 15,
            )
          ],
        ),
      ),
    );
  }
}
