import 'package:flutter/material.dart';
import 'package:paytmclone/models/gift_cards_model.dart';
import 'package:paytmclone/models/my_vouchers_model.dart';

class MyVouchersScreen extends StatelessWidget {
  const MyVouchersScreen({super.key});

  @override
  Widget build(BuildContext context) {
    List<MyVouchersModel> myVouchersModelList = [
      MyVouchersModel(
        icon: Icons.graphic_eq,
        text: 'Scratch cards Won',
        containerColor: const Color(0xffE1F5FE),
      ),
      MyVouchersModel(
        icon: Icons.card_giftcard_outlined,
        text: 'Gift Cards Purchased',
        containerColor: const Color(0xffFFEAEF),
      ),
      MyVouchersModel(
        icon: Icons.currency_rupee,
        text: 'Cashback Points Deals',
        containerColor: const Color(0xffFEF8E0),
      ),
      MyVouchersModel(
        icon: Icons.home_work_outlined,
        text: 'Merchant Loyalty Vouchers',
        containerColor: const Color(0xffE1F5FE),
      ),
      MyVouchersModel(
        icon: Icons.shopping_bag_outlined,
        text: 'Brand Loyalty Points',
        containerColor: const Color(0XffE2F6EB),
      ),
    ];
    List<GiftCardsModel> giftCardsModelList = [
      GiftCardsModel(
        icon: Icons.movie_creation_outlined,
        text: 'Paytm Money',
        bottomText: 'Rs. 50 Cashback on Movie Tickets',
        stackText: 'Expiring Soon',
      ),
      GiftCardsModel(
        icon: Icons.currency_rupee,
        text: 'Airtel Postpaid',
        bottomText: 'Enjoy unlimited data and stream 5G Network',
        stackText: 'Expiring Soon',
        isStackShown: false,
      ),
      GiftCardsModel(
        icon: Icons.airplane_ticket_outlined,
        text: 'Flight Tickets',
        bottomText: 'Get ₹50 Cashback',
        stackText: 'Expiring Soon',
        isStackShown: false,
      ),
      GiftCardsModel(
        icon: Icons.currency_exchange_outlined,
        text: 'Bnew',
        bottomText: '82% off on SmartWatch and Neckband',
        stackText: 'Expiring Soon',
      ),
      GiftCardsModel(
        icon: Icons.payment,
        text: 'Paytm Movies',
        bottomText: 'Rs. 50 Cashback on Movie Tickets',
        stackText: 'Expiring Soon',
      ),
      GiftCardsModel(
        icon: Icons.broadcast_on_home,
        text: 'DTH Recharge',
        bottomText: 'GEt ₹3 Cashback',
        stackText: 'Expiring Soon',
        isStackShown: false,
      ),
      GiftCardsModel(
        icon: Icons.money,
        text: 'Airtel Prepaid',
        bottomText: 'Free SIM Delivery & Free 1GB data',
        stackText: 'Expiring Soon',
      ),
    ];
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: const Color(0xff092C6C),
        leading: GestureDetector(
          onTap: () {
            Navigator.pop(context);
          },
          child: const Icon(
            Icons.arrow_back,
            color: Colors.white,
          ),
        ),
        titleSpacing: 0,
        title: const Text(
          'My Vouchers',
          style: TextStyle(
            color: Colors.white,
            fontWeight: FontWeight.bold,
            fontSize: 20,
          ),
        ),
      ),
      body: SingleChildScrollView(
        physics: const BouncingScrollPhysics(),
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 10),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              TextField(
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
              const SizedBox(
                height: 15,
              ),
              SizedBox(
                height: 100,
                width: double.infinity,
                child: ListView.builder(
                  physics: const BouncingScrollPhysics(),
                  shrinkWrap: false,
                  primary: true,
                  scrollDirection: Axis.horizontal,
                  itemCount: myVouchersModelList.length,
                  itemBuilder: (BuildContext context, int index) {
                    return MyVouchersWidget(
                      myVouchersModel: myVouchersModelList[index],
                    );
                  },
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: const [
                  Text(
                    'My Vouchers & Gift Cards',
                    style: TextStyle(
                      color: Colors.black,
                      fontWeight: FontWeight.bold,
                      fontSize: 18,
                    ),
                  ),
                  Icon(
                    Icons.equalizer_outlined,
                    color: Colors.black,
                  )
                ],
              ),
              const SizedBox(
                height: 5,
              ),
              const Text(
                'Showing all active vouchers',
                style: TextStyle(
                  color: Colors.grey,
                  fontWeight: FontWeight.bold,
                  fontSize: 13,
                ),
              ),
              const SizedBox(
                height: 15,
              ),
              GridView.builder(
                shrinkWrap: true,
                primary: false,
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
                  // childAspectRatio: 1 / 1.15,
                  crossAxisSpacing: 5,
                  mainAxisSpacing: 20,
                ),
                itemCount: giftCardsModelList.length,
                itemBuilder: (BuildContext context, int index) {
                  return GiftCardsContainer(
                    giftCardsModel: giftCardsModelList[index],
                  );
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class GiftCardsContainer extends StatelessWidget {
  final GiftCardsModel giftCardsModel;
  const GiftCardsContainer({
    super.key,
    required this.giftCardsModel,
  });

  @override
  Widget build(BuildContext context) {
    return Stack(
      clipBehavior: Clip.none,
      children: [
        Container(
          width: 175,
          padding: const EdgeInsets.only(top: 15),
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(15),
            border: Border.all(color: Colors.grey.shade300),
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Container(
                padding: const EdgeInsets.all(15),
                decoration: BoxDecoration(
                  color: Colors.white,
                  shape: BoxShape.circle,
                  border: Border.all(color: Colors.grey.shade300),
                ),
                child: Icon(
                  giftCardsModel.icon,
                  size: 35,
                  color: const Color(0xff092C6C),
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              Text(
                giftCardsModel.text,
                style: const TextStyle(
                  color: Colors.black,
                  fontWeight: FontWeight.bold,
                  fontSize: 15,
                ),
              ),
              const Spacer(),
              // const SizedBox(
              //   height: 25,
              // ),
              Container(
                height: 50,
                padding:
                    const EdgeInsets.symmetric(horizontal: 15, vertical: 5),
                decoration: const BoxDecoration(
                  color: Color(0xffE1F5FE),
                  borderRadius: BorderRadius.only(
                    bottomLeft: Radius.circular(15),
                    bottomRight: Radius.circular(15),
                  ),
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Flexible(
                      child: Text(
                        giftCardsModel.bottomText,
                        textAlign: TextAlign.center,
                        style: const TextStyle(
                          color: Colors.black,
                          fontWeight: FontWeight.bold,
                          fontSize: 14,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
        giftCardsModel.isStackShown
            ? Positioned(
                top: -8,
                left: 43,
                child: Stack(
                  clipBehavior: Clip.none,
                  children: [
                    Container(
                      padding: const EdgeInsets.symmetric(
                          horizontal: 13, vertical: 3),
                      decoration: BoxDecoration(
                        color: Colors.red,
                        borderRadius: BorderRadius.circular(15),
                      ),
                      child: Text(
                        giftCardsModel.stackText,
                        style: const TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                          fontSize: 10,
                        ),
                      ),
                    ),
                    Positioned(
                      left: -10,
                      bottom: 1.5,
                      child: Container(
                        padding: const EdgeInsets.all(0.5),
                        decoration: const BoxDecoration(
                          color: Colors.white,
                          shape: BoxShape.circle,
                        ),
                        child: const Icon(
                          Icons.timer,
                          color: Colors.red,
                          size: 13,
                        ),
                      ),
                    ),
                  ],
                ),
              )
            : const SizedBox(),
      ],
    );
  }
}

class MyVouchersWidget extends StatelessWidget {
  final MyVouchersModel myVouchersModel;

  const MyVouchersWidget({
    super.key,
    required this.myVouchersModel,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 100,
      height: 100,
      child: Column(
        children: [
          Container(
            padding: const EdgeInsets.all(10),
            decoration: BoxDecoration(
              color: myVouchersModel.containerColor,
              shape: BoxShape.circle,
            ),
            child: Icon(
              myVouchersModel.icon,
              color: const Color(0xff092C6C),
              size: 25,
            ),
          ),
          const SizedBox(
            height: 10,
          ),
          Text(
            myVouchersModel.text,
            textAlign: TextAlign.center,
            style: const TextStyle(
              color: Colors.black,
              fontWeight: FontWeight.bold,
              fontSize: 13,
            ),
          ),
        ],
      ),
    );
  }
}
