import 'package:flutter/material.dart';
import 'package:paytmclone/common_widgets/profile_pic_widget.dart';
import 'package:paytmclone/models/recents_model.dart';

class RecentsMoneyTransfer extends StatelessWidget {
  final RecentsModel recentsModel;
  const RecentsMoneyTransfer({
    super.key,
    required this.recentsModel,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        ProfilePicWidget(
          name: recentsModel.text1,
          image: recentsModel.image,
        ),
        const SizedBox(
          height: 5,
        ),
        Text(
          recentsModel.text1,
          style: const TextStyle(
            color: Colors.black,
            fontWeight: FontWeight.bold,
            fontSize: 13,
          ),
        ),
        Text(
          recentsModel.text2,
          style: const TextStyle(
            color: Colors.black,
            fontWeight: FontWeight.bold,
            fontSize: 13,
          ),
        ),
      ],
    );
  }
}
