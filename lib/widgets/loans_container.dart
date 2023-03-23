import 'package:flutter/material.dart';

class LoansContainerWidget extends StatelessWidget {
  final String text1;
  final String text2;
  final String text3;
  final IconData icon;
  const LoansContainerWidget({
    super.key,
    required this.text1,
    required this.text2,
    required this.text3,
    required this.icon,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 250,
      padding: const EdgeInsets.all(12),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(15),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            text1,
            style: const TextStyle(
              color: Colors.black,
              fontSize: 12,
              fontWeight: FontWeight.bold,
            ),
          ),
          const SizedBox(
            height: 4,
          ),
          Text(
            text2,
            style: const TextStyle(
              color: Colors.black,
              fontSize: 12,
              fontWeight: FontWeight.bold,
            ),
          ),
          const SizedBox(
            height: 7,
          ),
          Row(
            children: [
              Text(
                text3,
                style: const TextStyle(
                  color: Colors.blue,
                  fontSize: 12,
                  fontWeight: FontWeight.bold,
                ),
              ),
              const Spacer(),
              Icon(
                icon,
                color: Colors.black,
                size: 29,
              )
            ],
          )
        ],
      ),
    );
  }
}
