import 'package:flutter/material.dart';
import 'package:paytmclone/models/cashback_won_model.dart';

class CashbackWonScreen extends StatelessWidget {
  const CashbackWonScreen({super.key});

  @override
  Widget build(BuildContext context) {
    List<CashbackWonModel> cashbackAprilList = [
      CashbackWonModel(
        leftCornerIcon: Icons.currency_rupee_outlined,
        message: 'For Sneding Money from back A/c',
        cashbackReceivedDate: '04 Apr, 2023',
        date: '04 April',
        cashbackReceived: 5,
        rightCornerIcon: Icons.account_balance,
      ),
      CashbackWonModel(
        leftCornerIcon: Icons.currency_rupee_outlined,
        message: 'For Sneding Money from back A/c',
        cashbackReceivedDate: '07 Apr, 2023',
        date: '07 April',
        cashbackReceived: 7,
        rightCornerIcon: Icons.account_balance,
      ),
      CashbackWonModel(
        leftCornerIcon: Icons.currency_rupee_outlined,
        message: 'For Sneding Money from back A/c',
        cashbackReceivedDate: '10 Apr, 2023',
        date: '10 April',
        cashbackReceived: 10,
        rightCornerIcon: Icons.account_balance,
      ),
    ];
    List<CashbackWonModel> cashbackMarchList = [
      CashbackWonModel(
        leftCornerIcon: Icons.money,
        message: 'For Promocode SUPER40 applied on order no. 207327827782',
        cashbackReceivedDate: '',
        date: '25 March',
        cashbackReceived: 40,
        rightCornerIcon: Icons.account_balance_wallet_outlined,
      ),
      CashbackWonModel(
        leftCornerIcon: Icons.currency_rupee_outlined,
        message: 'For first top up pf UPI Lite account on',
        cashbackReceivedDate: '27 Mar, 2023',
        date: '27 March',
        cashbackReceived: 5,
        rightCornerIcon: Icons.account_balance,
      ),
    ];
    List<CashbackWonModel> cashbackOctoberList = [
      CashbackWonModel(
        leftCornerIcon: Icons.money,
        message: 'For Promocode FLAT10WALLET applied on order no. 207327827782',
        cashbackReceivedDate: '',
        date: '01 October',
        cashbackReceived: 10,
        rightCornerIcon: Icons.account_balance_wallet_outlined,
      ),
      CashbackWonModel(
        leftCornerIcon: Icons.currency_rupee_outlined,
        message: 'For first top up pf UPI Lite account on',
        cashbackReceivedDate: '10 Oct, 2022',
        date: '10 OCtober',
        cashbackReceived: 50,
        rightCornerIcon: Icons.account_balance,
      ),
    ];
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.blue,
        leading: GestureDetector(
          onTap: () {
            Navigator.pop(context);
          },
          child: const Icon(
            Icons.arrow_back,
            color: Colors.white,
          ),
        ),
      ),
      body: SingleChildScrollView(
        primary: true,
        // physics: const BouncingScrollPhysics(),
        child: Column(
          children: [
            Container(
              padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
              height: 100,
              decoration: const BoxDecoration(
                color: Colors.blue,
              ),
              child: Row(
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: const [
                      Text(
                        '₹340.04',
                        style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                          fontSize: 30,
                        ),
                      ),
                      Text(
                        'Cashback Won',
                        style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                          fontSize: 20,
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
            Container(
              padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 15),
              decoration: BoxDecoration(
                color: Colors.grey.shade200,
              ),
              child: Row(
                children: const [
                  Text(
                    'April 2023',
                    style: TextStyle(
                      color: Colors.black,
                      fontWeight: FontWeight.bold,
                      fontSize: 15,
                    ),
                  ),
                ],
              ),
            ),
            ListView.builder(
              physics: const NeverScrollableScrollPhysics(),
              shrinkWrap: true,
              primary: false,
              scrollDirection: Axis.vertical,
              itemCount: cashbackAprilList.length,
              itemBuilder: (BuildContext context, int index) {
                return CashbackWonWidget(
                  cashbackWonModel: cashbackAprilList[index],
                );
              },
            ),
            Container(
              padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 15),
              decoration: BoxDecoration(
                color: Colors.grey.shade200,
              ),
              child: Row(
                children: const [
                  Text(
                    'March 2023',
                    style: TextStyle(
                      color: Colors.black,
                      fontWeight: FontWeight.bold,
                      fontSize: 15,
                    ),
                  ),
                ],
              ),
            ),
            ListView.builder(
              physics: const NeverScrollableScrollPhysics(),
              shrinkWrap: true,
              primary: false,
              scrollDirection: Axis.vertical,
              itemCount: cashbackMarchList.length,
              itemBuilder: (BuildContext context, int index) {
                return CashbackWonWidget(
                  cashbackWonModel: cashbackMarchList[index],
                );
              },
            ),
            Container(
              padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 15),
              decoration: BoxDecoration(
                color: Colors.grey.shade200,
              ),
              child: Row(
                children: const [
                  Text(
                    'October 2022',
                    style: TextStyle(
                      color: Colors.black,
                      fontWeight: FontWeight.bold,
                      fontSize: 15,
                    ),
                  ),
                ],
              ),
            ),
            ListView.builder(
              physics: const NeverScrollableScrollPhysics(),
              shrinkWrap: true,
              primary: false,
              scrollDirection: Axis.vertical,
              itemCount: cashbackOctoberList.length,
              itemBuilder: (BuildContext context, int index) {
                return CashbackWonWidget(
                  cashbackWonModel: cashbackOctoberList[index],
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}

class CashbackWonWidget extends StatelessWidget {
  final CashbackWonModel cashbackWonModel;

  const CashbackWonWidget({
    super.key,
    required this.cashbackWonModel,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 25),
      child: Row(
        children: [
          Icon(
            cashbackWonModel.leftCornerIcon,
            color: const Color(0xff092C6C),
            size: 20,
          ),
          const SizedBox(
            width: 10,
          ),
          Flexible(
            child: Column(
              children: [
                Text(
                  '${cashbackWonModel.message} ${cashbackWonModel.cashbackReceivedDate}',
                  style: const TextStyle(
                    color: Colors.black,
                    fontWeight: FontWeight.bold,
                    fontSize: 15,
                  ),
                ),
              ],
            ),
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              Text(
                '₹${cashbackWonModel.cashbackReceived}',
                style: TextStyle(
                  color: Colors.greenAccent.shade200,
                  fontWeight: FontWeight.bold,
                  fontSize: 18,
                ),
              ),
              const SizedBox(
                height: 3,
              ),
              Text(
                cashbackWonModel.date,
                style: const TextStyle(
                  color: Colors.grey,
                  fontWeight: FontWeight.bold,
                  fontSize: 12,
                ),
              ),
            ],
          ),
          const SizedBox(
            width: 10,
          ),
          Container(
            padding: const EdgeInsets.all(10),
            decoration: const BoxDecoration(
              color: Color(0xffE1F5FE),
              shape: BoxShape.circle,
            ),
            child: Icon(
              cashbackWonModel.rightCornerIcon,
              color: const Color(0xff092C6C),
              size: 20,
            ),
          ),
        ],
      ),
    );
  }
}
