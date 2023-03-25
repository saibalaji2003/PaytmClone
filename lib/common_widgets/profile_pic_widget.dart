import 'dart:math';

import 'package:flutter/material.dart';

class ProfilePicWidget extends StatelessWidget {
  final String? image;
  final String name;

  const ProfilePicWidget({super.key, this.image, required this.name});

  @override
  Widget build(BuildContext context) {
    Random random = Random();
    List<Color> colorsList = [
      Colors.black,
      Colors.red,
      Colors.yellow,
      Colors.green,
      Colors.pink,
      Colors.indigo,
      Colors.orange,
      Colors.purple,
      Colors.brown,
      Colors.blue,
    ];
    String firstLetter = 'U';
    firstLetter = name.split('').first;
    return image == null
        ? Container(
            alignment: Alignment.center,
            height: 50,
            width: 50,
            decoration: BoxDecoration(
              color: colorsList[random.nextInt(10)],
              shape: BoxShape.circle,
            ),
            child: Text(
              firstLetter,
              style: const TextStyle(
                color: Colors.white,
                fontSize: 20,
              ),
            ),
          )
        : ClipOval(
            child: Image.network(
              image!,
              height: 50,
              width: 50,
              fit: BoxFit.cover,
            ),
          );
  }
}
