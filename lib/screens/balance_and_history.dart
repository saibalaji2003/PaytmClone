import 'dart:math';

import 'package:flutter/material.dart';
import 'package:paytmclone/models/payment_history_model.dart';
import 'package:paytmclone/screens/balance_and_history/upi_settings.dart';
import 'package:paytmclone/widgets/Bank_and_History/paytm_history_widget.dart';
import 'package:paytmclone/widgets/bank_and_history/paytm_balance_widget.dart';

class BalanceAndHistoryScreen extends StatelessWidget {
  const BalanceAndHistoryScreen({super.key});

  @override
  Widget build(BuildContext context) {
    List<PaymentHistoryModel> paymentHistoryModelList = [
      PaymentHistoryModel(
        name: 'Akhil Dada',
        action: ActionsEnum.Added,
        dateAndTime: '26 Mar, 11:26 AM',
        money: 10,
      ),
      PaymentHistoryModel(
        name: 'Robert Downey',
        action: ActionsEnum.Sent,
        dateAndTime: '27 Mar, 11:30 AM',
        money: 3,
      ),
      PaymentHistoryModel(
        name: 'Chris Hemsworth',
        action: ActionsEnum.Added,
        dateAndTime: '28 Mar, 11:45 AM',
        money: 1,
      ),
      PaymentHistoryModel(
        name: 'Robert Downey',
        action: ActionsEnum.Sent,
        dateAndTime: '27 Mar, 11:30 AM',
        money: 3,
      ),
      PaymentHistoryModel(
        name: 'Akhil Dada',
        action: ActionsEnum.Failed,
        dateAndTime: '26 Mar, 11:26 AM',
        money: 5,
      ),
      PaymentHistoryModel(
        name: 'Akhil Dada',
        action: ActionsEnum.Failed,
        dateAndTime: '26 Mar, 11:26 AM',
        money: 7,
      ),
      PaymentHistoryModel(
        name: 'Chris Hemsworth',
        action: ActionsEnum.Added,
        dateAndTime: '28 Mar, 11:45 AM',
        money: 100,
      ),
    ];
    return Scaffold(
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
        title: const Text(
          'Balance & History',
          style: TextStyle(
            color: Colors.black,
            fontWeight: FontWeight.bold,
            fontSize: 18,
          ),
        ),
        actions: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10),
            child: GestureDetector(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const UPISettings(),
                  ),
                );
              },
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: const [
                  Text(
                    'UPI Settings',
                    style: TextStyle(
                      color: Colors.blue,
                      fontWeight: FontWeight.bold,
                      fontSize: 16,
                    ),
                  ),
                ],
              ),
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
              const PaytmBalanceWidget(
                image: 'assets/images/paytm_logo.png',
                text1: 'Paytm Balance',
                text1Icon: Icons.arrow_forward_ios,
                text2: 'Add money & get upto 10k points',
                balance: '₹2500',
                isText1iconShown: true,
                rightCornerText: '',
                isBalanceShown: true,
              ),
              const PaytmBalanceWidget(
                image: 'assets/images/paytm_logo2.png',
                text1: 'UPI Lite',
                text1Icon: Icons.arrow_forward_ios,
                text2: '',
                balance: '₹539',
                isText1iconShown: false,
                isText2Shown: false,
                rightCornerText: '',
                isBalanceShown: true,
              ),
              const PaytmBalanceWidget(
                image: 'assets/images/sbi_logo.png',
                text1: 'State Bank of India - 3684',
                text1Icon: Icons.arrow_forward_ios,
                text2: '',
                balance: '',
                isText1iconShown: false,
                isText2Shown: false,
                rightCornerText: 'Check Balance',
                isBalanceShown: false,
              ),
              const PaytmBalanceWidget(
                image: 'assets/images/sbi_logo.png',
                text1: 'Personal Loan',
                text1Icon: Icons.arrow_forward_ios,
                text2: 'Get upto ₹3lakhs in 2 minutes!',
                balance: '',
                isText1iconShown: false,
                isText2Shown: true,
                rightCornerText: 'Get Now',
                isBalanceShown: false,
              ),
              const PaytmBalanceWidget(
                image: 'assets/images/sbi_logo.png',
                text1: 'Paytm Postpaid',
                text1Icon: Icons.arrow_forward_ios,
                text2: 'Upto ₹60,000 at 0% interest',
                balance: '',
                isText1iconShown: false,
                isText2Shown: true,
                rightCornerText: 'Activate Now',
                isBalanceShown: false,
                isDividerShown: false,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    padding:
                        const EdgeInsets.symmetric(horizontal: 17, vertical: 9),
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(25),
                      border: Border.all(color: Colors.grey.shade500),
                    ),
                    child: Row(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        const Text(
                          'View All',
                          style: TextStyle(
                            color: Colors.black,
                            fontWeight: FontWeight.bold,
                            fontSize: 15,
                          ),
                        ),
                        const SizedBox(
                          width: 5,
                        ),
                        Transform.rotate(
                          angle: pi / 2,
                          child: const Icon(
                            Icons.arrow_forward_ios,
                            color: Colors.black,
                            size: 15,
                          ),
                        )
                      ],
                    ),
                  ),
                ],
              ),
              const SizedBox(
                height: 15,
              ),
              const Text(
                'Payment History',
                style: TextStyle(
                  color: Colors.black,
                  fontWeight: FontWeight.bold,
                  fontSize: 18,
                ),
              ),
              const SizedBox(
                height: 15,
              ),
              Row(
                children: [
                  Expanded(
                    child: TextField(
                      decoration: InputDecoration(
                        prefixIcon: const Icon(
                          Icons.search,
                          color: Colors.blue,
                        ),
                        fillColor: Colors.white,
                        hintText: 'Search or filter payments',
                        hintStyle: const TextStyle(
                          color: Colors.grey,
                          fontWeight: FontWeight.bold,
                        ),
                        border: OutlineInputBorder(
                          borderSide: const BorderSide(
                            color: Colors.black,
                            width: 1,
                          ),
                          borderRadius: BorderRadius.circular(15),
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(
                    width: 10,
                  ),
                  const Icon(
                    Icons.equalizer_rounded,
                    color: Colors.blue,
                    size: 28,
                  ),
                ],
              ),
              const SizedBox(
                height: 15,
              ),
              ListView.builder(
                shrinkWrap: true,
                primary: false,
                physics: const NeverScrollableScrollPhysics(),
                itemCount: paymentHistoryModelList.length,
                itemBuilder: (BuildContext context, int index) {
                  return PaymentHistoryWidget(
                    paymentHistoryModel: paymentHistoryModelList[index],
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
