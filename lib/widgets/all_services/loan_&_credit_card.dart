import 'package:flutter/material.dart';
import 'package:paytmclone/models/cashback_points.dart';
import 'package:paytmclone/screens/cashback_and_offers.dart';

class Screen3 extends StatelessWidget {
  const Screen3({super.key});

  @override
  Widget build(BuildContext context) {
    List<CashbackPointsModel> loansAndCreditCardsList = [
      CashbackPointsModel(
        icon: Icons.smartphone,
        text1: 'Mobile',
        text2: 'Recharge',
        containerText: '',
        isContainerShown: false,
      ),
      CashbackPointsModel(
        icon: Icons.smartphone,
        text1: 'Mobile',
        text2: 'Recharge',
        containerText: '',
        isContainerShown: false,
      ),
      CashbackPointsModel(
        icon: Icons.smartphone,
        text1: 'Mobile',
        text2: 'Recharge',
        containerText: '',
        isContainerShown: false,
      ),
      CashbackPointsModel(
        icon: Icons.smartphone,
        text1: 'Mobile',
        text2: 'Recharge',
        containerText: '',
        isContainerShown: false,
      ),
      CashbackPointsModel(
        icon: Icons.smartphone,
        text1: 'Mobile',
        text2: 'Recharge',
        containerText: '',
        isContainerShown: false,
      ),
      CashbackPointsModel(
        icon: Icons.smartphone,
        text1: 'Mobile',
        text2: 'Recharge',
        containerText: '',
        isContainerShown: false,
      ),
    ];
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.all(10.0),
          child: GridView.builder(
            shrinkWrap: true,
            primary: false,
            gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 3,
            ),
            itemCount: loansAndCreditCardsList.length,
            itemBuilder: (BuildContext context, int index) {
              return CashbackPointsWidget(
                  cashbackPointsModel: loansAndCreditCardsList[index]);
            },
          ),
        ),
      ],
    );
  }
}
