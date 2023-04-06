import 'package:flutter/material.dart';
import 'package:paytmclone/models/all_services_screen_list.dart';
import 'package:paytmclone/widgets/all_services/featured_screen.dart';
import 'package:paytmclone/widgets/all_services/insurance_screen.dart';
import 'package:paytmclone/widgets/all_services/loan_&_credit_card.dart';
import 'package:paytmclone/widgets/all_services/mini_apps_store.dart';
import 'package:paytmclone/widgets/all_services/movies_and_events.dart';
import 'package:paytmclone/widgets/all_services/recharge_and_pay_bills.dart';
import 'package:paytmclone/widgets/all_services/stocks_&_ipo.dart';
import 'package:paytmclone/widgets/all_services/travel_screen.dart';
import 'package:paytmclone/widgets/all_services/wallet_screen.dart';

class AllServicesScreen extends StatefulWidget {
  const AllServicesScreen({super.key});

  @override
  State<AllServicesScreen> createState() => _AllServicesScreenState();
}

class _AllServicesScreenState extends State<AllServicesScreen> {
  int featuredNumber = 0;
  changeFeaturedNumberValue(int index) {
    featuredNumber = index;
    debugPrint(featuredNumber.toString());
    setState(() {});
  }

  List<ListContainerModel> containerModelList = [
    ListContainerModel(
      text: 'Featured',
    ),
    ListContainerModel(
      text: 'Recharge and Pay Bills',
    ),
    ListContainerModel(
      text: 'Loan & Credit Card',
    ),
    ListContainerModel(
      text: 'Travel',
    ),
    ListContainerModel(
      text: 'Stcoks & IPO',
    ),
    ListContainerModel(
      text: 'Movies & Events',
    ),
    ListContainerModel(
      text: 'Mini Apps Store',
    ),
    ListContainerModel(
      text: 'Wallet',
    ),
    ListContainerModel(
      text: 'Insurance',
    ),
    ListContainerModel(
      text: 'Paytm Bank',
    ),
    ListContainerModel(
      text: 'City Transit',
    ),
    ListContainerModel(
      text: 'Tap to Pay',
    ),
    ListContainerModel(
      text: 'Paytm for Business',
    ),
    ListContainerModel(
      text: 'Paytm Health',
    ),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        leading: GestureDetector(
          onTap: () {
            Navigator.pop(context);
          },
          child: const Icon(
            Icons.clear,
            color: Colors.black,
          ),
        ),
        titleSpacing: 0,
        title: TextField(
          decoration: InputDecoration(
            prefixIcon: const Icon(
              Icons.search,
              color: Colors.grey,
            ),
            fillColor: const Color(0xffF4F8FB),
            filled: true,
            hintText: 'Search Paytm',
            hintStyle: const TextStyle(
              color: Colors.grey,
              fontWeight: FontWeight.bold,
            ),
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(50),
            ),
          ),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.only(top: 15),
        child: Row(
          children: [
            SizedBox(
              height: double.infinity,
              width: 100,
              child: ListView.builder(
                scrollDirection: Axis.vertical,
                itemCount: containerModelList.length,
                itemBuilder: (BuildContext context, int index) {
                  return GestureDetector(
                    onTap: () {
                      changeFeaturedNumberValue(index);
                    },
                    child: ListContainerWidget(
                        // index: index,
                        // onTap: changeFeaturedNumberValue,
                        listContainerModel: containerModelList[index]),
                  );
                },
              ),
            ),
            Expanded(
              child: featuredNumber == 0
                  ? const Screen1()
                  : featuredNumber == 1
                      ? const Screen2()
                      : featuredNumber == 2
                          ? const Screen3()
                          : featuredNumber == 3
                              ? const Screen4()
                              : featuredNumber == 4
                                  ? const Screen5()
                                  : featuredNumber == 5
                                      ? const Screen6()
                                      : featuredNumber == 6
                                          ? const Screen7()
                                          : featuredNumber == 7
                                              ? const Screen8()
                                              : const Screen9(),
            )
          ],
        ),
      ),
    );
  }
}

class ListContainerWidget extends StatelessWidget {
  // final Function(int) onTap;
  final ListContainerModel listContainerModel;
  // final int index;
  const ListContainerWidget({
    super.key,
    required this.listContainerModel,
    // required this.onTap,
    // required this.index,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          // onTap: () {
          //   // onTap(index);
          // },
          child: Container(
            alignment: Alignment.center,
            padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 25),
            // height: 75,
            width: 100,
            decoration: const BoxDecoration(
              color: Color(0xffF4F8FB),
            ),
            child: Row(
              children: [
                Flexible(
                  child: Text(
                    listContainerModel.text,
                    style: const TextStyle(
                      fontWeight: FontWeight.bold,
                      color: Colors.black,
                      fontSize: 15,
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
        Container(
          color: Colors.grey.shade400,
          height: 2,
          width: 100,
        )
      ],
    );
  }
}
