import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';
import 'package:paytmclone/models/products_at_rupees_1.dart';
import 'package:paytmclone/screens/to_mobile_or_contact.dart';
import 'package:paytmclone/widgets/loans_container.dart';
import 'package:paytmclone/widgets/payment_methods.dart';

class CashbackAndOffersScreen extends StatelessWidget {
  const CashbackAndOffersScreen({super.key});

  @override
  Widget build(BuildContext context) {
    List<ProductsModel> productsModelList = [
      ProductsModel(
        image: 'assets/images/lipstick.jpeg',
        discountPercent: 99,
        actualPrice: 999,
        offerPrice: 1,
        containerIcon: Icons.currency_rupee,
      ),
      ProductsModel(
        image: 'assets/images/lipstick.jpeg',
        discountPercent: 99,
        actualPrice: 999,
        offerPrice: 1,
        containerIcon: Icons.currency_rupee,
      ),
      ProductsModel(
        image: 'assets/images/lipstick.jpeg',
        discountPercent: 99,
        actualPrice: 999,
        offerPrice: 1,
        containerIcon: Icons.currency_rupee,
      ),
      ProductsModel(
        image: 'assets/images/lipstick.jpeg',
        discountPercent: 99,
        actualPrice: 999,
        offerPrice: 1,
        containerIcon: Icons.currency_rupee,
      ),
      ProductsModel(
        image: 'assets/images/lipstick.jpeg',
        discountPercent: 99,
        actualPrice: 999,
        offerPrice: 1,
        containerIcon: Icons.currency_rupee,
      ),
      ProductsModel(
        image: 'assets/images/lipstick.jpeg',
        discountPercent: 99,
        actualPrice: 999,
        offerPrice: 1,
        containerIcon: Icons.currency_rupee,
      ),
    ];
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
            Icons.arrow_back,
            color: Colors.black,
          ),
        ),
        centerTitle: true,
        title: Image.asset(
          'assets/images/cashback_image.png',
          height: 150,
          width: 150,
        ),
      ),
      body: SingleChildScrollView(
        primary: true,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 10),
              child: ClipRRect(
                borderRadius: BorderRadius.circular(15),
                child: Image.asset(
                  'assets/images/screenshot.jpg',
                ),
              ),
            ),
            const SizedBox(
              height: 15,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 15),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: const [
                  CashbackContainerWidget(
                    number: '₹351',
                    text: 'Cashback Won',
                    containerText: '',
                    isContainerShown: false,
                    isContainerTextShown: false,
                  ),
                  CashbackContainerWidget(
                    number: '12',
                    text: 'Cashback Points',
                    containerText: 'Redeem Now',
                  ),
                  CashbackContainerWidget(
                    number: '6',
                    text: 'My Vouchers',
                    containerText: '',
                    isContainerShown: false,
                    isContainerTextShown: false,
                  ),
                ],
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 15),
              child: Text(
                'Offers for you',
                style: TextStyle(
                  color: Colors.black,
                  fontWeight: FontWeight.bold,
                  fontSize: 18,
                ),
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 15),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: const [
                  OffersContainerWidget(
                    icon: Icons.mobile_friendly,
                    text1: 'Online Offers',
                    text2: 'on Top Brands',
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  OffersContainerWidget(
                    icon: Icons.luggage,
                    text1: 'Products at ₹1',
                    text2: 'Trail Packs',
                  ),
                ],
              ),
            ),
            const SizedBox(
              height: 15,
            ),
            Container(
              padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 10),
              decoration: const BoxDecoration(
                color: Color(0xffE1F5FE),
              ),
              child: Column(
                children: [
                  Row(
                    children: const [
                      Text(
                        'Exclusive Offers for you',
                        style: TextStyle(
                          color: Colors.black,
                          fontWeight: FontWeight.bold,
                          fontSize: 17,
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  SingleChildScrollView(
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
                                        icon: Icons.currency_rupee,
                                        text2: 'UPI & MT',
                                        text3: 'Offers',
                                        isGapShouldShow: false,
                                      ),
                                    ),
                                    Container(
                                      width: 1,
                                      height: 90,
                                      decoration: const BoxDecoration(
                                          color: Colors.grey),
                                    ),
                                    const SizedBox(
                                      height: 85,
                                      width: 85,
                                      child: PaymentMethodsWidget(
                                        icon: Icons.wallet,
                                        text2: 'Wallet',
                                        text3: 'Offers',
                                        isGapShouldShow: false,
                                      ),
                                    ),
                                    Container(
                                      width: 1,
                                      height: 90,
                                      decoration: const BoxDecoration(
                                          color: Colors.grey),
                                    ),
                                    const SizedBox(
                                      height: 85,
                                      width: 85,
                                      child: PaymentMethodsWidget(
                                        icon: Icons.person,
                                        text2: 'Personal',
                                        text3: 'Loan',
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
                                        icon: Icons.computer_outlined,
                                        text2: 'Online Pay',
                                        text3: 'Offers',
                                        isGapShouldShow: false,
                                      ),
                                    ),
                                    Container(
                                      width: 1,
                                      height: 90,
                                      decoration: const BoxDecoration(
                                          color: Colors.grey),
                                    ),
                                    const SizedBox(
                                      height: 85,
                                      width: 85,
                                      child: PaymentMethodsWidget(
                                        icon: Icons.currency_rupee,
                                        text2: 'Bills Pay',
                                        text3: 'Offers',
                                        isGapShouldShow: false,
                                      ),
                                    ),
                                    Container(
                                      width: 1,
                                      height: 90,
                                      decoration: const BoxDecoration(
                                          color: Colors.grey),
                                    ),
                                    const SizedBox(
                                      height: 85,
                                      width: 85,
                                      child: PaymentMethodsWidget(
                                        icon: Icons.qr_code,
                                        text2: 'Scan & Pay',
                                        text3: 'Offers',
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
                                icon: Icons.bus_alert_outlined,
                                text1: '20% Cashback on',
                                text2: 'Bus Tickets*',
                                text3: 'Book Now',
                              ),
                              LoansContainerWidget(
                                icon: Icons.credit_score_outlined,
                                text1: 'Your Free Credit Score is',
                                text2: '2 clicks away!',
                                text3: 'View Now',
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(
              height: 15,
            ),
            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 15),
              child: CashbackOfferContainer(
                image: 'assets/images/paytm_logo.png',
                text1: 'IInvite friends to enjoy lightning-fast UPI payments',
                text2: 'Get flat ₹25 Cashback',
                offerText: '',
                isIconShown: false,
                isofferTextShown: false,
              ),
            ),
            const SizedBox(
              height: 15,
            ),
            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 15),
              child: Text(
                'Products at Rs. 1',
                style: TextStyle(
                  color: Colors.black,
                  fontWeight: FontWeight.bold,
                  fontSize: 17,
                ),
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 5),
              child: SizedBox(
                // height: 325,
                child: GridView.builder(
                  shrinkWrap: true,
                  primary: false,
                  physics: const NeverScrollableScrollPhysics(),
                  gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 3,
                  ),
                  itemCount: productsModelList.length,
                  itemBuilder: (BuildContext context, int index) {
                    return ImageListWidget(
                        productsModel: productsModelList[index]);
                  },
                ),
              ),
            ),
            const SizedBox(
              height: 15,
            ),
            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 15),
              child: Text(
                'Your Active Offers',
                style: TextStyle(
                  color: Colors.black,
                  fontWeight: FontWeight.bold,
                  fontSize: 17,
                ),
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 15),
              child: Container(
                padding:
                    const EdgeInsets.symmetric(horizontal: 15, vertical: 10),
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(15),
                  border: Border.all(color: Colors.grey.shade300),
                ),
                child: Row(
                  children: [
                    Container(
                      padding: const EdgeInsets.all(17),
                      decoration: BoxDecoration(
                        color: Colors.white,
                        shape: BoxShape.circle,
                        border: Border.all(color: Colors.grey.shade300),
                      ),
                      child: const Icon(
                        Icons.currency_rupee,
                        color: Colors.blue,
                        size: 25,
                      ),
                    ),
                    const SizedBox(
                      width: 15,
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: const [
                        Text(
                          'Pay using Paytm Wallet to unlock',
                          style: TextStyle(
                            color: Colors.black,
                            // fontWeight: FontWeight.bold,
                            fontSize: 13,
                          ),
                        ),
                        Text(
                          '30% Points on Travel Tickets',
                          style: TextStyle(
                            color: Colors.black,
                            fontWeight: FontWeight.bold,
                            fontSize: 15,
                          ),
                        ),
                        SizedBox(
                          height: 50,
                        ),
                        Text(
                          '0/20 payments done',
                          style: TextStyle(
                            color: Colors.green,
                            fontWeight: FontWeight.bold,
                            fontSize: 13,
                          ),
                        ),
                        // LinearProgressIndicator(
                        //   value: 0.6,
                        //   backgroundColor: Colors.grey,
                        //   color: Colors.green,
                        //   minHeight: 5,
                        // ),
                      ],
                    )
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}

class ImageListWidget extends StatelessWidget {
  final ProductsModel productsModel;
  const ImageListWidget({
    super.key,
    required this.productsModel,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 3, vertical: 3),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(8),
        child: Stack(
          children: [
            Image.asset(
              productsModel.image,
              height: 150,
              width: 125,
              fit: BoxFit.cover,
            ),
            Positioned(
              bottom: 3,
              right: 5,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    padding: const EdgeInsets.all(8),
                    decoration: const BoxDecoration(
                      color: Colors.white,
                      shape: BoxShape.circle,
                    ),
                    child: Icon(
                      productsModel.containerIcon,
                      color: Colors.black,
                      size: 25,
                    ),
                  ),
                  const SizedBox(
                    width: 25,
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                      Text(
                        '${productsModel.discountPercent}%off',
                        style: const TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                          fontSize: 13,
                        ),
                      ),
                      Text(
                        'Just ₹${productsModel.actualPrice}',
                        style: const TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                          fontSize: 10,
                        ),
                      ),
                      Text(
                        '₹${productsModel.offerPrice}',
                        style: const TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                          fontSize: 17,
                        ),
                      ),
                    ],
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

class OffersContainerWidget extends StatelessWidget {
  final IconData icon;
  final String text1;
  final String text2;

  const OffersContainerWidget({
    required this.icon,
    required this.text1,
    required this.text2,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Container(
        padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 10),
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(10),
          border: Border.all(color: Colors.grey.shade300),
        ),
        child: Row(
          children: [
            Icon(
              icon,
              size: 25,
              color: Colors.blue,
            ),
            const SizedBox(
              width: 7,
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  text1,
                  style: const TextStyle(
                    color: Colors.black,
                    fontWeight: FontWeight.bold,
                    fontSize: 13,
                  ),
                ),
                const SizedBox(
                  height: 3,
                ),
                Text(
                  text2,
                  style: const TextStyle(
                    color: Colors.grey,
                    fontWeight: FontWeight.bold,
                    fontSize: 13,
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

class CashbackContainerWidget extends StatelessWidget {
  final String number;
  final String text;
  final String containerText;
  final bool isContainerShown;
  final bool isContainerTextShown;

  const CashbackContainerWidget({
    required this.number,
    required this.text,
    required this.containerText,
    this.isContainerShown = true,
    super.key,
    this.isContainerTextShown = true,
  });

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          padding: const EdgeInsets.symmetric(
            horizontal: 14,
            vertical: 10,
          ),
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(15),
            border: Border.all(color: Colors.grey.shade300),
          ),
          child: Column(
            children: [
              Text(
                number,
                style: const TextStyle(
                  color: Colors.blue,
                  fontWeight: FontWeight.bold,
                  fontSize: 20,
                ),
              ),
              const SizedBox(
                height: 5,
              ),
              Text(
                text,
                style: const TextStyle(
                  color: Colors.black,
                  fontWeight: FontWeight.bold,
                  fontSize: 13,
                ),
              ),
            ],
          ),
        ),
        Positioned(
          top: -5,
          right: 28,
          child: Container(
            padding: const EdgeInsets.all(3),
            decoration: BoxDecoration(
              color: isContainerShown
                  ? const Color(0xffFFD766)
                  : Colors.transparent,
              borderRadius: BorderRadius.circular(5),
            ),
            child: Text(
              containerText,
              style: TextStyle(
                color: isContainerTextShown ? Colors.black : Colors.transparent,
                fontWeight: FontWeight.bold,
                fontSize: 11,
              ),
            ),
          ),
        )
      ],
    );
  }
}
