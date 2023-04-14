import 'package:flutter/material.dart';
import 'package:paytmclone/common_widgets/drawer_list_widget.dart';
import 'package:paytmclone/models/bills_paid_model.dart';
import 'package:paytmclone/models/cashback_points.dart';
import 'package:paytmclone/models/drawer_listview.dart';
import 'package:paytmclone/screens/cashback_and_offers.dart';
import 'package:paytmclone/widgets/bottom_blue_container.dart';

class ViewMoreScreen extends StatelessWidget {
  const ViewMoreScreen({super.key});

  @override
  Widget build(BuildContext context) {
    List<BillsPaidContainerModel> billsPaidContainerModelList = [
      BillsPaidContainerModel(
        image: 'assets/images/airtel_logo.jpg',
        mobileNumber: 7138789163,
        lastRechargedAmount: 249,
        lastRechargedDate: '20 Jul 2022',
      ),
      BillsPaidContainerModel(
        image: 'assets/images/v_sim_logo.png',
        mobileNumber: 7136471647,
        lastRechargedAmount: 99,
        lastRechargedDate: '04 Nov 2022',
      ),
      BillsPaidContainerModel(
        image: 'assets/images/jio_logo.png',
        mobileNumber: 9891729473,
        lastRechargedAmount: 699,
        lastRechargedDate: '01 Jan 2023',
      ),
      BillsPaidContainerModel(
        image: 'assets/images/airtel_logo.jpg',
        mobileNumber: 9274878827,
        lastRechargedAmount: 99,
        lastRechargedDate: '31 Jan 2023',
      ),
      BillsPaidContainerModel(
        image: 'assets/images/jio_logo.png',
        mobileNumber: 9183616573,
        lastRechargedAmount: 249,
        lastRechargedDate: '25 Feb 2023',
      ),
    ];
    List<CashbackPointsModel> rechargesList = [
      CashbackPointsModel(
        icon: Icons.mobile_friendly,
        text1: 'Mobile',
        text2: 'Recharge',
        containerText: 'Flat 1% Off',
        isContainerShown: false,
      ),
      CashbackPointsModel(
        icon: Icons.smartphone_outlined,
        text1: 'Mobile',
        text2: 'Postpaid',
        containerText: '',
        isContainerShown: false,
      ),
      CashbackPointsModel(
        icon: Icons.currency_rupee,
        text1: 'DTH',
        text2: 'Recharge',
        containerText: 'Upto ₹100 CB',
        isContainerShown: true,
      ),
      CashbackPointsModel(
        icon: Icons.other_houses_outlined,
        text1: 'OTT',
        text2: '',
        containerText: '',
        isContainerShown: false,
      ),
    ];
    List<CashbackPointsModel> payYourHomeBillsList = [
      CashbackPointsModel(
        icon: Icons.lightbulb_outline,
        text1: 'Electricity',
        text2: '',
        containerText: '',
        isContainerShown: false,
      ),
      CashbackPointsModel(
        icon: Icons.apartment,
        text1: 'Apartment',
        text2: '',
        containerText: '',
        isContainerShown: false,
      ),
      CashbackPointsModel(
        icon: Icons.gas_meter,
        text1: 'Book Gas',
        text2: 'Cylinder',
        containerText: '',
        isContainerShown: false,
      ),
      CashbackPointsModel(
        icon: Icons.other_houses_outlined,
        text1: 'OTT',
        text2: '',
        containerText: 'Lowest Fee',
        isContainerShown: true,
      ),
      CashbackPointsModel(
        icon: Icons.broadcast_on_home,
        text1: 'Broadband /',
        text2: 'Landline',
        containerText: '',
        isContainerShown: false,
      ),
      CashbackPointsModel(
        icon: Icons.cast_for_education,
        text1: 'Education',
        text2: 'Fees',
        containerText: '',
        isContainerShown: false,
      ),
      CashbackPointsModel(
        icon: Icons.water,
        text1: 'Water',
        text2: '',
        containerText: '',
        isContainerShown: false,
      ),
      CashbackPointsModel(
        icon: Icons.gas_meter_outlined,
        text1: 'Piped Gas',
        text2: '',
        containerText: '',
        isContainerShown: false,
      ),
    ];
    List<CashbackPointsModel> financialServicesList = [
      CashbackPointsModel(
        icon: Icons.credit_card,
        text1: 'Credit Card',
        text2: 'Payment',
        containerText: '',
        isContainerShown: false,
      ),
      CashbackPointsModel(
        icon: Icons.umbrella_outlined,
        text1: 'LIC /',
        text2: 'Insurance',
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
        icon: Icons.apartment_outlined,
        text1: 'Municipal Tax',
        text2: '',
        containerText: '',
        isContainerShown: false,
      ),
    ];
    List<CashbackPointsModel> TransitList = [
      CashbackPointsModel(
        icon: Icons.credit_card,
        text1: 'FASTag',
        text2: 'Recharge',
        containerText: 'Check Bal',
        isContainerShown: true,
      ),
      CashbackPointsModel(
        icon: Icons.currency_rupee,
        text1: 'ICOL',
        text2: 'Rewards',
        containerText: '',
        isContainerShown: false,
      ),
      CashbackPointsModel(
        icon: Icons.traffic_outlined,
        text1: 'Challan',
        text2: '',
        containerText: '',
        isContainerShown: false,
      ),
      CashbackPointsModel(
        icon: Icons.train_outlined,
        text1: 'Metro',
        text2: 'Recharge',
        containerText: '100 Points',
        isContainerShown: true,
      ),
    ];
    List<CashbackPointsModel> otherServicesList = [
      CashbackPointsModel(
        icon: Icons.currency_rupee,
        text1: 'Subscriptions',
        text2: '',
        containerText: '',
        isContainerShown: false,
      ),
      CashbackPointsModel(
        icon: Icons.play_arrow_outlined,
        text1: 'Google Play',
        text2: 'Recharge',
        containerText: '',
        isContainerShown: false,
      ),
      CashbackPointsModel(
        icon: Icons.home_outlined,
        text1: 'Co-living-',
        text2: 'Spaces',
        containerText: '',
        isContainerShown: false,
      ),
      CashbackPointsModel(
        icon: Icons.home_max_outlined,
        text1: 'Cable TV',
        text2: '',
        containerText: 'Lowest Fee',
        isContainerShown: true,
      ),
      CashbackPointsModel(
        icon: Icons.handshake,
        text1: 'Donations',
        text2: '',
        containerText: '',
        isContainerShown: false,
      ),
      CashbackPointsModel(
        icon: Icons.temple_hindu_outlined,
        text1: 'Devotion',
        text2: '',
        containerText: '',
        isContainerShown: false,
      ),
      CashbackPointsModel(
        icon: Icons.apple,
        text1: 'App Store',
        text2: '',
        containerText: '',
        isContainerShown: false,
      ),
      CashbackPointsModel(
        icon: Icons.gif_box_outlined,
        text1: 'Gift Cards',
        text2: '',
        containerText: '',
        isContainerShown: false,
      ),
    ];
    List<CashbackPointsModel> referAndEarnList = [
      CashbackPointsModel(
        icon: Icons.apartment,
        text1: 'Apartment',
        text2: '',
        containerText: 'Flat ₹100',
        isContainerShown: true,
      ),
      CashbackPointsModel(
        icon: Icons.cast_for_education,
        text1: 'Education',
        text2: 'Fees',
        containerText: '',
        isContainerShown: false,
      ),
    ];
    List<DrawerListModel> drawerListModelList = [
      DrawerListModel(
        icon: Icons.money,
        text1: 'Cashback and Offers',
        text2: 'Explore all Recharge & Bill Payment offers and get rewarded',
        isIconShown: false,
      ),
      DrawerListModel(
        icon: Icons.help_center_outlined,
        text1: '24x7 Help and Support',
        text2:
            '24x7 Customer Care for quick resolution to your Recharge & Bill Paymnet queries',
        isIconShown: false,
      ),
      DrawerListModel(
        icon: Icons.currency_exchange,
        text1: 'Manage Automatic Payments',
        text2: 'Setup new or Edit existing Automatic Payments',
        isDividerShown: false,
        isIconShown: false,
      ),
    ];
    return Scaffold(
      backgroundColor: const Color(0xffF5F8FD),
      appBar: AppBar(
        titleSpacing: 0,
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
        actions: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 15),
            child: Row(
              children: const [
                Text(
                  'Help',
                  style: TextStyle(
                    color: Colors.blue,
                    fontWeight: FontWeight.bold,
                    fontSize: 16,
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
      body: SingleChildScrollView(
        primary: true,
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 15),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text(
                'My Bills & Recharges',
                style: TextStyle(
                  color: Colors.black,
                  fontWeight: FontWeight.bold,
                  fontSize: 23,
                ),
              ),
              const SizedBox(
                height: 15,
              ),
              const Text(
                'Bills Paid',
                style: TextStyle(
                  color: Colors.black,
                  fontWeight: FontWeight.bold,
                  fontSize: 17,
                ),
              ),
              const SizedBox(
                height: 15,
              ),
              ListView.builder(
                shrinkWrap: true,
                primary: false,
                physics: const NeverScrollableScrollPhysics(),
                scrollDirection: Axis.vertical,
                itemCount: billsPaidContainerModelList.length,
                itemBuilder: (BuildContext context, int index) {
                  return BillsPaidContainerWidget(
                    billsPaidContainerModel: billsPaidContainerModelList[index],
                  );
                },
              ),
              const SizedBox(
                height: 10,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    padding:
                        const EdgeInsets.symmetric(horizontal: 13, vertical: 5),
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(25),
                      border: Border.all(color: Colors.grey.shade300, width: 1),
                    ),
                    child: Row(
                      children: const [
                        Text(
                          'View All',
                          style: TextStyle(
                            color: Colors.blue,
                            fontWeight: FontWeight.bold,
                            fontSize: 13,
                          ),
                        ),
                        SizedBox(
                          width: 2,
                        ),
                        Icon(
                          Icons.keyboard_arrow_down,
                          color: Colors.blue,
                        )
                      ],
                    ),
                  ),
                ],
              ),
              const SizedBox(
                height: 15,
              ),
              ClipRRect(
                borderRadius: BorderRadius.circular(10),
                child: Image.asset(
                  'assets/images/paytm_image.jpg',
                  fit: BoxFit.fitWidth,
                  height: 75,
                  width: double.infinity,
                ),
              ),
              const SizedBox(
                height: 15,
              ),
              Container(
                padding: const EdgeInsets.only(
                  top: 10,
                ),
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(15),
                  border: Border.all(color: Colors.grey.shade300),
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Padding(
                      padding: EdgeInsets.symmetric(horizontal: 10),
                      child: Text(
                        'Recharges',
                        style: TextStyle(
                          color: Colors.black,
                          fontWeight: FontWeight.bold,
                          fontSize: 19,
                        ),
                      ),
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 15),
                      child: GridView.builder(
                        shrinkWrap: true,
                        primary: false,
                        gridDelegate:
                            const SliverGridDelegateWithFixedCrossAxisCount(
                          crossAxisCount: 4,
                          childAspectRatio: 1 / 1.3,
                        ),
                        itemCount: rechargesList.length,
                        itemBuilder: (BuildContext context, int index) {
                          return CashbackPointsWidget(
                            cashbackPointsModel: rechargesList[index],
                          );
                        },
                      ),
                    ),
                    const BottomBlueContainerWIdget(
                        text: 'The Game is Back! Recharge your TV Now')
                  ],
                ),
              ),
              const SizedBox(
                height: 15,
              ),
              Container(
                padding: const EdgeInsets.only(
                  top: 10,
                ),
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(15),
                  border: Border.all(color: Colors.grey.shade300),
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Padding(
                      padding: EdgeInsets.symmetric(horizontal: 10),
                      child: Text(
                        'Pay your Home Bills',
                        style: TextStyle(
                          color: Colors.black,
                          fontWeight: FontWeight.bold,
                          fontSize: 19,
                        ),
                      ),
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 15),
                      child: GridView.builder(
                        shrinkWrap: true,
                        primary: false,
                        gridDelegate:
                            const SliverGridDelegateWithFixedCrossAxisCount(
                          crossAxisCount: 4,
                          childAspectRatio: 1 / 1.2,
                        ),
                        itemCount: payYourHomeBillsList.length,
                        itemBuilder: (BuildContext context, int index) {
                          return CashbackPointsWidget(
                            cashbackPointsModel: payYourHomeBillsList[index],
                          );
                        },
                      ),
                    ),
                    const BottomBlueContainerWIdget(
                        text: 'Exciting on Electricity Bill payment'),
                  ],
                ),
              ),
              const SizedBox(
                height: 15,
              ),
              Container(
                padding: const EdgeInsets.only(
                  top: 10,
                ),
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(15),
                  border: Border.all(color: Colors.grey.shade300),
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Padding(
                      padding: EdgeInsets.symmetric(horizontal: 10),
                      child: Text(
                        'Financial Services',
                        style: TextStyle(
                          color: Colors.black,
                          fontWeight: FontWeight.bold,
                          fontSize: 19,
                        ),
                      ),
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 15),
                      child: GridView.builder(
                        shrinkWrap: true,
                        primary: false,
                        gridDelegate:
                            const SliverGridDelegateWithFixedCrossAxisCount(
                          crossAxisCount: 4,
                          childAspectRatio: 1 / 1.3,
                        ),
                        itemCount: financialServicesList.length,
                        itemBuilder: (BuildContext context, int index) {
                          return CashbackPointsWidget(
                            cashbackPointsModel: financialServicesList[index],
                          );
                        },
                      ),
                    ),
                    const BottomBlueContainerWIdget(
                        text: 'Pay your Loan EMI and get ₹50'),
                  ],
                ),
              ),
              const SizedBox(
                height: 15,
              ),
              Container(
                padding: const EdgeInsets.only(
                  top: 10,
                ),
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(15),
                  border: Border.all(color: Colors.grey.shade300),
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Padding(
                      padding: EdgeInsets.symmetric(horizontal: 10),
                      child: Text(
                        'Transit',
                        style: TextStyle(
                          color: Colors.black,
                          fontWeight: FontWeight.bold,
                          fontSize: 19,
                        ),
                      ),
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 15),
                      child: GridView.builder(
                        shrinkWrap: true,
                        primary: false,
                        gridDelegate:
                            const SliverGridDelegateWithFixedCrossAxisCount(
                          crossAxisCount: 4,
                          childAspectRatio: 1 / 1.3,
                        ),
                        itemCount: TransitList.length,
                        itemBuilder: (BuildContext context, int index) {
                          return CashbackPointsWidget(
                            cashbackPointsModel: TransitList[index],
                          );
                        },
                      ),
                    ),
                    const BottomBlueContainerWIdget(
                        text: 'Recharge any FASTag on Paytm & travel smart'),
                  ],
                ),
              ),
              const SizedBox(
                height: 15,
              ),
              Container(
                padding: const EdgeInsets.only(
                  top: 10,
                ),
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(15),
                  border: Border.all(color: Colors.grey.shade300),
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Padding(
                      padding: EdgeInsets.symmetric(horizontal: 10),
                      child: Text(
                        'Other Services',
                        style: TextStyle(
                          color: Colors.black,
                          fontWeight: FontWeight.bold,
                          fontSize: 19,
                        ),
                      ),
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 15),
                      child: GridView.builder(
                        shrinkWrap: true,
                        primary: false,
                        gridDelegate:
                            const SliverGridDelegateWithFixedCrossAxisCount(
                          crossAxisCount: 4,
                          childAspectRatio: 1 / 1.2,
                        ),
                        itemCount: otherServicesList.length,
                        itemBuilder: (BuildContext context, int index) {
                          return CashbackPointsWidget(
                            cashbackPointsModel: otherServicesList[index],
                          );
                        },
                      ),
                    ),
                  ],
                ),
              ),
              const SizedBox(
                height: 15,
              ),
              Container(
                padding: const EdgeInsets.only(
                  top: 10,
                ),
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(15),
                  border: Border.all(color: Colors.grey.shade300),
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Padding(
                      padding: EdgeInsets.symmetric(horizontal: 10),
                      child: Text(
                        'Refer & Earn',
                        style: TextStyle(
                          color: Colors.black,
                          fontWeight: FontWeight.bold,
                          fontSize: 19,
                        ),
                      ),
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 15),
                      child: GridView.builder(
                        shrinkWrap: true,
                        primary: false,
                        gridDelegate:
                            const SliverGridDelegateWithFixedCrossAxisCount(
                          crossAxisCount: 4,
                          childAspectRatio: 1 / 1.2,
                        ),
                        itemCount: referAndEarnList.length,
                        itemBuilder: (BuildContext context, int index) {
                          return CashbackPointsWidget(
                            cashbackPointsModel: referAndEarnList[index],
                          );
                        },
                      ),
                    ),
                  ],
                ),
              ),
              const SizedBox(
                height: 15,
              ),
              ClipRRect(
                borderRadius: BorderRadius.circular(10),
                child: Image.asset(
                  'assets/images/paytm_image.jpg',
                  fit: BoxFit.fitWidth,
                  height: 125,
                  width: double.infinity,
                ),
              ),
              const SizedBox(
                height: 15,
              ),
              Container(
                padding:
                    const EdgeInsets.symmetric(horizontal: 10, vertical: 5),
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(15),
                  border: Border.all(color: Colors.grey.shade300),
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
            ],
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton.extended(
        onPressed: () {
          // Navigator.push(
          //   context,
          //   MaterialPageRoute(
          //     builder: (context) => const OverLayTestingScreen(),
          //   ),
          // );
        },
        label: Row(
          children: const [
            Icon(
              Icons.add,
              color: Colors.white,
              size: 25,
            ),
            SizedBox(
              width: 0,
            ),
            Text(
              'Add New',
              style: TextStyle(
                color: Colors.white,
                fontWeight: FontWeight.bold,
                fontSize: 15,
              ),
            ),
          ],
        ),
        backgroundColor: const Color(0xff022A72),
        elevation: 10,
        extendedPadding: const EdgeInsets.symmetric(horizontal: 10),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
    );
  }
}

class BillsPaidContainerWidget extends StatelessWidget {
  final BillsPaidContainerModel billsPaidContainerModel;
  const BillsPaidContainerWidget({
    super.key,
    required this.billsPaidContainerModel,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 5),
      child: Container(
        padding: const EdgeInsets.symmetric(horizontal: 5, vertical: 10),
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(15),
          border: Border.all(color: Colors.grey.shade300),
        ),
        child: Row(
          children: [
            ClipOval(
              child: Image.asset(
                billsPaidContainerModel.image,
                height: 35,
                width: 35,
                fit: BoxFit.cover,
              ),
            ),
            const SizedBox(
              width: 5,
            ),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Mobile Recharge - ${billsPaidContainerModel.mobileNumber}',
                    style: const TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 15,
                    ),
                  ),
                  Text(
                    'Recharged ₹${billsPaidContainerModel.lastRechargedAmount} on ${billsPaidContainerModel.lastRechargedDate}',
                    style: const TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 13,
                    ),
                  ),
                ],
              ),
            ),
            const Icon(
              Icons.arrow_forward_ios,
              color: Colors.blue,
              size: 15,
            )
          ],
        ),
      ),
    );
  }
}
