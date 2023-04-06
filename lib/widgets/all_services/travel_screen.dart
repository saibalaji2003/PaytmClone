import 'package:flutter/material.dart';
import 'package:paytmclone/models/cashback_points.dart';
import 'package:paytmclone/screens/cashback_and_offers.dart';

class Screen4 extends StatelessWidget {
  const Screen4({super.key});

  @override
  Widget build(BuildContext context) {
    List<CashbackPointsModel> travelScreenList = [
      CashbackPointsModel(
        icon: Icons.flight,
        text1: 'Flight Tickets',
        text2: '',
        containerText: '',
        isContainerShown: false,
      ),
      CashbackPointsModel(
        icon: Icons.directions_bus_outlined,
        text1: 'Bus Tickets',
        text2: '',
        containerText: '',
        isContainerShown: false,
      ),
      CashbackPointsModel(
        icon: Icons.train_outlined,
        text1: 'Train Tickets',
        text2: '',
        containerText: '',
        isContainerShown: false,
      ),
      CashbackPointsModel(
        icon: Icons.home_work_outlined,
        text1: 'Hotels',
        text2: '',
        containerText: '',
        isContainerShown: false,
      ),
      CashbackPointsModel(
        icon: Icons.car_repair_outlined,
        text1: 'Outstation',
        text2: 'Cabs',
        containerText: '',
        isContainerShown: false,
      ),
      CashbackPointsModel(
        icon: Icons.car_rental_outlined,
        text1: 'Ola Cabs',
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
            itemCount: travelScreenList.length,
            itemBuilder: (BuildContext context, int index) {
              return CashbackPointsWidget(
                  cashbackPointsModel: travelScreenList[index]);
            },
          ),
        ),
      ],
    );
  }
}
