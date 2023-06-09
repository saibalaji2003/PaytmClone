import 'package:flutter/material.dart';
import 'package:paytmclone/models/cashback_points.dart';
import 'package:paytmclone/screens/cashback_and_offers.dart';

class Screen3 extends StatelessWidget {
  const Screen3({super.key});

  @override
  Widget build(BuildContext context) {
    List<CashbackPointsModel> loansAndCreditCardsList = [
      CashbackPointsModel(
        icon: Icons.currency_rupee,
        text1: 'Paytm',
        text2: 'Postpaid',
        containerText: '',
        isContainerShown: false,
      ),
      CashbackPointsModel(
        icon: Icons.credit_card,
        text1: 'Credit Cards',
        text2: '',
        containerText: '0 Joining',
        isContainerShown: true,
      ),
      CashbackPointsModel(
        icon: Icons.lan_outlined,
        text1: 'Personal Loan',
        text2: '',
        containerText: '',
        isContainerShown: false,
      ),
      CashbackPointsModel(
        icon: Icons.credit_score,
        text1: 'Free Credit',
        text2: 'Score',
        containerText: '',
        isContainerShown: false,
      ),
      CashbackPointsModel(
        icon: Icons.credit_card,
        text1: 'Pay Credit',
        text2: 'Card Bill',
        containerText: '',
        isContainerShown: false,
      ),
      CashbackPointsModel(
        icon: Icons.local_atm_rounded,
        text1: 'Pay Loan',
        text2: '',
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
