import 'dart:math';

import 'package:flutter/material.dart';
import 'package:paytmclone/common_widgets/drawer_list_widget.dart';
import 'package:paytmclone/models/drawer_listview.dart';
import 'package:paytmclone/models/ticket_booking/departure_date.dart';
import 'package:paytmclone/screens/ticket_booking.dart/travel_screen.dart';

class BusTickets extends StatelessWidget {
  const BusTickets({super.key});

  @override
  Widget build(BuildContext context) {
    List<DepartureDateModel> departureDateModelList = [
      DepartureDateModel(
        date: 18,
        day: 'Today',
        containerColor: const Color(0xff00B8F6),
        stackText: '',
        isStackShown: false,
        dateColor: false,
        daycolor: false,
      ),
      DepartureDateModel(
        date: 19,
        day: 'Wed',
        containerColor: Colors.white,
        stackText: 'Holiday',
        isStackShown: true,
      ),
      DepartureDateModel(
        date: 20,
        day: 'Thu',
        containerColor: Colors.white,
        stackText: '',
        isStackShown: false,
      ),
      DepartureDateModel(
        date: 21,
        day: 'Fri',
        containerColor: Colors.white,
        stackText: 'Holiday',
      ),
      DepartureDateModel(
        date: 22,
        day: 'Sat',
        containerColor: Colors.white,
        stackText: 'Holiday',
      ),
    ];
    List<DrawerListModel> moreServicesList = [
      DrawerListModel(
        icon: Icons.question_mark_outlined,
        text1: 'Help & Support',
        text2: 'Customer Supoort, Your Queries, Frequently Asked Questions',
      ),
      DrawerListModel(
        icon: Icons.currency_rupee,
        text1: 'UPI & Pay,ment Settings',
        text2:
            'Change UPI PIN, Linked Bank Accounts, Automatic Payments & Subscriptions, Other Accounts',
      ),
      DrawerListModel(
        icon: Icons.card_giftcard,
        text1: 'Orders & Bookings',
        text2: 'Recharge, Bill Payments, Shopping, Movies, Travel & Others',
      ),
      DrawerListModel(
        icon: Icons.money,
        text1: 'Cashback & Offers',
        text2: 'Scratchcards, Cashback Points, Vouchers, and Offers',
        isDividerShown: false,
      ),
    ];
    return SingleChildScrollView(
      primary: true,
      child: Column(
        children: [
          Container(
            padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 20),
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(15),
              border: Border.all(color: Colors.grey.shade300),
            ),
            child: Column(
              children: [
                Row(
                  children: [
                    const Icon(
                      Icons.circle,
                      color: Color(0xff092C6C),
                      size: 10,
                    ),
                    const SizedBox(
                      width: 15,
                    ),
                    Expanded(
                      child: TextField(
                        decoration: InputDecoration(
                          filled: true,
                          fillColor: Colors.white,
                          hintText: 'From',
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
                              color: Colors.transparent,
                              width: 1.5,
                            ),
                            borderRadius: BorderRadius.circular(10),
                          ),
                          focusedBorder: OutlineInputBorder(
                            borderSide: const BorderSide(
                              color: Colors.transparent,
                              width: 1.5,
                            ),
                            borderRadius: BorderRadius.circular(10),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
                Container(
                  height: 0.5,
                  width: double.infinity,
                  color: Colors.grey,
                ),
                const SizedBox(
                  height: 15,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Container(
                      padding: const EdgeInsets.all(3),
                      decoration: BoxDecoration(
                        color: Colors.white,
                        shape: BoxShape.circle,
                        border: Border.all(color: Colors.grey.shade300),
                      ),
                      child: Transform.rotate(
                        angle: pi / 2,
                        child: const Icon(
                          Icons.compare_arrows,
                          color: Colors.black,
                        ),
                      ),
                    ),
                  ],
                ),
                Row(
                  children: [
                    const Icon(
                      Icons.location_on_outlined,
                      color: Color(0xff092C6C),
                      size: 25,
                    ),
                    const SizedBox(
                      width: 15,
                    ),
                    Expanded(
                      child: TextField(
                        decoration: InputDecoration(
                          filled: true,
                          fillColor: Colors.white,
                          hintText: 'To',
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
                              color: Colors.transparent,
                              width: 1.5,
                            ),
                            borderRadius: BorderRadius.circular(10),
                          ),
                          focusedBorder: OutlineInputBorder(
                            borderSide: const BorderSide(
                              color: Colors.transparent,
                              width: 1.5,
                            ),
                            borderRadius: BorderRadius.circular(10),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
                Container(
                  height: 0.5,
                  width: double.infinity,
                  color: Colors.grey,
                ),
                const SizedBox(
                  height: 15,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: const [
                    Text(
                      'Departure Date',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 13,
                        color: Colors.grey,
                      ),
                    ),
                    SizedBox(
                      height: 3,
                    ),
                    Text(
                      'Show more Dates',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 15,
                        color: Colors.blue,
                      ),
                    ),
                  ],
                ),
                const SizedBox(
                  height: 15,
                ),
                GridView.builder(
                  shrinkWrap: true,
                  primary: false,
                  gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 5,
                  ),
                  itemCount: departureDateModelList.length,
                  itemBuilder: (BuildContext context, int index) {
                    return DepartureDateContainer(
                      departureDateModel: departureDateModelList[index],
                    );
                  },
                ),
              ],
            ),
          ),
          Container(
            padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 20),
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(15),
              border: Border.all(color: Colors.grey.shade300),
            ),
            child: Column(
              children: [
                Row(
                  children: const [
                    Text(
                      'Seat Type',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        color: Colors.black,
                        fontSize: 15,
                      ),
                    ),
                    SizedBox(
                      width: 5,
                    ),
                    Text(
                      '(Optional)',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        color: Colors.grey,
                        fontSize: 15,
                      ),
                    ),
                  ],
                ),
                const SizedBox(
                  height: 10,
                ),
                Row(
                  children: const [
                    SpecialFaresContainer(
                      text: 'Seater',
                    ),
                    SpecialFaresContainer(
                      text: 'Sleeper',
                    ),
                    SpecialFaresContainer(
                      text: 'Semi-Sleeper',
                    ),
                  ],
                ),
                const SizedBox(
                  height: 10,
                ),
                Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      padding: const EdgeInsets.all(7),
                      decoration: BoxDecoration(
                        color: Colors.blue,
                        border: Border.all(
                          width: 1,
                          color: Colors.grey,
                        ),
                        borderRadius: BorderRadius.circular(5),
                      ),
                    ),
                    const SizedBox(
                      width: 15,
                    ),
                    const Text(
                      'Show AC Bused only',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 14,
                        color: Colors.grey,
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
          const SizedBox(
            height: 15,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                padding: const EdgeInsets.all(3),
                decoration: BoxDecoration(
                  color: Colors.pink.shade50,
                  shape: BoxShape.circle,
                ),
                child: const Icon(
                  Icons.local_offer_outlined,
                  color: Colors.red,
                  size: 35,
                ),
              ),
              const SizedBox(
                width: 15,
              ),
              const Text(
                'Best Offers On Bus Tickets',
                style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 15,
                    color: Color(0xff092C6C)),
              ),
            ],
          ),
          const SizedBox(
            height: 15,
          ),
          ClipRRect(
            borderRadius: BorderRadius.circular(15),
            child: Image.asset('assets/images/paytm_image.jpg'),
          ),
          Container(
            padding: const EdgeInsets.all(15),
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(15),
              border: Border.all(color: Colors.grey.shade300),
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Text(
                  'More Settings',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 17,
                  ),
                ),
                ListView.builder(
                  scrollDirection: Axis.vertical,
                  shrinkWrap: true,
                  primary: false,
                  physics: const NeverScrollableScrollPhysics(),
                  itemCount: moreServicesList.length,
                  itemBuilder: (BuildContext context, int index) {
                    return DrawerListWidget(
                      drawerListModel: moreServicesList[index],
                    );
                  },
                ),
              ],
            ),
          ),
          // BottomNavigationBar(
          //   items: [
          //     BottomNavigationBarItem(
          //       icon: Container(
          //         decoration: BoxDecoration(
          //           color: Colors.blue,
          //           borderRadius: BorderRadius.circular(10),
          //         ),
          //         child: const Text(
          //           'Show Buses',
          //           style: TextStyle(
          //             fontWeight: FontWeight.bold,
          //             fontSize: 15,
          //             color: Colors.white,
          //           ),
          //         ),
          //       ),
          //     ),
          //   ],
          // ),
        ],
      ),
    );
  }
}

class DepartureDateContainer extends StatelessWidget {
  final DepartureDateModel departureDateModel;
  const DepartureDateContainer({
    super.key,
    required this.departureDateModel,
  });

  @override
  Widget build(BuildContext context) {
    return Stack(
      clipBehavior: Clip.none,
      children: [
        Container(
          height: 55,
          width: 60,
          decoration: BoxDecoration(
            color: departureDateModel.containerColor,
            borderRadius: BorderRadius.circular(10),
            border: Border.all(color: Colors.grey.shade300),
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                '${departureDateModel.date}',
                style: TextStyle(
                  color: departureDateModel.dateColor
                      ? Colors.black
                      : Colors.white,
                  fontWeight: FontWeight.bold,
                  fontSize: 17,
                ),
              ),
              Text(
                departureDateModel.day,
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 13,
                  color:
                      departureDateModel.daycolor ? Colors.grey : Colors.white,
                ),
              ),
            ],
          ),
        ),
        Positioned(
          top: -7,
          right: 13,
          child: departureDateModel.isStackShown
              ? Container(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 7, vertical: 2),
                  decoration: BoxDecoration(
                    color: const Color(0xff21c179),
                    borderRadius: BorderRadius.circular(5),
                  ),
                  child: Text(
                    departureDateModel.stackText,
                    style: const TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 9,
                      color: Colors.white,
                    ),
                  ),
                )
              : const SizedBox(),
        ),
      ],
    );
  }
}
