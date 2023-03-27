import 'package:flutter/material.dart';
import 'package:paytmclone/common_widgets/payment_messages.dart';
import 'package:paytmclone/models/payment_messages.dart';

class ToUPIAppsScreen extends StatelessWidget {
  const ToUPIAppsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    List<PaymentMesssagesModel> paymentMesssagesModelList = [
      PaymentMesssagesModel(
        name: 'Vishwanath Venkatasai',
        mobileNumber: '+91 9279793779',
        paymentMessage: 'Your payment of ₹10 failed',
        date: '21/07/2001',
        day: '',
        dateShown: true,
        image:
            'https://cdn.pixabay.com/photo/2016/04/13/14/27/google-chrome-1326908__340.png',
      ),
      PaymentMesssagesModel(
        name: 'Daddy',
        mobileNumber: '+91 9279793779',
        paymentMessage: 'Payment received',
        date: '',
        day: 'Yesterday',
        dateShown: false,
        containerColor: false,
        containerIcon: false,
      ),
      PaymentMesssagesModel(
        name: 'Alex Adams',
        mobileNumber: '+91 9279793779',
        paymentMessage: 'Your payment of ₹10 failed',
        date: '23/07/2002',
        day: '',
        dateShown: true,
        // image:
        //     'https://cdn.pixabay.com/photo/2016/12/09/04/02/presents-1893642__340.jpg',
      ),
      PaymentMesssagesModel(
        name: 'Scalett Johansson',
        mobileNumber: '+91 9279793779',
        paymentMessage: 'Your payment of ₹10 failed',
        date: '24/07/2003',
        day: '',
        dateShown: true,
        containerColor: true,
        containerIcon: true,
        image:
            'https://cdn.pixabay.com/photo/2017/03/24/07/28/twitter-2170426__340.png',
      ),
      PaymentMesssagesModel(
        name: 'Chris Hemsworth',
        mobileNumber: '+91 9279793779',
        paymentMessage: 'Your payment of ₹10 failed',
        date: '28/07/2004',
        day: '',
        dateShown: true,
        image:
            'https://cdn.pixabay.com/photo/2016/11/19/03/08/youtube-1837872__340.png',
      ),
      PaymentMesssagesModel(
        name: 'Captain America',
        mobileNumber: '+91 9279793779',
        paymentMessage: 'Payment received',
        date: '',
        day: 'Yesterday',
        dateShown: false,
        containerColor: false,
        containerIcon: false,
        image:
            'https://cdn.pixabay.com/photo/2016/04/01/00/22/cat-1298141__340.png',
      ),
      PaymentMesssagesModel(
        name: 'Hulk',
        mobileNumber: '+91 9279793779',
        paymentMessage: 'Payment received',
        date: '',
        day: 'Yesterday',
        dateShown: false,
        containerColor: false,
        containerIcon: false,
        // image:
        //     // 'https://cdn.pixabay.com/photo/2016/04/13/14/27/google-chrome-1326908__340.png',
      ),
    ];
    return Scaffold(
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
        actions: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10),
            child: Row(
              children: const [
                Text(
                  'Help',
                  style: TextStyle(
                    color: Colors.blue,
                    fontWeight: FontWeight.bold,
                    fontSize: 15,
                  ),
                ),
                SizedBox(
                  width: 10,
                ),
                Text(
                  'Settings',
                  style: TextStyle(
                    color: Colors.blue,
                    fontWeight: FontWeight.bold,
                    fontSize: 15,
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
                'Send Money to Any UPI App',
                style: TextStyle(
                  color: Colors.black,
                  fontWeight: FontWeight.bold,
                  fontSize: 20,
                ),
              ),
              const SizedBox(
                height: 25,
              ),
              const AnyUPIApp(
                icon: Icons.numbers,
                text1: 'Enter Mobile/UPI Number',
                text2: 'Send money to Gpay, Phonepe, BHIM or any UPI app',
              ),
              const SizedBox(
                height: 15,
              ),
              Container(
                color: Colors.grey,
                width: 500,
                height: 1,
              ),
              const SizedBox(
                height: 15,
              ),
              const AnyUPIApp(
                icon: Icons.currency_rupee,
                text1: 'Enter UPI ID',
                text2: 'Pay to Bank A/C using UPI ID',
              ),
              const SizedBox(
                height: 30,
              ),
              const Text(
                'Recents',
                style: TextStyle(
                  color: Colors.black,
                  fontWeight: FontWeight.bold,
                  fontSize: 20,
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              TextField(
                decoration: InputDecoration(
                  prefixIcon: const Icon(
                    Icons.search,
                    color: Colors.black,
                  ),
                  fillColor: Colors.white,
                  hintText: 'Search Name, Mobile, UPI ID or Bank A/c',
                  hintStyle: const TextStyle(
                    color: Colors.grey,
                    fontWeight: FontWeight.bold,
                  ),
                  border: OutlineInputBorder(
                    borderSide: const BorderSide(
                      color: Colors.black,
                      width: 3,
                    ),
                    borderRadius: BorderRadius.circular(15),
                  ),
                ),
              ),
              ListView.builder(
                shrinkWrap: true,
                primary: false,
                scrollDirection: Axis.vertical,
                physics: const NeverScrollableScrollPhysics(),
                itemCount: paymentMesssagesModelList.length,
                itemBuilder: (BuildContext context, int index) {
                  return PaymentMessagesWidget(
                    paymentMesssagesModel: paymentMesssagesModelList[index],
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

class AnyUPIApp extends StatelessWidget {
  final IconData icon;
  final String text1;
  final String text2;
  const AnyUPIApp({
    super.key,
    required this.icon,
    required this.text1,
    required this.text2,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Container(
          padding: const EdgeInsets.all(12),
          decoration: const BoxDecoration(
            color: Color(0xffE1F5FE),
            shape: BoxShape.circle,
          ),
          child: Icon(
            icon,
            size: 23,
          ),
        ),
        const SizedBox(
          width: 10,
        ),
        Expanded(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                text1,
                style: const TextStyle(
                  color: Colors.black,
                  fontWeight: FontWeight.bold,
                  fontSize: 16,
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
                  fontSize: 14,
                ),
              ),
            ],
          ),
        ),
        const Icon(
          Icons.arrow_forward_ios,
          size: 23,
        ),
      ],
    );
  }
}
