import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:paytmclone/models/cashback_points.dart';
import 'package:paytmclone/screens/cashback_and_offers.dart';

class Screen7 extends StatelessWidget {
  const Screen7({super.key});

  @override
  Widget build(BuildContext context) {
    List<CashbackPointsModel> miniAppsStoreList = [
      CashbackPointsModel(
        icon: Icons.smartphone,
        text1: 'Flipkart',
        text2: '',
        containerText: '',
        isContainerShown: false,
      ),
      CashbackPointsModel(
        icon: Icons.mobile_friendly_outlined,
        text1: 'Order Food',
        text2: '',
        containerText: '',
        isContainerShown: false,
      ),
      CashbackPointsModel(
        icon: Icons.data_thresholding_outlined,
        text1: "Domino's",
        text2: '',
        containerText: '',
        isContainerShown: false,
      ),
      CashbackPointsModel(
        icon: Icons.lightbulb_outline,
        text1: 'Popcorn &',
        text2: 'Company',
        containerText: '',
        isContainerShown: false,
      ),
      CashbackPointsModel(
        icon: Icons.home_outlined,
        text1: 'Shop Online',
        text2: '',
        containerText: '',
        isContainerShown: false,
      ),
      CashbackPointsModel(
        icon: Icons.how_to_vote_sharp,
        text1: 'Order',
        text2: 'Groceries',
        containerText: '',
        isContainerShown: false,
      ),
      CashbackPointsModel(
        icon: Icons.payment_outlined,
        text1: 'Travel',
        text2: '',
        containerText: '',
        isContainerShown: false,
      ),
      CashbackPointsModel(
        icon: Icons.broadcast_on_home,
        text1: 'Play Games',
        text2: '',
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
            itemCount: miniAppsStoreList.length,
            itemBuilder: (BuildContext context, int index) {
              return index == 8
                  ? Padding(
                      padding: const EdgeInsets.only(top: 20),
                      child: GestureDetector(
                        onTap: () {
                          Fluttertoast.showToast(msg: 'Nothing Here');
                        },
                        child: Column(
                          children: [
                            Container(
                              padding: const EdgeInsets.all(10),
                              // height: 50,
                              // width: 50,
                              decoration: BoxDecoration(
                                color: Colors.blue.withOpacity(0.3),
                                shape: BoxShape.circle,
                              ),
                              child: const Icon(
                                Icons.arrow_forward,
                                color: Colors.blue,
                                size: 25,
                              ),
                            ),
                            const SizedBox(
                              height: 5,
                            ),
                            const Text(
                              'See All',
                              style: TextStyle(
                                color: Colors.blue,
                                fontWeight: FontWeight.bold,
                              ),
                            )
                          ],
                        ),
                      ),
                    )
                  : CashbackPointsWidget(
                      cashbackPointsModel: miniAppsStoreList[index],
                    );
            },
          ),
        ),
      ],
    );
  }
}
