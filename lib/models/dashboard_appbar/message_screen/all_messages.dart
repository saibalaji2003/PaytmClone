class AllMessagesModel {
  final String image;
  final bool profile;
  final String personName;
  final String name;
  final String message;
  final bool dayOrDate;
  final String date;
  final String day;
  final String noOfMessages;
  final MessageEnum messageEnum;
  final bool isNameShown;
  AllMessagesModel({
    required this.image,
    this.profile = true,
    required this.personName,
    required this.name,
    required this.message,
    this.dayOrDate = true,
    required this.date,
    required this.day,
    required this.noOfMessages,
    required this.messageEnum,
    this.isNameShown = true,
  });
}

enum MessageEnum { TransferFailed, TransferSuccessful, NormalMessage }
