import 'package:flutter/material.dart';
import 'package:paytmclone/common_widgets/contacts_profilepic_widget.dart';
import 'package:paytmclone/models/dashboard_appbar/message_screen/all_messages.dart';

class MessageScreen extends StatelessWidget {
  const MessageScreen({super.key});

  @override
  Widget build(BuildContext context) {
    List<AllMessagesModel> allMessagesModelList = [
      AllMessagesModel(
        image: 'assets/images/images.png',
        personName: 'Vishwanath Venkatasai',
        name: 'Personal Loan',
        message: '',
        date: '20/07/2022',
        day: 'Wednesday',
        noOfMessages: '9+',
        dayOrDate: false,
        profile: false,
        messageEnum: MessageEnum.TransferSuccessful,
      ),
      AllMessagesModel(
        image: '',
        personName: 'Scarlett Johansson',
        name: 'Vishwanath SaiBalaji',
        message: '',
        date: '20/07/2022',
        day: '',
        noOfMessages: '1',
        messageEnum: MessageEnum.TransferFailed,
        isNameShown: false,
      ),
      AllMessagesModel(
          image: 'assets/images/sbi_logo.png',
          personName: 'vishwanath sai balaji',
          name: 'Refer & Earn',
          message:
              'Refer your friends on Paytm get assured cashback and a chance to win a car',
          date: '07/94/23',
          day: '',
          noOfMessages: '9+',
          messageEnum: MessageEnum.NormalMessage,
          isNameShown: true,
          profile: false),
      AllMessagesModel(
        image: '',
        personName: 'Captain America',
        name: '',
        message: '',
        date: '15/03/2023',
        day: '',
        noOfMessages: '5',
        messageEnum: MessageEnum.TransferSuccessful,
        isNameShown: false,
      ),
      AllMessagesModel(
        image: 'assets/images/paytm_logo.png',
        personName: 'Chris Hemsworth',
        name: 'Paytm Bank',
        message:
            'Your KYC profile details have been updated as per your request',
        date: '20/07/2022',
        day: '',
        noOfMessages: '1',
        messageEnum: MessageEnum.NormalMessage,
        isNameShown: true,
        profile: false,
      ),
      AllMessagesModel(
        image: 'assets/images/cashback_image.png',
        personName: 'Dwayne Johnson',
        name: 'Credit Card',
        message: 'Paytm HDFC Bank Credit Card ke saath Apply Now and Get',
        date: '20/07/2022',
        day: '',
        noOfMessages: '9+',
        messageEnum: MessageEnum.NormalMessage,
        isNameShown: true,
        profile: false,
      ),
      AllMessagesModel(
        image: '',
        personName: 'Chris Hemsworth',
        name: '',
        message: '',
        date: '20/07/2022',
        day: '',
        noOfMessages: '6',
        messageEnum: MessageEnum.TransferSuccessful,
        isNameShown: false,
      ),
      AllMessagesModel(
        image: '',
        personName: 'Dwayne Johnson',
        name: '',
        message: 'hello hfhfhj  ljgu ',
        date: '20/07/2022',
        day: '',
        noOfMessages: '3',
        messageEnum: MessageEnum.NormalMessage,
        isNameShown: false,
      ),
      AllMessagesModel(
        image: '',
        personName: 'Chris Hemsworth',
        name: '',
        message: '',
        date: '',
        day: 'Yesterday',
        noOfMessages: '2',
        messageEnum: MessageEnum.TransferSuccessful,
        isNameShown: false,
        dayOrDate: false,
      ),
      AllMessagesModel(
          image: '',
          personName: 'Dwayne Johnson',
          name: '',
          message: 'Hello I am Dwayne Johnason',
          date: '20/07/2022',
          day: 'Monday',
          noOfMessages: '9+',
          messageEnum: MessageEnum.NormalMessage,
          isNameShown: false,
          dayOrDate: false),
    ];
    return Scaffold(
      backgroundColor: Colors.white,
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
          'Messages',
          style: TextStyle(
            color: Colors.black,
            fontWeight: FontWeight.bold,
            fontSize: 20,
          ),
        ),
        actions: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10),
            child: Row(
              children: const [
                Text(
                  'New Chat',
                  style: TextStyle(
                    color: Colors.blue,
                    fontWeight: FontWeight.bold,
                    fontSize: 16,
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
      body: SingleChildScrollView(
        primary: true,
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 15),
              child: TextField(
                decoration: InputDecoration(
                  prefixIcon: const Icon(
                    Icons.search,
                    color: Colors.black,
                  ),
                  filled: true,
                  fillColor: Colors.white,
                  hintText: 'Search',
                  hintStyle: const TextStyle(
                    color: Colors.grey,
                    fontWeight: FontWeight.bold,
                  ),
                  contentPadding: const EdgeInsets.all(-3),
                  // border: OutlineInputBorder(
                  //   borderSide: BorderSide(
                  //     color: Colors.grey.shade300,
                  //     width: 0.5,
                  //   ),
                  //   borderRadius: BorderRadius.circular(15),
                  // ),
                  enabledBorder: OutlineInputBorder(
                    borderSide: const BorderSide(
                      color: Colors.black,
                      width: 1.5,
                    ),
                    borderRadius: BorderRadius.circular(10),
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderSide: const BorderSide(
                      color: Colors.black,
                      width: 1.5,
                    ),
                    borderRadius: BorderRadius.circular(10),
                  ),
                ),
              ),
            ),
            const SizedBox(
              height: 15,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 12),
              child: Row(
                children: const [
                  Text(
                    'All',
                    style: TextStyle(
                      color: Colors.black,
                      fontWeight: FontWeight.bold,
                      fontSize: 15,
                    ),
                  ),
                  SizedBox(
                    width: 15,
                  ),
                  Expanded(
                    child: Text(
                      'Payments',
                      style: TextStyle(
                        color: Colors.grey,
                        fontWeight: FontWeight.bold,
                        fontSize: 15,
                      ),
                    ),
                  ),
                  Text(
                    'Mark All as Read',
                    style: TextStyle(
                      color: Colors.blue,
                      fontWeight: FontWeight.bold,
                      fontSize: 15,
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(
              height: 15,
            ),
            ListView.builder(
              shrinkWrap: true,
              primary: false,
              itemCount: allMessagesModelList.length,
              itemBuilder: (BuildContext context, int index) {
                return AllMessagesWidget(
                  allMessagesModel: allMessagesModelList[index],
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}

class AllMessagesWidget extends StatelessWidget {
  final AllMessagesModel allMessagesModel;
  const AllMessagesWidget({
    super.key,
    required this.allMessagesModel,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 10),
      child: Row(
        children: [
          allMessagesModel.profile
              ? ProfilePicWith2Letters(name: allMessagesModel.personName)
              : ClipOval(
                  child: Image.asset(
                    allMessagesModel.image,
                    height: 50,
                    width: 50,
                    fit: BoxFit.cover,
                  ),
                ),
          const SizedBox(
            width: 10,
          ),
          Flexible(
            child: Row(
              children: [
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      allMessagesModel.isNameShown
                          ? Text(
                              allMessagesModel.name,
                              style: const TextStyle(
                                color: Colors.black,
                                fontWeight: FontWeight.bold,
                                fontSize: 17,
                              ),
                            )
                          : Text(
                              allMessagesModel.personName,
                              style: const TextStyle(
                                color: Colors.black,
                                fontWeight: FontWeight.bold,
                                fontSize: 17,
                              ),
                            ),
                      const SizedBox(
                        height: 3,
                      ),
                      allMessagesModel.messageEnum == MessageEnum.TransferFailed
                          ? Row(
                              children: [
                                Row(
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
                                        size: 10,
                                      ),
                                    ),
                                    const SizedBox(
                                      width: 5,
                                    ),
                                    const Text(
                                      'Your Payment of ₹10 failed',
                                      style: TextStyle(
                                        color: Colors.grey,
                                        fontWeight: FontWeight.bold,
                                        fontSize: 14,
                                      ),
                                    ),
                                  ],
                                ),
                              ],
                            )
                          : allMessagesModel.messageEnum ==
                                  MessageEnum.TransferSuccessful
                              ? Row(
                                  children: [
                                    Container(
                                      padding: const EdgeInsets.all(3),
                                      decoration: BoxDecoration(
                                        color: Colors.greenAccent.shade400,
                                        shape: BoxShape.circle,
                                      ),
                                      child: const Icon(
                                        Icons.currency_rupee,
                                        color: Colors.white,
                                        size: 10,
                                      ),
                                    ),
                                    const SizedBox(
                                      width: 5,
                                    ),
                                    const Text(
                                      '₹30 Sent',
                                      style: TextStyle(
                                        color: Colors.grey,
                                        fontWeight: FontWeight.bold,
                                        fontSize: 14,
                                      ),
                                    ),
                                  ],
                                )
                              : Text(
                                  allMessagesModel.message,
                                  style: const TextStyle(
                                    color: Colors.grey,
                                    fontWeight: FontWeight.bold,
                                    fontSize: 14,
                                  ),
                                ),
                    ],
                  ),
                ),
              ],
            ),
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              allMessagesModel.dayOrDate
                  ? Text(
                      allMessagesModel.date,
                      style: const TextStyle(
                        color: Colors.grey,
                        fontWeight: FontWeight.bold,
                        fontSize: 14,
                      ),
                    )
                  : Text(
                      allMessagesModel.day,
                      style: const TextStyle(
                        color: Colors.grey,
                        fontWeight: FontWeight.bold,
                        fontSize: 14,
                      ),
                    ),
              const SizedBox(
                height: 5,
              ),
              Container(
                alignment: Alignment.center,
                height: 20,
                width: 20,
                decoration: const BoxDecoration(
                  color: Colors.blue,
                  shape: BoxShape.circle,
                ),
                child: Text(
                  allMessagesModel.noOfMessages,
                  style: const TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                    fontSize: 11,
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
