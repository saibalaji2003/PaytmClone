import 'package:flutter/material.dart';
import 'package:paytmclone/models/dashboard_appbar/paytm_gold/gold_faqs_model.dart';
import 'package:paytmclone/screens/dashboard_appbar/search_screen/paytm_gold/buy_gold_screen.dart';

class DeliveryGoldScreen extends StatelessWidget {
  const DeliveryGoldScreen({super.key});

  @override
  Widget build(BuildContext context) {
    List<GoldFAQsModel> goldFAQsModelList = [
      GoldFAQsModel(
        text: 'Tell me more about Paytm Gold',
      ),
      GoldFAQsModel(
        text: 'Gold KYC',
      ),
      GoldFAQsModel(
        text: 'Buy & Store 24k Gold',
      ),
      GoldFAQsModel(
        text: 'Sell Gold & transfer money to Bank',
      ),
      GoldFAQsModel(
        text: 'Request Delivery',
      ),
      GoldFAQsModel(
        text: 'Gold Savings Plan',
      ),
      GoldFAQsModel(
        text: 'Gift Gold',
      ),
      GoldFAQsModel(
        text: 'Legal',
      ),
    ];
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        // Row(
        //   children: [
        //     Stack(
        //       clipBehavior: Clip.none,
        //       children: [
        //         Container(
        //           width: 180,
        //           padding:
        //               const EdgeInsets.symmetric(horizontal: 10, vertical: 15),
        //           decoration: BoxDecoration(
        //             gradient: const LinearGradient(
        //                 colors: [Color(0xffFDF7EB), Colors.white],
        //                 begin: Alignment.topCenter,
        //                 end: Alignment.bottomCenter),
        //             borderRadius: BorderRadius.circular(7),
        //             border: Border.all(
        //               color: const Color(0xffC7A162),
        //             ),
        //           ),
        //           child: Column(
        //             crossAxisAlignment: CrossAxisAlignment.start,
        //             children: [
        //               Row(
        //                 mainAxisSize: MainAxisSize.min,
        //                 children: [
        //                   const Icon(
        //                     Icons.circle,
        //                     color: Color(0xffC7A162),
        //                     size: 35,
        //                   ),
        //                   const SizedBox(
        //                     width: 3,
        //                   ),
        //                   Column(
        //                     crossAxisAlignment: CrossAxisAlignment.start,
        //                     children: const [
        //                       Text(
        //                         'MMTC-PAMP',
        //                         style: TextStyle(
        //                           fontWeight: FontWeight.bold,
        //                           color: Color(0xff092C6C),
        //                           fontSize: 10,
        //                         ),
        //                       ),
        //                       SizedBox(
        //                         height: 3,
        //                       ),
        //                       Text(
        //                         '24K 99.99% Purity',
        //                         style: TextStyle(
        //                           fontWeight: FontWeight.bold,
        //                           color: Color(0xff092C6C),
        //                           fontSize: 8,
        //                         ),
        //                       ),
        //                     ],
        //                   ),
        //                 ],
        //               ),
        //               const SizedBox(
        //                 height: 15,
        //               ),
        //               const Text(
        //                 '₹6229.96/g',
        //                 style: TextStyle(
        //                   fontWeight: FontWeight.bold,
        //                   color: Color(0xff092C6C),
        //                   fontSize: 15,
        //                 ),
        //               ),
        //               const SizedBox(
        //                 height: 3,
        //               ),
        //               const Text(
        //                 'Balance: 0g',
        //                 style: TextStyle(
        //                   fontWeight: FontWeight.bold,
        //                   color: Color(0xff092C6C),
        //                   fontSize: 13,
        //                 ),
        //               ),
        //             ],
        //           ),
        //         ),
        //         const Positioned(
        //           right: -7,
        //           top: -7,
        //           child: Icon(
        //             Icons.check_circle,
        //             color: Color(0xff092C6C),
        //             size: 18,
        //           ),
        //         ),
        //       ],
        //     ),
        //   ],
        // ),
        // const SizedBox(
        //   height: 20,
        // ),
        // Row(
        //   children: [
        //     Expanded(
        //       child: Column(
        //         crossAxisAlignment: CrossAxisAlignment.start,
        //         children: [
        //           const Text(
        //             'Amount (₹)',
        //             style: TextStyle(
        //               // fontWeight: FontWeight.bold,
        //               color: Color(0xff092C6C),
        //               fontSize: 13,
        //             ),
        //           ),
        //           const SizedBox(
        //             height: 15,
        //           ),
        //           TextField(
        //             clipBehavior: Clip.none,
        //             decoration: InputDecoration(
        //               // prefixIcon: const Icon(
        //               //   Icons.search,
        //               //   color: Colors.grey,
        //               // ),

        //               filled: true,
        //               fillColor: const Color(0xffFDF7EB),
        //               hintText: '₹5000',
        //               hintStyle: const TextStyle(
        //                 color: Colors.black,
        //                 fontWeight: FontWeight.bold,
        //                 fontSize: 15,
        //               ),
        //               contentPadding: const EdgeInsets.symmetric(
        //                   horizontal: 10, vertical: 0),
        //               // border: OutlineInputBorder(
        //               //   borderSide: BorderSide(
        //               //     color: Colors.grey.shade300,
        //               //     width: 0.5,
        //               //   ),
        //               //   borderRadius: BorderRadius.circular(15),
        //               // ),

        //               enabledBorder: OutlineInputBorder(
        //                 borderSide: const BorderSide(
        //                   color: Colors.transparent,
        //                   width: 0.5,
        //                 ),
        //                 borderRadius: BorderRadius.circular(10),
        //               ),
        //               focusedBorder: OutlineInputBorder(
        //                 borderSide: const BorderSide(
        //                   color: Colors.transparent,
        //                   width: 0.5,
        //                 ),
        //                 borderRadius: BorderRadius.circular(10),
        //               ),
        //             ),
        //           ),
        //         ],
        //       ),
        //     ),
        //     const Padding(
        //       padding: EdgeInsets.symmetric(horizontal: 10),
        //       child: Icon(
        //         Icons.compare_arrows,
        //         color: Color(0xffC7A162),
        //       ),
        //     ),
        //     Expanded(
        //       child: Column(
        //         crossAxisAlignment: CrossAxisAlignment.start,
        //         children: [
        //           const Text(
        //             'Weight (g)',
        //             style: TextStyle(
        //               // fontWeight: FontWeight.bold,
        //               color: Color(0xff092C6C),
        //               fontSize: 13,
        //             ),
        //           ),
        //           const SizedBox(
        //             height: 15,
        //           ),
        //           TextField(
        //             clipBehavior: Clip.none,
        //             decoration: InputDecoration(
        //               // prefixIcon: const Icon(
        //               //   Icons.search,
        //               //   color: Colors.grey,
        //               // ),

        //               filled: true,
        //               fillColor: const Color(0xffFDF7EB),
        //               hintText: '0.8025g',
        //               hintStyle: const TextStyle(
        //                 color: Colors.black,
        //                 fontWeight: FontWeight.bold,
        //                 fontSize: 15,
        //               ),
        //               contentPadding: const EdgeInsets.symmetric(
        //                   horizontal: 10, vertical: 0),
        //               // border: OutlineInputBorder(
        //               //   borderSide: BorderSide(
        //               //     color: Colors.grey.shade300,
        //               //     width: 0.5,
        //               //   ),
        //               //   borderRadius: BorderRadius.circular(15),
        //               // ),

        //               enabledBorder: OutlineInputBorder(
        //                 borderSide: const BorderSide(
        //                   color: Colors.transparent,
        //                   width: 0.5,
        //                 ),
        //                 borderRadius: BorderRadius.circular(10),
        //               ),
        //               focusedBorder: OutlineInputBorder(
        //                 borderSide: const BorderSide(
        //                   color: Colors.transparent,
        //                   width: 0.5,
        //                 ),
        //                 borderRadius: BorderRadius.circular(10),
        //               ),
        //             ),
        //           ),
        //         ],
        //       ),
        //     )
        //   ],
        // ),
        // const SizedBox(
        //   height: 10,
        // ),
        // Row(
        //   children: const [
        //     Text(
        //       'Exclusive of 3% GST',
        //       style: TextStyle(
        //         fontWeight: FontWeight.bold,
        //         color: Color(0xff092C6C),
        //         fontSize: 11,
        //       ),
        //     ),
        //     Icon(
        //       Icons.warning_amber_rounded,
        //       color: Color(0xff092C6C),
        //       size: 13,
        //     )
        //   ],
        // ),
        // const SizedBox(
        //   height: 10,
        // ),
        // Row(
        //   children: [
        //     Expanded(
        //       child: TextField(
        //         clipBehavior: Clip.none,
        //         decoration: InputDecoration(
        //           // prefixIcon: const Icon(
        //           //   Icons.search,
        //           //   color: Colors.grey,
        //           // ),

        //           filled: true,
        //           fillColor: const Color(0xffEFF6FF),
        //           hintText: 'Apply Promocode',
        //           hintStyle: const TextStyle(
        //             color: Color(0xff092C6C),
        //             fontWeight: FontWeight.bold,
        //             fontSize: 13,
        //           ),
        //           contentPadding:
        //               const EdgeInsets.symmetric(horizontal: 10, vertical: 0),
        //           // border: OutlineInputBorder(
        //           //   borderSide: BorderSide(
        //           //     color: Colors.grey.shade300,
        //           //     width: 0.5,
        //           //   ),
        //           //   borderRadius: BorderRadius.circular(15),
        //           // ),

        //           enabledBorder: OutlineInputBorder(
        //             borderSide: const BorderSide(
        //               color: Colors.transparent,
        //               width: 0.5,
        //             ),
        //             borderRadius: BorderRadius.circular(5),
        //           ),
        //           focusedBorder: OutlineInputBorder(
        //             borderSide: const BorderSide(
        //               color: Colors.transparent,
        //               width: 0.5,
        //             ),
        //             borderRadius: BorderRadius.circular(5),
        //           ),
        //           suffixIcon: const Icon(
        //             Icons.arrow_forward_ios,
        //             color: Color(0xff092C6C),
        //             size: 15,
        //           ),
        //         ),
        //       ),
        //     ),
        //   ],
        // ),
        const SizedBox(
          height: 15,
        ),
        Container(
          padding: const EdgeInsets.symmetric(vertical: 15),
          decoration: BoxDecoration(
            color: const Color(0xff092C6C),
            borderRadius: BorderRadius.circular(5),
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: const [
              Text(
                'Select Gold Coin',
                style: TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                  fontSize: 16,
                ),
              ),
            ],
          ),
        ),
        const SizedBox(
          height: 15,
        ),
        Row(
          children: [
            const Expanded(
              child: Text(
                'Gold Price Trends',
                style: TextStyle(
                  color: Color(0xff092C6C),
                  fontWeight: FontWeight.bold,
                  fontSize: 13,
                ),
              ),
            ),
            const Text(
              '3M',
              style: TextStyle(
                color: Color(0xff092C6C),
                fontWeight: FontWeight.bold,
                fontSize: 13,
              ),
            ),
            const SizedBox(
              width: 3,
            ),
            const Text(
              '(4.64%)',
              style: TextStyle(
                color: Colors.greenAccent,
                fontWeight: FontWeight.bold,
                fontSize: 13,
              ),
            ),
            const SizedBox(
              width: 3,
            ),
            Container(
              decoration: BoxDecoration(
                border: Border.all(color: Colors.greenAccent),
                shape: BoxShape.circle,
              ),
              child: const Icon(
                Icons.arrow_upward_sharp,
                color: Colors.greenAccent,
                size: 10,
              ),
            ),
          ],
        ),
        const SizedBox(
          height: 25,
        ),
        const Text(
          'Frequently Asked Questions',
          style: TextStyle(
            color: Color(0xff092C6C),
            fontWeight: FontWeight.bold,
            fontSize: 15,
          ),
        ),
        const SizedBox(
          height: 15,
        ),
        ListView.builder(
          primary: false,
          shrinkWrap: true,
          itemCount: goldFAQsModelList.length,
          itemBuilder: (BuildContext context, int index) {
            return GoldFAQsWidget(
              goldFAQsModel: goldFAQsModelList[index],
            );
          },
        ),
        const SizedBox(
          height: 15,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: const [
            Text(
              'Gold Accumulation Plan.',
              style: TextStyle(
                color: Colors.grey,
                fontWeight: FontWeight.bold,
                fontSize: 12,
              ),
            ),
            Text(
              'T&C',
              style: TextStyle(
                color: Color(0xff092C6C),
                fontWeight: FontWeight.bold,
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
            color: Colors.white,
            borderRadius: BorderRadius.circular(5),
            border: Border.all(
              color: const Color(0xff092C6C),
            ),
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Row(
                children: const [
                  Icon(
                    Icons.message_outlined,
                    color: Color(0xff092C6C),
                    size: 20,
                  ),
                  SizedBox(
                    width: 5,
                  ),
                  Text(
                    'Contact us, we are here 24X7',
                    style: TextStyle(
                      color: Color(0xff092C6C),
                      fontWeight: FontWeight.bold,
                      fontSize: 14,
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
        const SizedBox(
          height: 15,
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 15),
          child: Row(
            children: [
              Image.asset(
                'assets/images/paytm_logo.png',
                height: 50,
                width: 50,
              ),
              const SizedBox(
                width: 5,
              ),
              const Flexible(
                child: Text(
                  'AT Paytm your trust is foremost. Your money is yours untill you get waht you paid for. ',
                  style: TextStyle(
                    color: Colors.grey,
                    // fontWeight: FontWeight.bold,
                    fontSize: 12,
                  ),
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
