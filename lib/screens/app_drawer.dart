import 'package:flutter/material.dart';
import 'package:paytmclone/common_widgets/drawer_list_widget.dart';
import 'package:paytmclone/models/drawer_listview.dart';
import 'package:paytmclone/screens/app_drawer/become_a_merchant.dart';
import 'package:paytmclone/screens/app_drawer/orders_and_bookings.dart';

class AppDrawerWidget extends StatelessWidget {
  const AppDrawerWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    List<DrawerListModel> drawerListModelList = [
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
        navigatorScreen: const OrdersAndBookingsScreen(),
      ),
      DrawerListModel(
        icon: Icons.money,
        text1: 'Cashback & Offers',
        text2: 'Scratchcards, Cashback Points, Vouchers, and Offers',
      ),
      DrawerListModel(
        icon: Icons.mobile_friendly_outlined,
        text1: 'Tap to Pay',
        text2:
            'Activate new or manage existing cards. Check transaction history for activated cards',
      ),
      DrawerListModel(
        icon: Icons.person_2_outlined,
        text1: 'Profile Settings',
        text2: 'Crediit at 0% interest',
      ),
      DrawerListModel(
        icon: Icons.question_mark_outlined,
        text1: 'Help & Support',
        text2: 'Customer Supoort, Your Queries, Frequently Asked Questions',
      ),
      DrawerListModel(
        icon: Icons.currency_exchange_outlined,
        text1: 'Instant Personal Loan',
        text2: '₹3 Lakh tak, bus 2mins mein, Get now!',
      ),
      DrawerListModel(
        icon: Icons.manage_accounts_outlined,
        text1: 'Become a Merchant',
        text2: '₹3 Lakh tak, bus 2mins mein, Get now!',
        isDividerShown: false,
        navigatorScreen: const BecomeAMerchantScreen(),
      ),
    ];

    return SafeArea(
      child: SingleChildScrollView(
        primary: true,
        child: Padding(
          padding: const EdgeInsets.all(15.0),
          child: Column(
            children: [
              const SizedBox(
                height: 75,
              ),
              Stack(
                alignment: Alignment.topCenter,
                clipBehavior: Clip.none,
                children: [
                  Container(
                    padding: const EdgeInsets.only(top: 65),
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(15),
                      border: Border.all(color: Colors.grey.shade300),
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      // mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: const [
                            Text(
                              'Vishwanath Sai Balaji',
                              style: TextStyle(
                                color: Colors.black,
                                fontWeight: FontWeight.bold,
                                fontSize: 19,
                              ),
                            ),
                            SizedBox(
                              width: 5,
                            ),
                            Icon(
                              Icons.check_circle,
                              color: Colors.blue,
                            )
                          ],
                        ),
                        const SizedBox(
                          height: 5,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: const [
                            Text(
                              'UPI ID: 9573053883@paytm',
                              style: TextStyle(
                                color: Colors.black,
                                // fontWeight: FontWeight.bold,
                                fontSize: 15,
                              ),
                            ),
                            SizedBox(
                              width: 5,
                            ),
                            Text(
                              'Copy',
                              style: TextStyle(
                                color: Colors.blue,
                                // fontWeight: FontWeight.bold,
                                fontSize: 15,
                              ),
                            ),
                          ],
                        ),
                        const SizedBox(
                          height: 5,
                        ),
                        const Text(
                          'Paytm: 9573053883',
                          style: TextStyle(
                            color: Colors.black,
                            // fontWeight: FontWeight.bold,
                            fontSize: 15,
                          ),
                        ),
                        const SizedBox(
                          height: 10,
                        ),
                        Image.asset(
                          'assets/images/qr_code.jpg',
                          height: 200,
                          width: 200,
                        ),
                        const SizedBox(
                          height: 15,
                        ),
                        RichText(
                          textAlign: TextAlign.center,
                          text: const TextSpan(
                            text:
                                'Payments made to this Qr through Paytm, Gpay, phonepe, or any other UPI app will be received in your ',
                            style: TextStyle(color: Colors.grey, fontSize: 14),
                            children: <TextSpan>[
                              TextSpan(
                                text: 'linked bank account',
                                style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  color: Colors.blue,
                                ),
                              ),
                              TextSpan(
                                text: ' (State Bank of India - 3684)',
                                style:
                                    TextStyle(color: Colors.grey, fontSize: 14),
                              ),
                            ],
                          ),
                        ),
                        const SizedBox(
                          height: 20,
                        ),
                        Container(
                          padding: const EdgeInsets.symmetric(
                              horizontal: 14, vertical: 5),
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(25),
                            border: Border.all(color: Colors.blue),
                          ),
                          child: Row(
                            mainAxisSize: MainAxisSize.min,
                            children: const [
                              Icon(
                                Icons.share,
                                color: Colors.blue,
                                size: 17,
                              ),
                              SizedBox(
                                width: 5,
                              ),
                              Text(
                                'Share QR',
                                style: TextStyle(
                                  color: Colors.blue,
                                  fontWeight: FontWeight.bold,
                                  fontSize: 17,
                                ),
                              ),
                            ],
                          ),
                        ),
                        const SizedBox(
                          height: 25,
                        ),
                        Container(
                          padding: const EdgeInsets.all(4),
                          decoration: const BoxDecoration(
                            color: Colors.blue,
                            borderRadius: BorderRadius.only(
                              bottomLeft: Radius.circular(1),
                              bottomRight: Radius.circular(1),
                            ),
                          ),
                        ),
                        Container(
                          padding: const EdgeInsets.all(4),
                          decoration: const BoxDecoration(
                            color: Colors.indigo,
                            borderRadius: BorderRadius.only(
                              bottomLeft: Radius.circular(15),
                              bottomRight: Radius.circular(15),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Positioned(
                    top: -60,
                    child: Stack(
                      children: [
                        ClipOval(
                          child: Image.asset(
                            'assets/images/images.png',
                            height: 125,
                            width: 125,
                            fit: BoxFit.cover,
                          ),
                        ),
                        Positioned(
                          right: 15,
                          bottom: 25,
                          child: Container(
                            padding: const EdgeInsets.all(4),
                            decoration: const BoxDecoration(
                              color: Colors.white,
                              shape: BoxShape.circle,
                            ),
                            child: const Icon(
                              Icons.camera,
                              color: Colors.grey,
                              size: 15,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
              const SizedBox(
                height: 10,
              ),
              Container(
                padding: const EdgeInsets.all(10),
                decoration: BoxDecoration(
                  color: const Color(0xffF6F9FE),
                  borderRadius: BorderRadius.circular(15),
                  border: Border.all(color: Colors.grey.shade300),
                ),
                child: Row(
                  children: [
                    Container(
                      padding: const EdgeInsets.all(10),
                      decoration: const BoxDecoration(
                        color: Colors.indigo,
                        shape: BoxShape.circle,
                      ),
                      child: const Icon(
                        Icons.currency_rupee,
                        size: 17,
                        color: Colors.white,
                      ),
                    ),
                    const SizedBox(
                      width: 7,
                    ),
                    Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: const [
                          Text(
                            'Hide your phone number from UPI ID',
                            style: TextStyle(
                              color: Colors.black,
                              fontWeight: FontWeight.bold,
                              fontSize: 12,
                            ),
                          ),
                          SizedBox(
                            height: 1,
                          ),
                          Text(
                            'Add new UPI ID',
                            style: TextStyle(
                              color: Colors.grey,
                              // fontWeight: FontWeight.bold,
                              fontSize: 12,
                            ),
                          ),
                        ],
                      ),
                    ),
                    Container(
                      padding: const EdgeInsets.symmetric(
                          horizontal: 7, vertical: 4),
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(25),
                        border: Border.all(color: Colors.blue),
                      ),
                      child: Row(
                        mainAxisSize: MainAxisSize.min,
                        children: const [
                          Icon(
                            Icons.add,
                            color: Colors.blue,
                            size: 17,
                          ),
                          SizedBox(
                            width: 2,
                          ),
                          Text(
                            'Add',
                            style: TextStyle(
                              color: Colors.blue,
                              fontWeight: FontWeight.bold,
                              fontSize: 13,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              const SizedBox(
                height: 12,
              ),
              ClipRRect(
                borderRadius: BorderRadius.circular(5),
                child: Image.asset(
                  'assets/images/swiggy.jpg',
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              Container(
                padding: const EdgeInsets.all(10),
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(15),
                  border: Border.all(
                    color: Colors.grey.shade300,
                  ),
                ),
                child: Padding(
                  padding: const EdgeInsets.only(top: 15),
                  child: ListView.builder(
                    scrollDirection: Axis.vertical,
                    shrinkWrap: true,
                    primary: false,
                    physics: const NeverScrollableScrollPhysics(),
                    itemCount: drawerListModelList.length,
                    itemBuilder: (BuildContext context, int index) {
                      return DrawerListWidget(
                        drawerListModel: drawerListModelList[index],
                      );
                    },
                  ),
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              Container(
                padding:
                    const EdgeInsets.symmetric(horizontal: 7, vertical: 10),
                decoration: BoxDecoration(
                  color: const Color(0xffF6F9FE),
                  borderRadius: BorderRadius.circular(15),
                  // border: Border.all(color: Colors.grey.shade300),
                ),
                child: Row(
                  children: [
                    ClipOval(
                      child: Image.asset(
                        'assets/images/images.png',
                        fit: BoxFit.cover,
                        height: 40,
                        width: 40,
                      ),
                    ),
                    const SizedBox(
                      width: 7,
                    ),
                    Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Row(
                            children: [
                              const Text(
                                'Tata 1mg',
                                style: TextStyle(
                                  color: Colors.black,
                                  fontWeight: FontWeight.bold,
                                  fontSize: 14,
                                ),
                              ),
                              const SizedBox(
                                width: 10,
                              ),
                              Container(
                                padding: const EdgeInsets.all(3),
                                decoration: BoxDecoration(
                                  color: Colors.grey,
                                  borderRadius: BorderRadius.circular(5),
                                ),
                                child: const Text(
                                  'AD',
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontWeight: FontWeight.bold,
                                    fontSize: 12,
                                  ),
                                ),
                              ),
                            ],
                          ),
                          const Text(
                            '25% off on medicine order.',
                            style: TextStyle(
                              color: Colors.grey,
                              fontWeight: FontWeight.bold,
                              fontSize: 14,
                            ),
                          ),
                          const Text(
                            'USE code: PAYTMSCNEW',
                            style: TextStyle(
                              color: Colors.grey,
                              fontWeight: FontWeight.bold,
                              fontSize: 14,
                            ),
                          ),
                        ],
                      ),
                    ),
                    const Text(
                      'Order NOw',
                      style: TextStyle(
                        color: Colors.blue,
                        fontWeight: FontWeight.bold,
                        fontSize: 14,
                      ),
                    ),
                  ],
                ),
              ),
              const SizedBox(
                height: 25,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Text(
                    'v10.23.2(721100)',
                    style: TextStyle(
                      color: Colors.grey,
                      fontWeight: FontWeight.bold,
                      fontSize: 14,
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 10),
                    child: Container(
                      height: 20,
                      color: Colors.grey,
                      width: 1,
                    ),
                  ),
                  const Text(
                    'Policies',
                    style: TextStyle(
                      color: Colors.blue,
                      fontWeight: FontWeight.bold,
                      fontSize: 15,
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
