import 'dart:math';

import 'package:flutter/material.dart';
import 'package:paytmclone/models/contacts_profilepic.dart';

class ContactsProfilePic extends StatelessWidget {
  final ContactsProfilePicModel contactsProfilePicModel;
  const ContactsProfilePic({super.key, required this.contactsProfilePicModel});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 5),
      child: Row(
        children: [
          ProfilePicWith2Letters(name: contactsProfilePicModel.name),
          const SizedBox(
            width: 10,
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                contactsProfilePicModel.name,
                style: const TextStyle(
                  color: Colors.black,
                  fontWeight: FontWeight.bold,
                  fontSize: 17,
                ),
              ),
              const SizedBox(
                height: 3,
              ),
              Text(
                contactsProfilePicModel.number,
                style: const TextStyle(
                  color: Colors.black,
                  // fontWeight: FontWeight.bold,
                  fontSize: 13,
                ),
              ),
            ],
          )
        ],
      ),
    );
  }
}

class ProfilePicWith2Letters extends StatelessWidget {
  const ProfilePicWith2Letters({
    super.key,
    required this.name,
  });

  final String name;

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
      Colors.orangeAccent,
      Colors.yellowAccent,
      Colors.redAccent,
      Colors.pinkAccent,
      Colors.indigoAccent,
      Colors.teal,
      Colors.cyan,
      Colors.lime,
      Colors.lightGreen,
    ];
    String firstLetter = '';
    String secondLetter = '';
    String nameTrim = name.trim();
    convertingNameToAlphabet() {
      if (nameTrim.contains(' ')) {
        final namesList = nameTrim.split(' ');
        firstLetter = namesList.first.split('').first;
        secondLetter = namesList.last.split('').first;
      } else {
        firstLetter = nameTrim.split('').first;
        secondLetter = nameTrim.split('').last;
      }
    }

    convertingNameToAlphabet();
    return Container(
      alignment: Alignment.center,
      decoration: BoxDecoration(
        color: colorsList[random.nextInt(10)],
        shape: BoxShape.circle,
      ),
      height: 50,
      width: 50,
      child: Text(
        "$firstLetter$secondLetter",
        style: const TextStyle(
          color: Colors.white,
          fontWeight: FontWeight.bold,
          fontSize: 15,
        ),
      ),
    );
  }
}
