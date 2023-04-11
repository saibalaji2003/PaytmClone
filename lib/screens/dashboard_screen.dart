import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';
import 'package:paytmclone/common_widgets/app_drawer.dart';
import 'package:paytmclone/models/featured_model.dart';
import 'package:paytmclone/screens/all_services.dart';
import 'package:paytmclone/screens/balance_and_history.dart';
import 'package:paytmclone/screens/cashback_and_offers.dart';
import 'package:paytmclone/screens/education_fees.dart';
import 'package:paytmclone/screens/free_credit_scrore.dart';
import 'package:paytmclone/screens/mobile_recharge.dart';
import 'package:paytmclone/screens/paytm_wallet.dart';
import 'package:paytmclone/screens/rent_via_credit_card.dart';
import 'package:paytmclone/screens/to_bank_account.dart';
import 'package:paytmclone/screens/to_mobile_or_contact.dart';
import 'package:paytmclone/screens/to_UPI_apps.dart';
import 'package:paytmclone/screens/view_more_screen.dart';
import 'package:paytmclone/widgets/benefits_container.dart';
import 'package:paytmclone/widgets/bottom_blue_container.dart';
import 'package:paytmclone/widgets/featured_widget.dart';
import 'package:paytmclone/widgets/loans_container.dart';
import 'package:paytmclone/widgets/payment_methods.dart';
import 'package:paytmclone/widgets/upi_lite_container.dart';
import 'package:paytmclone/widgets/upi_money_transfer.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class DashboardScreen extends StatelessWidget {
  const DashboardScreen({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    List<PaymentMethodsWidget> paymentMethodsList = [
      const PaymentMethodsWidget(
        icon: Icons.smartphone,
        text2: 'Mobile',
        text3: 'Recharge',
        navigatorScreen: MobileRechargeScreen(),
      ),
      const PaymentMethodsWidget(
        icon: Icons.credit_card,
        text2: 'Rent via',
        text3: 'Credit Card',
        text1: 'Lowest Fee',
        isText1Shown: true,
        navigatorScreen: RentViaCreditCardScreen(),
      ),
      const PaymentMethodsWidget(
        icon: Icons.data_thresholding,
        text2: 'DTH',
        text3: 'Recharge',
      ),
      const PaymentMethodsWidget(
        icon: Icons.lightbulb,
        text2: 'Electricity',
        text3: 'Bill',
      ),
      const PaymentMethodsWidget(
        icon: Icons.credit_card,
        text2: 'Credit Card',
        text3: 'Payment',
      ),
      const PaymentMethodsWidget(
        icon: Icons.apartment_outlined,
        text2: 'Apartment',
        text3: '',
      ),
      const PaymentMethodsWidget(
        icon: Icons.cast_for_education,
        text2: 'Education',
        text3: 'Fees',
        navigatorScreen: EducationFees(),
      ),
      const PaymentMethodsWidget(
        icon: Icons.mobile_friendly,
        text2: 'Mobile',
        text3: 'Recharge',
      ),
    ];
    List<FeaturedModel> featuredModelList = [
      FeaturedModel(
        image:
            'https://cdn.pixabay.com/photo/2016/12/09/04/02/presents-1893642__340.jpg',
        text1: 'Refer &',
        text2: 'Earn',
        adText: '',
        saleText: '',
        isAdShown: false,
        isAdTextShown: false,
        saleContainerShown: false,
        saleTextShown: false,
      ),
      FeaturedModel(
        image:
            'https://cdn.pixabay.com/photo/2015/05/26/09/37/paypal-784404_960_720.png',
        text1: 'UPI lite',
        text2: '',
        adText: '',
        saleText: '',
        isAdShown: false,
        isAdTextShown: false,
        saleContainerShown: false,
        saleTextShown: false,
      ),
      FeaturedModel(
        image:
            'https://cdn.pixabay.com/photo/2017/03/24/07/28/twitter-2170426__340.png',
        text1: 'Mamaearth',
        text2: '',
        adText: '',
        saleText: '',
        isAdShown: false,
        isAdTextShown: false,
        saleContainerShown: false,
        saleTextShown: false,
      ),
      FeaturedModel(
        image:
            'https://cdn.pixabay.com/photo/2016/04/13/14/27/google-chrome-1326908__340.png',
        text1: 'Astrotalk',
        text2: 'Earn',
        adText: '',
        saleText: '',
        isAdShown: false,
        isAdTextShown: false,
        saleContainerShown: false,
        saleTextShown: false,
      ),
      FeaturedModel(
        image:
            'https://cdn.pixabay.com/photo/2017/01/31/13/14/animal-2023924__340.png',
        text1: 'Products at',
        text2: '₹1',
        adText: '',
        saleText: '',
        isAdShown: false,
        isAdTextShown: false,
        saleContainerShown: false,
        saleTextShown: false,
      ),
      FeaturedModel(
        image:
            'https://cdn.pixabay.com/photo/2016/11/19/03/08/youtube-1837872__340.png',
        text1: 'Redeem',
        text2: 'Now',
        adText: '',
        saleText: '',
        isAdShown: false,
        isAdTextShown: false,
        saleContainerShown: false,
        saleTextShown: false,
      ),
      FeaturedModel(
        image:
            'https://cdn.pixabay.com/photo/2016/12/26/18/33/logo-1932539__340.png',
        text1: 'Paytm',
        text2: 'Autopay',
        adText: '',
        saleText: '',
        isAdShown: false,
        isAdTextShown: false,
        saleContainerShown: false,
        saleTextShown: false,
      ),
      FeaturedModel(
        image:
            'https://cdn.pixabay.com/photo/2016/04/01/00/22/cat-1298141__340.png',
        text1: 'Paytm',
        text2: 'Health',
        adText: '',
        saleText: '',
        isAdShown: false,
        isAdTextShown: false,
        saleContainerShown: false,
        saleTextShown: false,
      ),
    ];

    List<FeaturedModel> promotionModelList = [
      FeaturedModel(
        image:
            'https://cdn.pixabay.com/photo/2017/08/20/18/54/woman-2662775__340.jpg',
        text1: 'Airtel',
        text2: 'Broadband',
        adText: 'AD',
        saleText: 'Sale',
        isAdShown: true,
        saleContainerShown: true,
        isAdTextShown: true,
        saleTextShown: true,
      ),
      FeaturedModel(
        image:
            'https://cdn.pixabay.com/photo/2017/06/04/12/30/suwancoffee-2370934__340.jpg',
        text1: 'Flat 33%',
        text2: 'OFF',
        adText: '',
        saleText: '',
        isAdShown: false,
        isAdTextShown: false,
        saleContainerShown: false,
        saleTextShown: false,
      ),
      FeaturedModel(
        image:
            'https://cdn.pixabay.com/photo/2017/10/25/19/46/piggy-bank-2889046_960_720.jpg',
        text1: 'Flat 25%',
        text2: 'OFF',
        adText: 'AD',
        saleText: 'Sale',
        isAdShown: true,
        saleContainerShown: true,
        isAdTextShown: true,
        saleTextShown: true,
      ),
      FeaturedModel(
        image:
            'https://cdn.pixabay.com/photo/2017/10/25/19/45/piggy-bank-2889042__340.jpg',
        text1: 'Airtel',
        text2: 'Postpaid',
        adText: 'AD',
        saleText: 'Sale',
        isAdShown: true,
        saleContainerShown: true,
        isAdTextShown: true,
        saleTextShown: true,
      ),
      FeaturedModel(
        image:
            'https://cdn.pixabay.com/photo/2016/12/09/04/02/presents-1893642__340.jpg',
        text1: 'Flat 30%',
        text2: 'OFF',
        adText: '',
        saleText: '',
        isAdShown: false,
        isAdTextShown: false,
        saleContainerShown: false,
        saleTextShown: false,
      ),
      FeaturedModel(
        image:
            'https://cdn.pixabay.com/photo/2016/12/09/04/02/presents-1893642__340.jpg',
        text1: 'Airtel',
        text2: 'Broadband',
        adText: 'AD',
        saleText: 'Sale',
        isAdShown: true,
        saleContainerShown: true,
        isAdTextShown: true,
        saleTextShown: true,
      ),
      FeaturedModel(
        image:
            'https://cdn.pixabay.com/photo/2016/12/09/04/02/presents-1893642__340.jpg',
        text1: 'Airtel',
        text2: 'Broadband',
        adText: 'adText',
        saleText: '',
        isAdShown: false,
        isAdTextShown: false,
        saleContainerShown: false,
        saleTextShown: false,
      ),
      FeaturedModel(
        image:
            'https://cdn.pixabay.com/photo/2016/12/09/04/02/presents-1893642__340.jpg',
        text1: 'Airtel',
        text2: 'Broadband',
        adText: 'adText',
        saleText: '',
        isAdShown: false,
        isAdTextShown: false,
        saleContainerShown: false,
        saleTextShown: false,
      ),
    ];
    final GlobalKey<ScaffoldState> scaffoldKey = GlobalKey<ScaffoldState>();
    PageController pageController = PageController();
    final double phoneHeight = MediaQuery.of(context).size.height;
    final double phoneWidth = MediaQuery.of(context).size.width;

    return Scaffold(
      key: scaffoldKey,
      backgroundColor: const Color(0xffF5F8FD),
      drawer: Drawer(
        backgroundColor: Colors.white,
        width: phoneWidth - 30,
        child: const AppDrawerWidget(),
      ),
      appBar: AppBar(
        backgroundColor: const Color(0xffA5E4FF),
        elevation: 0,
        leading: Padding(
          padding: const EdgeInsets.only(left: 20, top: 10, bottom: 10),
          child: Stack(
            clipBehavior: Clip.none,
            children: [
              ClipOval(
                child: GestureDetector(
                  onTap: () {
                    scaffoldKey.currentState!.openDrawer();
                  },
                  child: Image.asset(
                    'assets/images/images.png',
                    height: 50,
                    width: 50,
                    fit: BoxFit.cover,
                  ),
                ),
              ),
              Positioned(
                right: -4,
                bottom: -4,
                child: Container(
                  padding: const EdgeInsets.all(2),
                  decoration: const BoxDecoration(
                    shape: BoxShape.circle,
                    color: Colors.white,
                  ),
                  child: const Icon(
                    Icons.menu,
                    color: Colors.grey,
                    size: 12,
                  ),
                ),
              ),
            ],
          ),
        ),
        title: Image.asset(
          'assets/images/paytm_logo.png',
          height: 80,
          width: 80,
        ),
        centerTitle: true,
        actions: const [
          Icon(
            Icons.search,
            color: Color(0xff022868),
            size: 27,
          ),
          SizedBox(
            width: 25,
          ),
          Icon(
            Icons.message_outlined,
            color: Color(0xff022868),
            size: 27,
          ),
          SizedBox(
            width: 20,
          ),
        ],
      ),
      body: SingleChildScrollView(
        physics: const BouncingScrollPhysics(),
        child: Column(
          children: [
            const SizedBox(
              height: 15,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 15),
              child: ClipRRect(
                borderRadius: BorderRadius.circular(13),
                child: Image.network(
                  'https://cdn.pixabay.com/photo/2015/05/29/19/18/bicycle-789648__340.jpg',
                  height: 125,
                  width: double.infinity,
                  fit: BoxFit.fitWidth,
                ),
              ),
            ),
            const SizedBox(
              height: 15,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 15),
              child: Container(
                padding: const EdgeInsets.only(
                  top: 15,
                ),
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(15),
                  border: Border.all(color: Colors.grey.shade300),
                ),
                child: Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 15),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          const Text(
                            'UPI Money Transfer',
                            style: TextStyle(
                              color: Colors.black,
                              fontWeight: FontWeight.bold,
                              fontSize: 19,
                            ),
                          ),
                          Container(
                            padding: const EdgeInsets.all(7),
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(15),
                              color: const Color(0xffF5F9FC),
                            ),
                            child: Text(
                              '9573053883@paytm',
                              style: TextStyle(
                                  color: Colors.grey.shade500,
                                  fontSize: 12,
                                  fontWeight: FontWeight.bold),
                            ),
                          ),
                        ],
                      ),
                    ),
                    const SizedBox(
                      height: 12,
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 15),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: const [
                          UpiMoneyTransferWidget(
                            icon: Icons.qr_code_2_outlined,
                            text1: 'Scan &',
                            text2: 'Pay',
                            // navigatorScreen: MobileOrContactScreen(),
                          ),
                          UpiMoneyTransferWidget(
                            icon: Icons.contact_page_outlined,
                            text1: 'To Mobile or',
                            text2: 'Contact',
                            navigatorScreen: MobileOrContactScreen(),
                          ),
                          UpiMoneyTransferWidget(
                            icon: Icons.payment,
                            text1: 'To UPI ',
                            text2: 'Apps',
                            navigatorScreen: ToUPIAppsScreen(),
                          ),
                          UpiMoneyTransferWidget(
                            icon: Icons.home_mini_outlined,
                            text1: 'To Bank or Self',
                            text2: 'A/C',
                            navigatorScreen: ToBankAccountScreen(),
                          ),
                        ],
                      ),
                    ),
                    const SizedBox(
                      height: 17,
                    ),
                    const BottomBlueContainerWIdget(
                      text: 'Scan Paytm QR, Pay & Get ₹15 Cashback',
                    ),
                  ],
                ),
              ),
            ),
            const SizedBox(
              height: 15,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 15),
              child: Container(
                padding: const EdgeInsets.all(15),
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(15),
                  border: Border.all(color: Colors.grey.shade300),
                ),
                child: Column(
                  children: [
                    SizedBox(
                      height: 90,
                      width: double.infinity,
                      child: PageView(
                        physics: const BouncingScrollPhysics(),
                        controller: pageController,
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                            children: const [
                              PaymentMethodsWidget(
                                icon: Icons.book_online_outlined,
                                text2: 'Balance &',
                                text3: 'History',
                                text1: 'Passbook',
                                isText1Shown: true,
                                navigatorScreen: BalanceAndHistoryScreen(),
                              ),
                              PaymentMethodsWidget(
                                icon: Icons.credit_card,
                                text2: 'Credit',
                                text3: 'Cards',
                              ),
                              PaymentMethodsWidget(
                                icon: Icons.wallet,
                                text2: 'Paytm',
                                text3: 'Wallet',
                                navigatorScreen: PaytmWalletScreen(),
                              ),
                              PaymentMethodsWidget(
                                icon: Icons.timer_sharp,
                                text2: 'Personal',
                                text3: 'Loan',
                                text1: 'Superfast',
                                isText1Shown: true,
                              ),
                            ],
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                            children: const [
                              PaymentMethodsWidget(
                                icon: Icons.payment_outlined,
                                text2: 'Paytm',
                                text3: 'Postpaid',
                              ),
                              PaymentMethodsWidget(
                                icon: Icons.cast_sharp,
                                text2: 'Cashback &',
                                text3: 'Offers',
                                navigatorScreen: CashbackAndOffersScreen(),
                              ),
                              PaymentMethodsWidget(
                                icon: Icons.video_call,
                                text2: 'Movie',
                                text3: 'Tickets',
                              ),
                              PaymentMethodsWidget(
                                icon: Icons.bluetooth_audio_outlined,
                                text2: 'All Services',
                                text3: '',
                                navigatorScreen: AllServicesScreen(),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    SmoothPageIndicator(
                        controller: pageController, // PageController
                        count: 2,
                        effect: const SlideEffect(
                            spacing: 8.0,
                            radius: 10.0,
                            dotWidth: 7.0,
                            dotHeight: 7.0,
                            paintStyle: PaintingStyle.stroke,
                            strokeWidth: 1.5,
                            dotColor: Colors.grey,
                            activeDotColor: Colors.blue),
                        onDotClicked: (index) {})
                  ],
                ),
              ),
            ),
            const SizedBox(
              height: 15,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 15),
              child: Row(
                children: [
                  Expanded(
                    child: Container(
                      padding: const EdgeInsets.symmetric(
                          vertical: 8, horizontal: 13),
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(15),
                        border: Border.all(color: Colors.grey.shade300),
                      ),
                      child: const UPILiteWidget(
                        icon: Icons.payments,
                        text1: 'UPI Lite',
                        text2: 'Refer & Earn ₹25',
                      ),
                    ),
                  ),
                  const SizedBox(
                    width: 7,
                  ),
                  Expanded(
                    child: Container(
                      padding: const EdgeInsets.symmetric(
                          vertical: 8, horizontal: 13),
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(15),
                        border: Border.all(color: Colors.grey.shade300),
                      ),
                      child: const UPILiteWidget(
                        icon: Icons.currency_rupee,
                        text1: 'Cash Crunch?',
                        text2: 'Get a Loan',
                      ),
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(
              height: 15,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 15),
              child: Container(
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(15),
                  border: Border.all(color: Colors.grey.shade300),
                ),
                child: Column(
                  children: [
                    Padding(
                      padding:
                          const EdgeInsets.only(top: 10, left: 15, right: 15),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          const Text(
                            'Recharge & Bill Payments',
                            style: TextStyle(
                              color: Colors.black,
                              fontWeight: FontWeight.bold,
                              fontSize: 19,
                            ),
                          ),
                          Container(
                            padding: const EdgeInsets.all(7),
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(15),
                              color: const Color(0xffF5F9FC),
                            ),
                            child: Text(
                              'My Bills',
                              style: TextStyle(
                                  color: Colors.grey.shade500,
                                  fontSize: 12,
                                  fontWeight: FontWeight.bold),
                            ),
                          ),
                        ],
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
                        physics: const NeverScrollableScrollPhysics(),
                        gridDelegate:
                            const SliverGridDelegateWithFixedCrossAxisCount(
                          crossAxisCount: 4,
                          childAspectRatio: 1 / 1.1,
                        ),
                        itemCount: paymentMethodsList.length,
                        itemBuilder: (BuildContext context, int index) {
                          return index == 7
                              ? GestureDetector(
                                  onTap: () {
                                    Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                        builder: (context) =>
                                            const ViewMoreScreen(),
                                      ),
                                    );
                                  },
                                  child: Padding(
                                    padding: const EdgeInsets.only(top: 20),
                                    child: Column(
                                      children: [
                                        Container(
                                          padding: const EdgeInsets.all(5),
                                          // height: 50,
                                          // width: 50,
                                          decoration: BoxDecoration(
                                            color: Colors.blue.withOpacity(0.3),
                                            shape: BoxShape.circle,
                                          ),
                                          child: const Icon(
                                            Icons.arrow_forward,
                                            color: Colors.indigo,
                                          ),
                                        ),
                                        const SizedBox(
                                          height: 5,
                                        ),
                                        const Text(
                                          'View More',
                                          style: TextStyle(
                                            color: Colors.black,
                                            fontWeight: FontWeight.bold,
                                            fontSize: 13,
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                )
                              : PaymentMethodsWidget(
                                  icon: paymentMethodsList[index].icon,
                                  text1: paymentMethodsList[index].text1,
                                  text2: paymentMethodsList[index].text2,
                                  text3: paymentMethodsList[index].text3,
                                  isText1Shown:
                                      paymentMethodsList[index].isText1Shown,
                                  navigatorScreen:
                                      paymentMethodsList[index].navigatorScreen,
                                );
                        },
                      ),
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    const BottomBlueContainerWIdget(
                      text: 'Win 100% Cashback on Mobile Recharges',
                      navigator: MobileRechargeScreen(),
                    ),
                  ],
                ),
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            Container(
              padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 10),
              decoration: const BoxDecoration(
                color: Color(0xffE1F5FE),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    children: const [
                      Text(
                        'Loans & Credit Cards',
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
                                        text2: 'Paytm',
                                        text3: 'Postpaid',
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
                                        icon: Icons.credit_score_outlined,
                                        text2: 'Free Credit',
                                        text3: 'Score',
                                        isGapShouldShow: false,
                                        navigatorScreen: FreeCreditScore(),
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
                                        icon: Icons.credit_card_sharp,
                                        text2: 'Credit',
                                        text3: 'Cards',
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
                                text1: 'Paise ki tension?',
                                text2: 'Paayein ₹3 lakh tak ka instant Loan!',
                                text3: 'Get it Now',
                              ),
                              LoansContainerWidget(
                                icon: Icons.credit_card,
                                text1: 'Paayein 3% tak Cashback Paytm',
                                text2: 'HDFC Bank Credit card ke saath',
                                text3: 'Apply Now',
                              ),
                            ],
                          )
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Container(
              padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 10),
              decoration: const BoxDecoration(
                color: Colors.white,
              ),
              child: Column(
                children: [
                  Row(
                    children: const [
                      Text(
                        'Featured',
                        style: TextStyle(
                          color: Colors.black,
                          fontWeight: FontWeight.bold,
                          fontSize: 19,
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  SizedBox(
                    height: 100,
                    width: double.infinity,
                    child: ListView.builder(
                      physics: const BouncingScrollPhysics(),
                      scrollDirection: Axis.horizontal,
                      itemCount: featuredModelList.length,
                      itemBuilder: (BuildContext context, int index) {
                        return FeaturedWidget(
                          featuredModel: featuredModelList[index],
                        );
                      },
                    ),
                  ),
                ],
              ),
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
                        'Paytm Money - Your Investment partner',
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
                                        icon: Icons.currency_rupee_outlined,
                                        text2: 'Invest Now',
                                        text3: '',
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
                                        icon: Icons.auto_graph,
                                        text2: 'Stocks for',
                                        text3: 'You',
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
                                        icon: Icons.attach_money_rounded,
                                        text2: 'Paytm',
                                        text3: 'Money',
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
                                        icon: Icons.gradient_sharp,
                                        text2: 'Futres &',
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
                                icon: Icons.money,
                                text1: 'Trusted by 1.4+ Crore',
                                text2: 'Traders & Investors',
                                text3: 'Try Paytm Money',
                              ),
                              LoansContainerWidget(
                                icon: Icons.bakery_dining_outlined,
                                text1: 'Save upto ₹62,400',
                                text2: 'with Tax Saving Funds & NPS',
                                text3: 'Save Now',
                              ),
                            ],
                          )
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Container(
              padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 12),
              decoration: const BoxDecoration(
                color: Color(0xffF5F8FD),
              ),
              child: const BenefitsContainerWidget(
                text1: 'Paayein',
                icon: Icons.credit_card_outlined,
                text2: 'Paytm HDFC Bank Credit Card ke Saath',
                rightCornerText: 'Apply',
                containerText: '₹75,000 ke Benefits',
                isContainerShown: true,
                isContainerTextShown: true,
                text2ColorShown: true,
              ),
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
                        'Ticket Booking',
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
                                        icon: Icons.flight_outlined,
                                        text2: 'Flight',
                                        text3: 'Tickets',
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
                                        icon: Icons.bus_alert,
                                        text2: 'Bus Tickets',
                                        text3: '',
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
                                        icon: Icons.train_outlined,
                                        text2: 'Train',
                                        text3: 'Tickets',
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
                                        icon: Icons.movie_creation_outlined,
                                        text2: 'Movie',
                                        text3: 'Tickets',
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
                                        icon: Icons.event,
                                        text2: 'Event',
                                        text3: 'Tickets',
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
                                        icon: Icons.tram_outlined,
                                        text2: 'Hyderabad',
                                        text3: 'Metro',
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
                                icon: Icons.currency_exchange_outlined,
                                text1: 'Get 100% ticket refund',
                                text2: 'with cancel Protect',
                                text3: 'Statring at ₹149',
                              ),
                              LoansContainerWidget(
                                icon: Icons.bus_alert_outlined,
                                text1: '20% Cashback on',
                                text2: 'bus Ticketa',
                                text3: 'Book Now',
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  Container(
                    padding: const EdgeInsets.symmetric(
                        horizontal: 15, vertical: 12),
                    decoration: const BoxDecoration(
                      color: Color(0xffF5F8FD),
                    ),
                    child: const BenefitsContainerWidget(
                      icon: Icons.rotate_left_sharp,
                      text1: 'Refer a Friend',
                      text2: 'Get ₹151 Cashback',
                      rightCornerText: 'Refer Now to Paytm',
                      containerText: '',
                      text2ColorShown: false,
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 15),
              child: Container(
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(15),
                  border: Border.all(color: Colors.grey.shade300),
                ),
                child: Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(top: 15, left: 15),
                      child: Row(
                        children: const [
                          Text(
                            'Deals & Cashback',
                            style: TextStyle(
                              color: Colors.black,
                              fontWeight: FontWeight.bold,
                              fontSize: 19,
                            ),
                          ),
                        ],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 15),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: const [
                          PaymentMethodsWidget(
                            icon: Icons.money,
                            text2: 'Cashback &',
                            text3: 'Offers',
                          ),
                          PaymentMethodsWidget(
                            icon: Icons.production_quantity_limits,
                            text2: 'Products at ₹1',
                            text3: '',
                          ),
                          PaymentMethodsWidget(
                            icon: Icons.card_giftcard_outlined,
                            text2: 'Gift Cards',
                            text3: '',
                            isGapShouldShow: true,
                            isText1Shown: true,
                            text1: '200+ Brands',
                          ),
                          PaymentMethodsWidget(
                            icon: Icons.move_to_inbox_outlined,
                            text2: 'Mu Vouchers',
                            text3: '',
                          ),
                        ],
                      ),
                    ),
                    const SizedBox(
                      height: 5,
                    ),
                    const BottomBlueContainerWIdget(
                      text: 'Get 75% off on Clovia with Cashback Points',
                      containerColor: false,
                    ),
                  ],
                ),
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 15),
              child: Column(
                children: [
                  Row(
                    children: const [
                      Text(
                        'Promotion',
                        style: TextStyle(
                          color: Colors.black,
                          fontWeight: FontWeight.bold,
                          fontSize: 19,
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  SizedBox(
                    height: 120,
                    child: ListView.builder(
                      physics: const BouncingScrollPhysics(),
                      scrollDirection: Axis.horizontal,
                      itemCount: promotionModelList.length,
                      itemBuilder: (BuildContext context, int index) {
                        return FeaturedWidget(
                          featuredModel: promotionModelList[index],
                        );
                      },
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 15),
              child: Container(
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(15),
                  border: Border.all(color: Colors.grey.shade300),
                ),
                child: Padding(
                  padding: const EdgeInsets.symmetric(vertical: 15),
                  child: Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(left: 15),
                        child: Row(
                          children: const [
                            Text(
                              'First Games by Paytm',
                              style: TextStyle(
                                color: Colors.black,
                                fontWeight: FontWeight.bold,
                                fontSize: 19,
                              ),
                            ),
                          ],
                        ),
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: const [
                          PaymentMethodsWidget(
                            icon: Icons.sd_card_sharp,
                            text2: 'Rummy',
                            text3: '',
                          ),
                          PaymentMethodsWidget(
                            icon: Icons.info_outline,
                            text2: 'Poker',
                            text3: '',
                          ),
                          PaymentMethodsWidget(
                            icon: Icons.currency_rupee,
                            text2: 'Loodo',
                            text3: '',
                          ),
                          PaymentMethodsWidget(
                            icon: Icons.settings_applications,
                            text2: 'Welcome',
                            text3: 'Bonus ₹20K',
                          ),
                        ],
                      )
                    ],
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 15),
              child: ClipRRect(
                  borderRadius: BorderRadius.circular(15),
                  child: Image.asset('assets/images/paytm_image.jpg')),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 15),
              child: Row(
                children: const [
                  Text(
                    'Do More with Paytm',
                    style: TextStyle(
                      color: Colors.black,
                      fontWeight: FontWeight.bold,
                      fontSize: 19,
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: const [
                UpiMoneyTransferWidget(
                  icon: Icons.health_and_safety,
                  text1: 'Paytm',
                  text2: 'Health',
                ),
                UpiMoneyTransferWidget(
                  icon: Icons.monitor_heart,
                  text1: 'Explore with',
                  text2: 'Paytm',
                ),
                UpiMoneyTransferWidget(
                  icon: Icons.heart_broken_outlined,
                  text1: 'Govt.',
                  text2: 'Services',
                ),
                UpiMoneyTransferWidget(
                  icon: Icons.wifi_protected_setup,
                  text1: 'Tata 1mg',
                  text2: '',
                ),
                UpiMoneyTransferWidget(
                  icon: Icons.question_mark,
                  text1: 'Help &',
                  text2: 'Support',
                ),
              ],
            ),
            const SizedBox(
              height: 15,
            ),
            Container(
              padding: const EdgeInsets.all(20),
              decoration: const BoxDecoration(
                color: Color(0xffE1F5FE),
              ),
              child: Row(
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Text(
                        'Invite your',
                        style: TextStyle(
                          color: Colors.black,
                          fontWeight: FontWeight.bold,
                          fontSize: 19,
                        ),
                      ),
                      const SizedBox(
                        height: 2,
                      ),
                      const Text(
                        'friends to Paytm',
                        style: TextStyle(
                          color: Colors.black,
                          fontWeight: FontWeight.bold,
                          fontSize: 19,
                        ),
                      ),
                      const SizedBox(
                        height: 2,
                      ),
                      const Text(
                        'Get ₹151 Cashback',
                        style: TextStyle(
                          color: Colors.black,
                          // fontWeight: FontWeight.bold,
                          fontSize: 19,
                        ),
                      ),
                      const SizedBox(
                        height: 25,
                      ),
                      Container(
                        padding: const EdgeInsets.symmetric(
                            horizontal: 14, vertical: 5),
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(25),
                          border: Border.all(color: Colors.blue),
                        ),
                        child: const Text(
                          'Refer Now',
                          style: TextStyle(
                            color: Colors.blue,
                            fontWeight: FontWeight.bold,
                            fontSize: 17,
                          ),
                        ),
                      ),
                      const SizedBox(
                        height: 30,
                      ),
                      const Text(
                        'T&C Apply',
                        style: TextStyle(
                          color: Colors.black,
                          fontWeight: FontWeight.bold,
                          fontSize: 10,
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
      floatingActionButton: FloatingActionButton.extended(
        extendedPadding: const EdgeInsets.all(15),
        label: const Text(
          'Scan Any QR',
          style: TextStyle(fontWeight: FontWeight.bold, color: Colors.white),
        ),
        onPressed: () {
          // Navigator.push(
          //   context,
          //   MaterialPageRoute(
          //     builder: (context) => const OverLayTestingScreen(),
          //   ),
          // );
        },
        backgroundColor: const Color(0xff022A72),
        icon: const Icon(
          Icons.qr_code_scanner,
          color: Colors.white,
          size: 25,
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
    );
  }
}
