class PaymentHistoryModel {
  final String name;
  final ActionsEnum action;
  final String dateAndTime;
  final int money;
  PaymentHistoryModel({
    required this.name,
    required this.action,
    required this.dateAndTime,
    required this.money,
  });
}

enum ActionsEnum { Failed, Sent, Added }
