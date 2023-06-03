import 'package:flutter/material.dart';

class OrdersAndBookingsScreen extends StatefulWidget {
  const OrdersAndBookingsScreen({super.key});

  @override
  State<OrdersAndBookingsScreen> createState() =>
      _OrdersAndBookingsScreenState();
}

class _OrdersAndBookingsScreenState extends State<OrdersAndBookingsScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xffFAFAFA),
      body: SafeArea(
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
          ],
        ),
      ),
    );
  }
}
