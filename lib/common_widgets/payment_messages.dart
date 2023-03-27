import 'package:flutter/material.dart';
import 'package:paytmclone/common_widgets/profile_pic_widget.dart';
import 'package:paytmclone/models/payment_messages.dart';

class PaymentMessagesWidget extends StatelessWidget {
  final PaymentMesssagesModel paymentMesssagesModel;
  const PaymentMessagesWidget({
    super.key,
    required this.paymentMesssagesModel,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 15),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          ProfilePicWidget(
              name: paymentMesssagesModel.name,
              image: paymentMesssagesModel.image),
          const SizedBox(
            width: 20,
          ),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  paymentMesssagesModel.name,
                  style: const TextStyle(
                    color: Colors.black,
                    fontWeight: FontWeight.bold,
                    fontSize: 17,
                  ),
                ),
                const SizedBox(
                  height: 3,
                ),
                Text(
                  paymentMesssagesModel.mobileNumber,
                  style: const TextStyle(
                    color: Colors.black,
                    // fontWeight: FontWeight.bold,
                    fontSize: 13,
                  ),
                ),
                const SizedBox(
                  height: 5,
                ),
                Row(
                  children: [
                    Container(
                      padding: const EdgeInsets.all(3),
                      decoration: BoxDecoration(
                        color: paymentMesssagesModel.containerColor
                            ? Colors.red
                            : Colors.green,
                        shape: BoxShape.circle,
                      ),
                      child: Icon(
                        paymentMesssagesModel.containerIcon
                            ? Icons.warning
                            : Icons.currency_rupee,
                        color: Colors.white,
                        size: 8,
                      ),
                    ),
                    const SizedBox(
                      width: 5,
                    ),
                    Text(
                      paymentMesssagesModel.paymentMessage,
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
          paymentMesssagesModel.dateShown
              ? Text(
                  paymentMesssagesModel.date,
                  style: const TextStyle(
                    color: Colors.grey,
                    fontWeight: FontWeight.bold,
                    fontSize: 13,
                  ),
                )
              : Text(
                  paymentMesssagesModel.day,
                  style: const TextStyle(
                    color: Colors.grey,
                    fontWeight: FontWeight.bold,
                    fontSize: 13,
                  ),
                ),
        ],
      ),
    );
  }
}
