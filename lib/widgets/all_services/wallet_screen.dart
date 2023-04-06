import 'package:flutter/material.dart';
import 'package:paytmclone/models/cashback_points.dart';
import 'package:paytmclone/screens/cashback_and_offers.dart';

class Screen8 extends StatelessWidget {
  const Screen8({super.key});

  @override
  Widget build(BuildContext context) {
    List<CashbackPointsModel> walletScreenList = [
      CashbackPointsModel(
        icon: Icons.qr_code_scanner,
        text1: 'Add Money',
        text2: '',
        containerText: '',
        isContainerShown: false,
      ),
      CashbackPointsModel(
        icon: Icons.card_giftcard_outlined,
        text1: 'Gift Vouchers',
        text2: '',
        containerText: '',
        isContainerShown: false,
      ),
      CashbackPointsModel(
        icon: Icons.wallet,
        text1: 'Automatic Add',
        text2: 'Money',
        containerText: 'Set Up',
        isContainerShown: true,
      ),
      CashbackPointsModel(
        icon: Icons.wallet_membership_sharp,
        text1: 'Earn',
        text2: 'Cashback',
        containerText: 'Set Alerts',
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
            itemCount: walletScreenList.length,
            itemBuilder: (BuildContext context, int index) {
              return CashbackPointsWidget(
                cashbackPointsModel: walletScreenList[index],
              );
            },
          ),
        ),
      ],
    );
  }
}
