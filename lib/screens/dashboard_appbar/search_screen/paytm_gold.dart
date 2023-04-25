import 'package:flutter/material.dart';
import 'package:paytmclone/models/dashboard_appbar/search_screen/paytm_gold._model.dart';

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
  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
            ],
          ),
        ),
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
      margin: const EdgeInsets.symmetric(horizontal: 7, vertical: 0),
      decoration: BoxDecoration(
        border: Border(
          bottom: goldBuyOrSell == index
              ? const BorderSide(color: Color(0xffC7A162), width: 3)
              : BorderSide.none,
        ),
      ),
      child: Text(
        goldBuyorSellTextModel.text,
        style: const TextStyle(
          fontWeight: FontWeight.bold,
          color: Color(0xff092C6C),
        ),
      ),
    );
  }
}
