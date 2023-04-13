import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';
import 'package:paytmclone/common_widgets/contacts_profilepic_widget.dart';
import 'package:paytmclone/models/referral_contacts.dart';
import 'package:paytmclone/widgets/loans_container.dart';
import 'package:paytmclone/widgets/payment_methods.dart';

class ReferAndWinScreen extends StatelessWidget {
  const ReferAndWinScreen({super.key});

  @override
  Widget build(BuildContext context) {
    List<ReferralContactsModel> referralContactsModelList = [
      ReferralContactsModel(
        name: 'Alex Adams',
        mobileNumber: 0947487875,
        referralAmount: 151,
      ),
      ReferralContactsModel(
        name: 'Elizabeth',
        mobileNumber: 3965234795,
        referralAmount: 51,
      ),
      ReferralContactsModel(
        name: 'Tonny Stark',
        mobileNumber: 8258658668,
        referralAmount: 21,
      ),
      ReferralContactsModel(
        name: 'Robert Downey',
        mobileNumber: 2466466624,
        referralAmount: 101,
      ),
      ReferralContactsModel(
        name: 'Scarllett Johansson',
        mobileNumber: 3152553452,
        referralAmount: 151,
      ),
      ReferralContactsModel(
        name: 'Chris',
        mobileNumber: 4245254554,
        referralAmount: 251,
      ),
      ReferralContactsModel(
        name: 'HemsWorth',
        mobileNumber: 3452525225,
        referralAmount: 101,
      ),
      ReferralContactsModel(
        name: 'Captain America',
        mobileNumber: 4546366665,
        referralAmount: 151,
      ),
      ReferralContactsModel(
        name: 'Hulk',
        mobileNumber: 1359783571,
        referralAmount: 299,
      ),
    ];
    return Scaffold(
      backgroundColor: const Color(0xffE1F5FE),
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.transparent,
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
        title: const Text(
          'Refer & Win',
          style: TextStyle(
            color: Colors.black,
            fontWeight: FontWeight.bold,
            fontSize: 20,
          ),
        ),
        actions: [
          Padding(
            padding: const EdgeInsets.only(right: 10),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: const [
                Text(
                  'Know More',
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 15,
                    decoration: TextDecoration.underline,
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
      body: SingleChildScrollView(
        physics: const BouncingScrollPhysics(),
        primary: true,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SizedBox(
              height: 10,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 15),
              child: SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                physics: const BouncingScrollPhysics(),
                child: SizedBox(
                  height: 190,
                  // width: double.infinity,
                  child: Row(
                    children: [
                      Container(
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(15),
                        ),
                        child: Column(
                          children: [
                            Row(
                              children: [
                                const SizedBox(
                                  height: 85,
                                  width: 85,
                                  child: PaymentMethodsWidget(
                                    icon: Icons.chat_bubble_outline_outlined,
                                    text2: 'Refer via',
                                    text3: 'Whatsapp',
                                    isGapShouldShow: false,
                                  ),
                                ),
                                Container(
                                  width: 1,
                                  height: 90,
                                  decoration:
                                      const BoxDecoration(color: Colors.grey),
                                ),
                                const SizedBox(
                                  height: 85,
                                  width: 85,
                                  child: PaymentMethodsWidget(
                                    icon: Icons.chat_outlined,
                                    text2: 'Refer via',
                                    text3: 'SMS',
                                    isGapShouldShow: false,
                                  ),
                                ),
                              ],
                            ),
                            Container(
                              width: 200,
                              height: 1,
                              decoration:
                                  const BoxDecoration(color: Colors.grey),
                            ),
                            Row(
                              children: [
                                const SizedBox(
                                  height: 85,
                                  width: 85,
                                  child: PaymentMethodsWidget(
                                    icon: Icons.qr_code_scanner_outlined,
                                    text2: 'Referral QR',
                                    text3: '',
                                    isGapShouldShow: false,
                                  ),
                                ),
                                Container(
                                  width: 1,
                                  height: 90,
                                  decoration:
                                      const BoxDecoration(color: Colors.grey),
                                ),
                                const SizedBox(
                                  height: 85,
                                  width: 85,
                                  child: PaymentMethodsWidget(
                                    icon: Icons.more_horiz_outlined,
                                    text2: 'More',
                                    text3: 'Options',
                                    isGapShouldShow: false,
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                      const SizedBox(
                        width: 10,
                      ),
                      Container(
                        height: 190,
                        width: 190,
                        decoration: BoxDecoration(
                          color: Colors.blue,
                          borderRadius: BorderRadius.circular(15),
                        ),
                        child: SizedBox(
                          // height: 120,
                          // width: 120,
                          child: Lottie.asset(
                            'assets/animations/swiggy.json',
                            // height: 50,
                            // width: 50,
                          ),
                        ),
                      ),
                      const SizedBox(
                        width: 10,
                      ),
                      Column(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: const [
                          LoansContainerWidget(
                            icon: Icons.currency_rupee,
                            text1: 'Win Flat ₹151 Cashback',
                            text2: 'every time you refer a friend',
                            text3: 'Refer Now',
                          ),
                          LoansContainerWidget(
                            icon: Icons.credit_card,
                            text1: 'Get Cashback post your referred',
                            text2: "friend's 1st UPI Payment",
                            text3: 'Refer & WIn',
                          ),
                        ],
                      )
                    ],
                  ),
                ),
              ),
            ),
            const SizedBox(
              height: 15,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 15),
              child: ClipRRect(
                borderRadius: BorderRadius.circular(10),
                child: Image.asset(
                  'assets/images/paytm_image.jpg',
                  fit: BoxFit.fitWidth,
                  height: 60,
                  width: double.infinity,
                ),
              ),
            ),
            const SizedBox(
              height: 15,
            ),
            Container(
              padding: const EdgeInsets.all(15),
              decoration: const BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(25),
                  topRight: Radius.circular(25),
                ),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    padding: const EdgeInsets.all(15),
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(15),
                      border: Border.all(color: Colors.grey.shade300),
                    ),
                    child: Column(
                      children: [
                        Row(
                          children: const [
                            Icon(
                              Icons.telegram_outlined,
                              color: Color(0xff092C6C),
                              size: 17,
                            ),
                            SizedBox(
                              width: 5,
                            ),
                            Text(
                              'Share your referral code',
                              style: TextStyle(
                                color: Colors.black,
                                fontWeight: FontWeight.bold,
                                fontSize: 13,
                              ),
                            ),
                            SizedBox(
                              width: 3,
                            ),
                            Expanded(
                              child: Text(
                                '9573053883',
                                style: TextStyle(
                                  color: Colors.black,
                                  fontWeight: FontWeight.bold,
                                  fontSize: 15,
                                ),
                              ),
                            ),
                            Icon(
                              Icons.pin_drop,
                              color: Colors.black,
                              size: 17,
                            )
                          ],
                        ),
                        Padding(
                          padding: const EdgeInsets.symmetric(vertical: 15),
                          child: Container(
                            height: 1,
                            width: double.infinity,
                            color: Colors.grey.shade300,
                          ),
                        ),
                        Row(
                          children: const [
                            Icon(
                              Icons.telegram_outlined,
                              color: Color(0xff092C6C),
                              size: 17,
                            ),
                            SizedBox(
                              width: 5,
                            ),
                            Expanded(
                              child: Text(
                                'View all your Referral & Rewards',
                                style: TextStyle(
                                  color: Colors.black,
                                  fontWeight: FontWeight.bold,
                                  fontSize: 13,
                                ),
                              ),
                            ),
                            Icon(
                              Icons.arrow_forward,
                              color: Colors.blue,
                              size: 17,
                            )
                          ],
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(
                    height: 16,
                  ),
                  const Text(
                    'Your Contacts not on Paytm',
                    style: TextStyle(
                      color: Colors.black,
                      fontWeight: FontWeight.bold,
                      fontSize: 15,
                    ),
                  ),
                  Row(
                    children: [
                      Expanded(
                        child: TextField(
                          decoration: InputDecoration(
                            prefixIcon: const Icon(
                              Icons.search,
                              color: Colors.grey,
                            ),
                            filled: true,
                            fillColor: const Color(0xffF5F8FD),
                            hintText: 'Search brand or voucher name',
                            hintStyle: const TextStyle(
                              color: Colors.grey,
                              fontWeight: FontWeight.bold,
                            ),
                            // border: OutlineInputBorder(
                            //   borderSide: BorderSide(
                            //     color: Colors.grey.shade300,
                            //     width: 0.5,
                            //   ),
                            //   borderRadius: BorderRadius.circular(15),
                            // ),
                            enabledBorder: OutlineInputBorder(
                              borderSide: BorderSide(
                                color: Colors.grey.shade500,
                                width: 0.5,
                              ),
                              borderRadius: BorderRadius.circular(15),
                            ),
                            focusedBorder: OutlineInputBorder(
                              borderSide: BorderSide(
                                color: Colors.grey.shade500,
                                width: 0.5,
                              ),
                              borderRadius: BorderRadius.circular(15),
                            ),
                          ),
                        ),
                      ),
                      const SizedBox(
                        width: 10,
                      ),
                      Container(
                        padding: const EdgeInsets.all(5),
                        decoration: const BoxDecoration(
                          color: Colors.white,
                          shape: BoxShape.circle,
                          boxShadow: [
                            BoxShadow(
                              blurRadius: 5,
                              spreadRadius: 2,
                              color: Colors.grey,
                            ),
                          ],
                        ),
                        child: const Icon(
                          Icons.lightbulb_outline,
                          color: Color(0xff092C6C),
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: 15,
                  ),
                  ListView.builder(
                    physics: const NeverScrollableScrollPhysics(),
                    shrinkWrap: true,
                    primary: false,
                    scrollDirection: Axis.vertical,
                    itemCount: referralContactsModelList.length,
                    itemBuilder: (BuildContext context, int index) {
                      return ReferralContactsWidget(
                        referralContactsModel: referralContactsModelList[index],
                      );
                    },
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class ReferralContactsWidget extends StatelessWidget {
  final ReferralContactsModel referralContactsModel;
  const ReferralContactsWidget({
    super.key,
    required this.referralContactsModel,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 15),
      child: Row(
        children: [
          ProfilePicWith2Letters(
            name: referralContactsModel.name,
          ),
          const SizedBox(
            width: 20,
          ),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  referralContactsModel.name,
                  style: const TextStyle(
                    color: Colors.black,
                    fontWeight: FontWeight.bold,
                    fontSize: 15,
                  ),
                ),
                const SizedBox(
                  height: 5,
                ),
                Row(
                  children: [
                    Text(
                      '${referralContactsModel.mobileNumber}',
                      style: const TextStyle(
                        color: Colors.grey,
                        fontWeight: FontWeight.bold,
                        fontSize: 14,
                      ),
                    ),
                    const Padding(
                      padding: EdgeInsets.symmetric(horizontal: 5),
                      child: Icon(
                        Icons.circle,
                        color: Colors.grey,
                        size: 5,
                      ),
                    ),
                    Text(
                      'Flat ₹${referralContactsModel.referralAmount}',
                      style: TextStyle(
                        color: Colors.greenAccent.shade200,
                        fontWeight: FontWeight.bold,
                        fontSize: 14,
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
          Image.asset(
            'assets/images/whatsapp_logo.png',
            height: 20,
            width: 20,
          )
        ],
      ),
    );
  }
}
