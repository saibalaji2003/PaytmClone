import 'dart:math';

import 'package:flutter/material.dart';
import 'package:paytmclone/models/cashback_points.dart';
import 'package:paytmclone/screens/cashback_and_offers.dart';
import 'package:paytmclone/screens/dashboard_appbar/search_screen/paytm_gold.dart';
import 'package:paytmclone/screens/dashboard_appbar/search_screen/search_scrn-activate_now.dart';
import 'package:paytmclone/screens/to_mobile_or_contact.dart';

class SearchScreen extends StatelessWidget {
  const SearchScreen({super.key});

  @override
  Widget build(BuildContext context) {
    List<CashbackPointsModel> cashbackPointsModelList = [
      CashbackPointsModel(
        icon: Icons.train_outlined,
        text1: 'Train Tickets',
        text2: '',
        containerText: '',
        isContainerShown: false,
      ),
      CashbackPointsModel(
        icon: Icons.movie_creation_outlined,
        text1: 'Movie Tickets',
        text2: '',
        containerText: '',
        isContainerShown: false,
      ),
      CashbackPointsModel(
        icon: Icons.account_balance_outlined,
        text1: 'Paytm Bank',
        text2: '',
        containerText: '',
        isContainerShown: false,
      ),
      CashbackPointsModel(
        icon: Icons.handshake_outlined,
        text1: 'Pay Loan',
        text2: '',
        containerText: '',
        isContainerShown: false,
      ),
      CashbackPointsModel(
        icon: Icons.credit_card_off_outlined,
        text1: 'FASTag',
        text2: 'Recharge',
        containerText: '',
        isContainerShown: false,
      ),
      CashbackPointsModel(
        icon: Icons.qr_code_2_outlined,
        text1: 'Add Money',
        text2: '',
        containerText: '',
        isContainerShown: false,
      ),
      CashbackPointsModel(
        icon: Icons.tram_outlined,
        text1: 'Metro',
        text2: '',
        containerText: '',
        isContainerShown: false,
      ),
      CashbackPointsModel(
        icon: Icons.handyman_outlined,
        text1: 'LIC of India',
        text2: '',
        containerText: '',
        isContainerShown: false,
      ),
    ];
    return Scaffold(
      backgroundColor: const Color(0xffF5F8FD),
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        leading: GestureDetector(
          onTap: () {
            Navigator.pop(context);
          },
          child: const Icon(
            Icons.arrow_back,
            color: Colors.black,
          ),
        ),
        titleSpacing: 0,
        title: Padding(
          padding: const EdgeInsets.only(right: 10),
          child: TextField(
            decoration: InputDecoration(
              prefixIcon: const Icon(
                Icons.search,
                color: Colors.grey,
              ),
              filled: true,
              fillColor: Colors.white,
              hintText: 'Search For Deals',
              hintStyle: const TextStyle(
                color: Colors.grey,
                fontWeight: FontWeight.bold,
              ),
              contentPadding: const EdgeInsets.all(-3),
              // border: OutlineInputBorder(
              //   borderSide: BorderSide(
              //     color: Colors.grey.shade300,
              //     width: 0.5,
              //   ),
              //   borderRadius: BorderRadius.circular(15),
              // ),
              enabledBorder: OutlineInputBorder(
                borderSide: const BorderSide(
                  color: Colors.grey,
                  width: 0.5,
                ),
                borderRadius: BorderRadius.circular(10),
              ),
              focusedBorder: OutlineInputBorder(
                borderSide: const BorderSide(
                  color: Colors.grey,
                  width: 0.5,
                ),
                borderRadius: BorderRadius.circular(10),
              ),
            ),
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.only(top: 20, left: 15, right: 15),
          child: Column(
            children: [
              Container(
                padding:
                    const EdgeInsets.symmetric(horizontal: 15, vertical: 20),
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(15),
                  border: Border.all(color: Colors.grey.shade300),
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Text(
                      'Popular Services',
                      style: TextStyle(
                        color: Colors.black,
                        fontWeight: FontWeight.bold,
                        fontSize: 19,
                      ),
                    ),
                    GridView.builder(
                      shrinkWrap: true,
                      primary: false,
                      gridDelegate:
                          const SliverGridDelegateWithFixedCrossAxisCount(
                        crossAxisCount: 4,
                        childAspectRatio: 1 / 1.2,
                      ),
                      itemCount: cashbackPointsModelList.length,
                      itemBuilder: (BuildContext context, int index) {
                        return CashbackPointsWidget(
                          cashbackPointsModel: cashbackPointsModelList[index],
                        );
                      },
                    ),
                  ],
                ),
              ),
              const SizedBox(
                height: 15,
              ),
              GestureDetector(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const ActivateNowScreen(),
                    ),
                  );
                },
                child: const CashbackOfferContainer(
                  image: 'assets/images/paytm_logo.png',
                  text1: 'Activate UPI Lite',
                  text2: 'Get upto ₹100 Cashback',
                  offerText: 'Activate Now',
                ),
              ),
              const SizedBox(
                height: 15,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: const [
                  Text(
                    'Recents',
                    style: TextStyle(
                      color: Colors.black,
                      fontWeight: FontWeight.bold,
                      fontSize: 19,
                    ),
                  ),
                  Text(
                    'Clear All',
                    style: TextStyle(
                      color: Colors.blue,
                      fontWeight: FontWeight.bold,
                      fontSize: 13,
                    ),
                  ),
                ],
              ),
              const SizedBox(
                height: 15,
              ),
              GestureDetector(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const PaytmGoldScreen(),
                    ),
                  );
                },
                child: Container(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      const Text(
                        'Paytm Gold',
                        style: TextStyle(
                          color: Colors.black,
                          // fontWeight: FontWeight.bold,
                          fontSize: 14,
                        ),
                      ),
                      Transform.rotate(
                        angle: pi / -4,
                        child: const Icon(
                          Icons.arrow_right_alt,
                          color: Colors.black,
                          size: 20,
                        ),
                      )
                    ],
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
