import 'package:flutter/material.dart';
import 'package:paytmclone/common_widgets/drawer_list_widget.dart';
import 'package:paytmclone/models/drawer_listview.dart';
import 'package:paytmclone/models/ticket_booking/bank_offers_model.dart';
import 'package:paytmclone/screens/ticket_booking.dart/travel_screen.dart';

class FlightTickets extends StatelessWidget {
  const FlightTickets({super.key});

  @override
  Widget build(BuildContext context) {
    List<BankOffersModel> bankOffersMOdelList = [
      BankOffersModel(
        color: const Color(0xff0062A9),
        offer: '₹1000',
        bottomText1: 'Valid Everyday on HDFC Bank',
        bottomText2: 'EASYEMI Transactions',
        flightType: 'Domestic',
        promoCode: 'FLYHDFCEMI',
      ),
      BankOffersModel(
        color: const Color(0xff7C297B),
        offer: '15%',
        bottomText1: 'Valid Every Friday',
        bottomText2: 'on AU Credit Cards',
        flightType: 'International',
        promoCode: 'FLYAU',
      ),
      BankOffersModel(
        color: const Color(0xff7C297B),
        offer: '₹1000',
        bottomText1: 'Valid Everyday on HDFC Bank',
        bottomText2: 'EASYEMI Transactions',
        flightType: 'Domestic',
        promoCode: 'FLYHDFCEMI',
      ),
      BankOffersModel(
        color: const Color(0xff0062A9),
        offer: '15%',
        bottomText1: 'Valid Every Friday',
        bottomText2: 'on AU Credit Cards',
        flightType: 'International',
        promoCode: 'FLYAU',
      ),
      BankOffersModel(
        color: const Color(0xff7C297B),
        offer: '₹1000',
        bottomText1: 'Valid Everyday on HDFC Bank',
        bottomText2: 'EASYEMI Transactions',
        flightType: 'Domestic',
        promoCode: 'FLYHDFCEMI',
      ),
      BankOffersModel(
        color: const Color(0xff0062A9),
        offer: '15%',
        bottomText1: 'Valid Every Friday',
        bottomText2: 'on AU Credit Cards',
        flightType: 'International',
        promoCode: 'FLYAU',
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
    return Column(
      children: [
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
              Container(
                padding: const EdgeInsets.symmetric(vertical: 3),
                decoration: BoxDecoration(
                  color: const Color(0xffE1F5FE),
                  borderRadius: BorderRadius.circular(5),
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: const [
                    Text(
                      'One Way',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 15,
                      ),
                    ),
                    Text(
                      'Round Trip',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 15,
                      ),
                    ),
                  ],
                ),
              ),
              const SizedBox(
                height: 15,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: const [
                      Text(
                        'From',
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 15,
                          color: Colors.grey,
                        ),
                      ),
                      SizedBox(
                        height: 5,
                      ),
                      Text(
                        'HYD',
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 25,
                        ),
                      ),
                      SizedBox(
                        height: 5,
                      ),
                      Text(
                        'Hyderabad',
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 15,
                          color: Colors.grey,
                        ),
                      ),
                    ],
                  ),
                  const Icon(
                    Icons.compare_arrows,
                    size: 30,
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: const [
                      Text(
                        'To',
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 15,
                          color: Colors.grey,
                        ),
                      ),
                      SizedBox(
                        height: 5,
                      ),
                      Text(
                        'NYC',
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 25,
                        ),
                      ),
                      SizedBox(
                        height: 5,
                      ),
                      Text(
                        'New York',
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 15,
                          color: Colors.grey,
                        ),
                      ),
                    ],
                  ),
                ],
              ),
              const SizedBox(
                height: 10,
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
                    'Save more on Roundtrip',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 13,
                      color: Colors.grey,
                    ),
                  ),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: const [
                  Text(
                    'Sun, 16 Apr 23',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 18,
                    ),
                  ),
                  SizedBox(
                    height: 3,
                  ),
                  Text(
                    '+ Add Return',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 18,
                      color: Colors.blue,
                    ),
                  ),
                ],
              ),
              const SizedBox(
                height: 10,
              ),
              Container(
                height: 0.5,
                width: double.infinity,
                color: Colors.grey,
              ),
              const SizedBox(
                height: 15,
              ),
              const Text(
                'Travellers & Cabin Class',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 13,
                  color: Colors.grey,
                ),
              ),
              const SizedBox(
                height: 3,
              ),
              const Text(
                '1 Adult Economy',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 18,
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              Container(
                height: 0.5,
                width: double.infinity,
                color: Colors.grey,
              ),
              const SizedBox(
                height: 15,
              ),
              const Text(
                'Special Fares (optional)',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 13,
                  color: Colors.grey,
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: const [
                  SpecialFaresContainer(
                    text: 'Armed Forces',
                  ),
                  SpecialFaresContainer(
                    text: 'Student',
                  ),
                  SpecialFaresContainer(
                    text: 'Senior Citizen',
                  ),
                  SpecialFaresContainer(
                    text: 'Friends',
                  ),
                ],
              ),
              const SizedBox(
                height: 25,
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
                    'Show Non-stop flights only',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 14,
                      color: Colors.grey,
                    ),
                  ),
                ],
              ),
              const SizedBox(
                height: 20,
              ),
              Container(
                padding: const EdgeInsets.symmetric(vertical: 17),
                decoration: BoxDecoration(
                  color: Colors.blue,
                  borderRadius: BorderRadius.circular(10),
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: const [
                    Text(
                      'Search Flights',
                      style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                        fontSize: 18,
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
        const SizedBox(
          height: 15,
        ),
        ClipRRect(
          borderRadius: BorderRadius.circular(15),
          child: Image.asset('assets/images/paytm_image.jpg'),
        ),
        const SizedBox(
          height: 15,
        ),
        const Text(
          'Bank Offers',
          style: TextStyle(
            color: Colors.black,
            fontWeight: FontWeight.bold,
            fontSize: 18,
          ),
        ),
        const SizedBox(
          height: 15,
        ),
        SizedBox(
          height: 200,
          child: ListView.builder(
            physics: const BouncingScrollPhysics(),
            scrollDirection: Axis.horizontal,
            itemCount: bankOffersMOdelList.length,
            itemBuilder: (BuildContext context, int index) {
              return BankOffersWidget(
                bankOffersModel: bankOffersMOdelList[index],
              );
            },
          ),
        ),
        const SizedBox(
          height: 10,
        ),
        const Text(
          'Special Fares',
          style: TextStyle(
            color: Colors.black,
            fontWeight: FontWeight.bold,
            fontSize: 18,
          ),
        ),
        const SizedBox(
          height: 15,
        ),
        SizedBox(
          height: 200,
          child: ListView.builder(
            physics: const BouncingScrollPhysics(),
            scrollDirection: Axis.horizontal,
            itemCount: bankOffersMOdelList.length,
            itemBuilder: (BuildContext context, int index) {
              return BankOffersWidget(
                bankOffersModel: bankOffersMOdelList[index],
              );
            },
          ),
        ),
        const SizedBox(
          height: 10,
        ),
        ClipRRect(
          borderRadius: BorderRadius.circular(15),
          child: Image.asset(
            'assets/images/paytm_image.jpg',
            height: 100,
            width: double.infinity,
            fit: BoxFit.cover,
          ),
        ),
        const SizedBox(
          height: 25,
        ),
        const Text(
          'Recent Searches',
          style: TextStyle(
            color: Colors.black,
            fontWeight: FontWeight.bold,
            fontSize: 18,
          ),
        ),
        const SizedBox(
          height: 15,
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
      ],
    );
  }
}
