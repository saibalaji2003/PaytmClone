import 'package:flutter/material.dart';
import 'package:paytmclone/models/dashboard_appbar/paytm_gold/btm_nav_bar_model.dart';
import 'package:paytmclone/models/dashboard_appbar/search_screen/paytm_gold._model.dart';
import 'package:paytmclone/screens/dashboard_appbar/search_screen/paytm_gold/buy_gold_screen.dart';
import 'package:paytmclone/screens/dashboard_appbar/search_screen/paytm_gold/delivery_gold_screen.dart';
import 'package:paytmclone/screens/dashboard_appbar/search_screen/paytm_gold/gift_gold_screen.dart';
import 'package:paytmclone/screens/dashboard_appbar/search_screen/paytm_gold/sell_gold_screen.dart';

class PaytmGoldScreen extends StatefulWidget {
  const PaytmGoldScreen({super.key});

  @override
  State<PaytmGoldScreen> createState() => _PaytmGoldScreenState();
}

class _PaytmGoldScreenState extends State<PaytmGoldScreen> {
  int goldBuyOrSell = 0;
  changeTypeOfMode(int index) {
    goldBuyOrSell = index;
    debugPrint(goldBuyOrSell.toString());
    setState(() {});
  }

  List<GoldBuyorSellTextModel> goldBuyorSellTextModelList = [
    GoldBuyorSellTextModel(
      text: 'Buy',
    ),
    GoldBuyorSellTextModel(
      text: 'Sell',
    ),
    GoldBuyorSellTextModel(
      text: 'Gift',
    ),
    GoldBuyorSellTextModel(
      text: 'Delivery',
    ),
  ];
  List<BtmNavBarModel> btmNavBarModelList = [
    BtmNavBarModel(
      icon: Icons.home_outlined,
      text: 'Home',
    ),
    BtmNavBarModel(
      icon: Icons.luggage_outlined,
      text: 'Savings Plan',
    ),
    BtmNavBarModel(
      icon: Icons.lock_reset_outlined,
      text: 'Locker',
    ),
    BtmNavBarModel(
      icon: Icons.handshake_outlined,
      text: 'Transaction',
    ),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: Container(
        decoration: const BoxDecoration(
          boxShadow: [
            BoxShadow(
              blurRadius: 10,
              spreadRadius: 3,
              blurStyle: BlurStyle.outer,
              color: Colors.grey,
            ),
          ],
        ),
        child: Padding(
          padding: const EdgeInsets.only(top: 10, left: 5, right: 5),
          child: GridView.builder(
            shrinkWrap: true,
            gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 4,
              childAspectRatio: 1 / 0.7,
            ),
            itemCount: btmNavBarModelList.length,
            itemBuilder: (BuildContext context, int index) {
              return BtmNavBarWidget(
                btmNavBarModel: btmNavBarModelList[index],
              );
            },
          ),
        ),
      ),
      backgroundColor: Colors.white,
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
        centerTitle: true,
        title: Image.asset(
          'assets/images/paytm_gold.png',
          height: 100,
          width: 100,
        ),
        actions: [
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: const [
              Text(
                'Know More',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  color: Color(0xff092C6C),
                ),
              ),
            ],
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 25),
          child: Column(
            children: [
              Container(
                padding: const EdgeInsets.symmetric(vertical: 5),
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(7),
                  border: Border.all(
                    color: const Color(0xffC7A162),
                  ),
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: const [
                    Text(
                      'Check Your KYC Status',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        color: Color(0xffC7A162),
                      ),
                    ),
                  ],
                ),
              ),
              const SizedBox(
                height: 25,
              ),
              SizedBox(
                height: 25,
                width: double.infinity,
                child: ListView.builder(
                  physics: const NeverScrollableScrollPhysics(),
                  scrollDirection: Axis.horizontal,
                  itemCount: goldBuyorSellTextModelList.length,
                  itemBuilder: (BuildContext context, int index) {
                    return GestureDetector(
                      onTap: () {
                        changeTypeOfMode(index);
                      },
                      child: GoldBuyorSellText(
                        goldBuyOrSell: goldBuyOrSell,
                        index: index,
                        goldBuyorSellTextModel:
                            goldBuyorSellTextModelList[index],
                      ),
                    );
                  },
                ),
              ),
              const SizedBox(
                height: 15,
              ),
              goldBuyOrSell == 0
                  ? const BuyGoldScreen()
                  : goldBuyOrSell == 1
                      ? const SellGoldScreen()
                      : goldBuyOrSell == 2
                          ? const GiftGoldScreen()
                          : const DeliveryGoldScreen(),
            ],
          ),
        ),
      ),
    );
  }
}

class BtmNavBarWidget extends StatelessWidget {
  final BtmNavBarModel btmNavBarModel;
  const BtmNavBarWidget({
    super.key,
    required this.btmNavBarModel,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 0),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Icon(
            btmNavBarModel.icon,
            color: const Color(0xffC7A162),
          ),
          const SizedBox(
            height: 5,
          ),
          Text(
            btmNavBarModel.text,
            style: const TextStyle(
              color: Color(0xffC7A162),
              fontWeight: FontWeight.bold,
            ),
          ),
        ],
      ),
    );
  }
}

class GoldBuyorSellText extends StatelessWidget {
  final int goldBuyOrSell;
  final int index;
  final GoldBuyorSellTextModel goldBuyorSellTextModel;
  const GoldBuyorSellText({
    super.key,
    required this.goldBuyorSellTextModel,
    required this.index,
    required this.goldBuyOrSell,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 5, vertical: 0),
      decoration: BoxDecoration(
        border: Border(
          bottom: goldBuyOrSell == index
              ? const BorderSide(color: Color(0xffC7A162), width: 3)
              : BorderSide.none,
        ),
      ),
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 15),
        child: Text(
          goldBuyorSellTextModel.text,
          style: const TextStyle(
            fontWeight: FontWeight.bold,
            color: Color(0xff092C6C),
          ),
        ),
      ),
    );
  }
}
