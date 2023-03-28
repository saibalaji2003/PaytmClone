import 'package:flutter/material.dart';
import 'package:paytmclone/common_widgets/contacts_profilepic_widget.dart';
import 'package:paytmclone/models/payment_history_model.dart';

class PaymentHistoryWidget extends StatelessWidget {
  final PaymentHistoryModel paymentHistoryModel;
  const PaymentHistoryWidget({
    super.key,
    required this.paymentHistoryModel,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 10),
      child: Row(
        children: [
          ProfilePicWith2Letters(name: paymentHistoryModel.name),
          const SizedBox(
            width: 10,
          ),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Money ${paymentHistoryModel.action == ActionsEnum.Failed ? "transfer failed" : paymentHistoryModel.action == ActionsEnum.Sent ? 'sent' : 'added'} to ${paymentHistoryModel.name}',
                  style: const TextStyle(
                    color: Colors.black,
                    fontWeight: FontWeight.bold,
                    fontSize: 14,
                  ),
                ),
                const SizedBox(
                  height: 5,
                ),
                const Text(
                  '26 Mar, 11:38 AM',
                  style: TextStyle(
                    color: Colors.grey,
                    // fontWeight: FontWeight.bold,
                    fontSize: 13,
                  ),
                ),
              ],
            ),
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              Text(
                '₹${paymentHistoryModel.money}',
                style: const TextStyle(
                  color: Colors.black,
                  fontWeight: FontWeight.bold,
                  fontSize: 15,
                ),
              ),
              const SizedBox(
                height: 5,
              ),
              paymentHistoryModel.action == ActionsEnum.Failed
                  ? Row(
                      children: [
                        Container(
                          padding: const EdgeInsets.all(3),
                          decoration: const BoxDecoration(
                            color: Colors.red,
                            shape: BoxShape.circle,
                          ),
                          child: const Icon(
                            Icons.warning,
                            color: Colors.white,
                            size: 7,
                          ),
                        ),
                        const SizedBox(
                          width: 5,
                        ),
                        const Text(
                          'Failed',
                          style: TextStyle(
                            color: Colors.red,
                            fontWeight: FontWeight.bold,
                            fontSize: 14,
                          ),
                        ),
                      ],
                    )
                  : paymentHistoryModel.action == ActionsEnum.Sent
                      ? Row(
                          children: [
                            const Text(
                              'Sent From',
                              style: TextStyle(
                                color: Colors.grey,
                                // fontWeight: FontWeight.bold,
                                fontSize: 13,
                              ),
                            ),
                            const SizedBox(
                              width: 5,
                            ),
                            Image.asset(
                              'assets/images/paytm_logo.png',
                              fit: BoxFit.cover,
                              height: 20,
                              width: 20,
                            )
                          ],
                        )
                      : Row(
                          children: [
                            const Text(
                              'Added From',
                              style: TextStyle(
                                color: Colors.grey,
                                // fontWeight: FontWeight.bold,
                                fontSize: 13,
                              ),
                            ),
                            const SizedBox(
                              width: 5,
                            ),
                            Image.asset(
                              'assets/images/sbi_logo.png',
                              fit: BoxFit.cover,
                              height: 15,
                              width: 15,
                            ),
                          ],
                        ),
            ],
          ),
        ],
      ),
    );
  }
}
