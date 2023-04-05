import 'package:flutter/material.dart';
import 'package:paytmclone/models/cashback_points.dart';
import 'package:paytmclone/screens/cashback_and_offers.dart';

class Screen2 extends StatelessWidget {
  const Screen2({super.key});

  @override
  Widget build(BuildContext context) {
    List<CashbackPointsModel> rechargeAndPayBillsList = [
      CashbackPointsModel(
        icon: Icons.smartphone,
        text1: 'Mobile',
        text2: 'Recharge',
        containerText: '',
        isContainerShown: false,
      ),
      CashbackPointsModel(
        icon: Icons.mobile_friendly_outlined,
        text1: 'Mobile',
        text2: 'Postpaid',
        containerText: '',
        isContainerShown: false,
      ),
      CashbackPointsModel(
        icon: Icons.data_thresholding_outlined,
        text1: 'DTH Recharge',
        text2: '',
        containerText: '',
        isContainerShown: false,
      ),
      CashbackPointsModel(
        icon: Icons.lightbulb_outline,
        text1: 'Electricity Bill',
        text2: 'Payment',
        containerText: '',
        isContainerShown: false,
      ),
      CashbackPointsModel(
        icon: Icons.home_outlined,
        text1: 'Rent via Credit',
        text2: 'Card',
        containerText: '',
        isContainerShown: false,
      ),
      CashbackPointsModel(
        icon: Icons.how_to_vote_sharp,
        text1: 'Hotstar',
        text2: 'Subscription',
        containerText: '',
        isContainerShown: false,
      ),
      CashbackPointsModel(
        icon: Icons.payment_outlined,
        text1: 'Pay Credit',
        text2: 'Card Bill',
        containerText: '',
        isContainerShown: false,
      ),
      CashbackPointsModel(
        icon: Icons.broadcast_on_home,
        text1: 'Broadband /',
        text2: 'Landline',
        containerText: '',
        isContainerShown: false,
      ),
      CashbackPointsModel(
        icon: Icons.insert_chart_outlined_sharp,
        text1: 'LIC /',
        text2: 'Insurance',
        containerText: '',
        isContainerShown: false,
      ),
      CashbackPointsModel(
        icon: Icons.lan_outlined,
        text1: 'Pay Loan',
        text2: '',
        containerText: '',
        isContainerShown: false,
      ),
      CashbackPointsModel(
        icon: Icons.gas_meter_outlined,
        text1: 'Piped Gas Bill',
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
            itemCount: rechargeAndPayBillsList.length,
            itemBuilder: (BuildContext context, int index) {
              return CashbackPointsWidget(
                  cashbackPointsModel: rechargeAndPayBillsList[index]);
            },
          ),
        ),
      ],
    );
  }
}
