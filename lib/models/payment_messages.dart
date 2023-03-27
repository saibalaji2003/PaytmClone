class PaymentMesssagesModel {
  final String name;
  final String mobileNumber;
  final String paymentMessage;
  final String day;
  final String date;
  final bool containerColor;
  final bool containerIcon;
  final bool dateShown;
  final String? image;

  PaymentMesssagesModel({
    required this.name,
    required this.mobileNumber,
    required this.paymentMessage,
    required this.day,
    required this.date,
    this.containerColor = true,
    this.containerIcon = true,
    this.dateShown = true,
    this.image,
  });
}
