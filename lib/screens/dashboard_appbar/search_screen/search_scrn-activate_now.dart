import 'package:flutter/material.dart';
import 'package:paytmclone/models/payment_history_model.dart';
import 'package:paytmclone/screens/paytm_wallet.dart';
import 'package:paytmclone/widgets/Bank_and_History/paytm_history_widget.dart';

class ActivateNowScreen extends StatelessWidget {
  const ActivateNowScreen({super.key});

  @override
  Widget build(BuildContext context) {
    List<PaymentHistoryModel> paymentHistoryModelList = [
      PaymentHistoryModel(
        name: 'Vishwanath Venkatasai',
        action: ActionsEnum.Sent,
        dateAndTime: '18 Mar, 11:26 AM',
        money: 1,
      ),
      PaymentHistoryModel(
        name: 'Vishwanath Venkatasai',
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
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Stack(
          children: [
            Column(
              children: [
                Container(
                  height: 250,
                  decoration: const BoxDecoration(
                    gradient: LinearGradient(
                      colors: [
                        Color(0xff88E8F4),
                        Color(0xffCDECFF),
                      ],
                      begin: Alignment.bottomLeft,
                      end: Alignment.topRight,
                    ),
                  ),
                ),
              ],
            ),
            SafeArea(
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 15),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    GestureDetector(
                      onTap: () {
                        Navigator.pop(context);
                      },
                      child: const Icon(
                        Icons.arrow_back,
                        color: Colors.black,
                      ),
                    ),
                    const SizedBox(
                      height: 50,
                    ),
                    Container(
                      padding: const EdgeInsets.all(15),
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(7),
                        border: Border.all(color: Colors.grey.shade300),
                      ),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: const [
                                  Text(
                                    'UPI Lite',
                                    style: TextStyle(
                                      color: Colors.black,
                                      fontWeight: FontWeight.bold,
                                      fontSize: 20,
                                    ),
                                  ),
                                  SizedBox(
                                    height: 5,
                                  ),
                                  Text(
                                    '₹0',
                                    style: TextStyle(
                                      color: Colors.black,
                                      fontWeight: FontWeight.bold,
                                      fontSize: 35,
                                    ),
                                  ),
                                ],
                              ),
                              Container(
                                decoration: BoxDecoration(
                                  color: Colors.white,
                                  border: Border.all(
                                    color: Colors.grey.shade300,
                                  ),
                                  shape: BoxShape.circle,
                                ),
                                child: Image.asset(
                                  'assets/images/paytm_logo.png',
                                  height: 40,
                                  width: 40,
                                ),
                              ),
                            ],
                          ),
                          const SizedBox(
                            height: 15,
                          ),
                          const Text(
                            'How it Works?',
                            style: TextStyle(
                              color: Colors.blue,
                              fontWeight: FontWeight.bold,
                              fontSize: 13,
                            ),
                          ),
                        ],
                      ),
                    ),
                    const SizedBox(
                      height: 15,
                    ),
                    Container(
                      padding: const EdgeInsets.all(15),
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(7),
                        border: Border.all(color: Colors.grey.shade300),
                      ),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const Text(
                            'Transfer Money to UPI Lite Balance',
                            style: TextStyle(
                              color: Colors.black,
                              fontWeight: FontWeight.bold,
                              fontSize: 18,
                            ),
                          ),
                          const SizedBox(
                            height: 3,
                          ),
                          const Text(
                            'You can transfer it back to your bacnk a/c anytime you want',
                            style: TextStyle(
                              color: Colors.black,
                              // fontWeight: FontWeight.bold,
                              fontSize: 13,
                            ),
                          ),
                          const SizedBox(
                            height: 15,
                          ),
                          TextField(
                            clipBehavior: Clip.none,
                            decoration: InputDecoration(
                              // prefixIcon: const Icon(
                              //   Icons.search,
                              //   color: Colors.grey,
                              // ),

                              filled: true,
                              fillColor: Colors.white,
                              labelText: 'Enter Amount',
                              labelStyle: const TextStyle(
                                color: Colors.grey,
                                fontWeight: FontWeight.bold,
                                fontSize: 15,
                              ),
                              hintText: '₹200',
                              hintStyle: const TextStyle(
                                color: Colors.black,
                                fontWeight: FontWeight.bold,
                                fontSize: 15,
                              ),

                              contentPadding: const EdgeInsets.symmetric(
                                  horizontal: 15, vertical: 0),
                              // border: OutlineInputBorder(
                              //   borderSide: BorderSide(
                              //     color: Colors.grey.shade300,
                              //     width: 0.5,
                              //   ),
                              //   borderRadius: BorderRadius.circular(15),
                              // ),

                              enabledBorder: OutlineInputBorder(
                                borderSide: const BorderSide(
                                  color: Colors.grey,
                                  width: 0.5,
                                ),
                                borderRadius: BorderRadius.circular(10),
                              ),
                              focusedBorder: OutlineInputBorder(
                                borderSide: const BorderSide(
                                  color: Color(0xff88E8F4),
                                  width: 0.5,
                                ),
                                borderRadius: BorderRadius.circular(10),
                              ),
                            ),
                          ),
                          const SizedBox(
                            height: 3,
                          ),
                          const Padding(
                            padding: EdgeInsets.symmetric(horizontal: 10),
                            child: Text(
                              'Please enter amount between ₹1 - ₹2,000',
                              style: TextStyle(
                                color: Colors.grey,
                                fontWeight: FontWeight.bold,
                                fontSize: 13,
                              ),
                            ),
                          ),
                          const SizedBox(
                            height: 15,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: const [
                              MoneyAddingContainer(
                                amount: 100,
                                amountColor: false,
                              ),
                              MoneyAddingContainer(
                                amount: 200,
                                amountColor: false,
                              ),
                              MoneyAddingContainer(
                                amount: 500,
                                amountColor: false,
                              ),
                              MoneyAddingContainer(
                                amount: 2000,
                                amountColor: false,
                              ),
                            ],
                          ),
                          const SizedBox(
                            height: 25,
                          ),
                          Row(
                            children: [
                              const Text(
                                'Adding from ',
                                style: TextStyle(
                                  fontSize: 14,
                                ),
                              ),
                              Image.asset(
                                'assets/images/sbi_logo.png',
                                height: 15,
                                width: 15,
                              ),
                              const Text(
                                ' State Back of India - 3684',
                                style: TextStyle(
                                  fontSize: 14,
                                ),
                              ),
                            ],
                          ),
                          const SizedBox(
                            height: 15,
                          ),
                          Container(
                            padding: const EdgeInsets.symmetric(vertical: 15),
                            decoration: BoxDecoration(
                              color: Colors.blue,
                              borderRadius: BorderRadius.circular(10),
                            ),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: const [
                                Text(
                                  'Add Money to UPI Lite',
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontWeight: FontWeight.bold,
                                    fontSize: 18,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                    const SizedBox(
                      height: 25,
                    ),
                    const Text(
                      'Payment History',
                      style: TextStyle(
                        color: Colors.black,
                        fontWeight: FontWeight.bold,
                        fontSize: 20,
                      ),
                    ),
                    const SizedBox(
                      height: 15,
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 10),
                      child: ListView.builder(
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
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
// 0xff88E8F4
// 0xffCDECFF