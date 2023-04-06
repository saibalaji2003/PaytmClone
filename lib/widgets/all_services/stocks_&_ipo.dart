import 'package:flutter/material.dart';
import 'package:paytmclone/models/cashback_points.dart';
import 'package:paytmclone/screens/cashback_and_offers.dart';

class Screen5 extends StatelessWidget {
  const Screen5({super.key});

  @override
  Widget build(BuildContext context) {
    List<CashbackPointsModel> stocksAndIpoList = [
      CashbackPointsModel(
        icon: Icons.attach_money,
        text1: 'Paytm Money',
        text2: '',
        containerText: '',
        isContainerShown: false,
      ),
      CashbackPointsModel(
        icon: Icons.shopping_bag_outlined,
        text1: 'Mutual Funds',
        text2: '',
        containerText: '',
        isContainerShown: false,
      ),
      CashbackPointsModel(
        icon: Icons.battery_charging_full_rounded,
        text1: 'Open Demat',
        text2: 'Account',
        containerText: '',
        isContainerShown: false,
      ),
      CashbackPointsModel(
        icon: Icons.grade_outlined,
        text1: 'Gold',
        text2: '',
        containerText: '',
        isContainerShown: false,
      ),
      CashbackPointsModel(
        icon: Icons.multiline_chart_outlined,
        text1: 'NPS',
        text2: '',
        containerText: '',
        isContainerShown: false,
      ),
      CashbackPointsModel(
        icon: Icons.currency_exchange_outlined,
        text1: 'Apply for IPO',
        text2: '',
        containerText: '',
        isContainerShown: false,
      ),
      CashbackPointsModel(
        icon: Icons.currency_bitcoin,
        text1: 'Save Taxes',
        text2: '',
        containerText: '',
        isContainerShown: false,
      ),
      CashbackPointsModel(
        icon: Icons.group_work,
        text1: 'F&O',
        text2: '',
        containerText: '',
        isContainerShown: false,
      ),
      CashbackPointsModel(
        icon: Icons.crisis_alert_sharp,
        text1: 'ETFs',
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
            itemCount: stocksAndIpoList.length,
            itemBuilder: (BuildContext context, int index) {
              return CashbackPointsWidget(
                  cashbackPointsModel: stocksAndIpoList[index]);
            },
          ),
        ),
      ],
    );
  }
}
