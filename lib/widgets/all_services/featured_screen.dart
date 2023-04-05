import 'package:flutter/material.dart';
import 'package:paytmclone/models/cashback_points.dart';
import 'package:paytmclone/screens/cashback_and_offers.dart';

class Screen1 extends StatelessWidget {
  const Screen1({super.key});

  @override
  Widget build(BuildContext context) {
    List<CashbackPointsModel> allServicesFeaturedList = [
      CashbackPointsModel(
        icon: Icons.person_add_alt,
        text1: 'Refer & Earn',
        text2: '',
        containerText: 'Flat ₹400',
        isContainerShown: true,
      ),
      CashbackPointsModel(
        icon: Icons.currency_rupee,
        text1: 'Paytm Money',
        text2: '',
        containerText: '',
        isContainerShown: false,
      ),
      CashbackPointsModel(
        icon: Icons.movie_creation_outlined,
        text1: 'Movie Tickets',
        text2: '',
        containerText: 'Flat ₹400',
        isContainerShown: false,
      ),
      CashbackPointsModel(
        icon: Icons.flight_rounded,
        text1: 'Flight Tickets',
        text2: '',
        containerText: 'Flat ₹400',
        isContainerShown: false,
      ),
      CashbackPointsModel(
        icon: Icons.request_page_outlined,
        text1: 'Paytm First',
        text2: '',
        containerText: 'Flat ₹400',
        isContainerShown: false,
      ),
      CashbackPointsModel(
        icon: Icons.card_giftcard_rounded,
        text1: 'Gift Cards',
        text2: '',
        containerText: 'Flat ₹400',
        isContainerShown: false,
      ),
      CashbackPointsModel(
        icon: Icons.wallet,
        text1: 'Auto Add',
        text2: 'Money',
        containerText: 'Flat ₹400',
        isContainerShown: false,
      ),
      CashbackPointsModel(
        icon: Icons.home_work_outlined,
        text1: 'Hotels',
        text2: '',
        containerText: 'Flat ₹400',
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
            itemCount: allServicesFeaturedList.length,
            itemBuilder: (BuildContext context, int index) {
              return CashbackPointsWidget(
                  cashbackPointsModel: allServicesFeaturedList[index]);
            },
          ),
        ),
      ],
    );
  }
}
