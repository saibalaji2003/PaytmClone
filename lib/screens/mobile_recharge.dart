import 'package:flutter/material.dart';
import 'package:paytmclone/common_widgets/contacts_profilepic_widget.dart';
import 'package:paytmclone/models/contacts_profilepic.dart';
import 'package:paytmclone/models/recharge_and_bills.dart';

class MobileRechargeScreen extends StatelessWidget {
  const MobileRechargeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    List<RechargeAndBillsModel> rechargeAndBillsModelList = [
      RechargeAndBillsModel(
        image: 'assets/images/v_sim_logo.png',
        name: 'Amma',
        mobileNumber: '8635818382',
        lastRechargedAmount: 99,
        lastRechargedDate: '29 Nov 2022',
      ),
      RechargeAndBillsModel(
        image: 'assets/images/airtel_logo.jpg',
        name: 'Akhil Dada',
        mobileNumber: '8647963766',
        lastRechargedAmount: 199,
        lastRechargedDate: '15 Dec 2022',
      ),
      RechargeAndBillsModel(
        image: 'assets/images/v_sim_logo.png',
        name: 'Adams',
        mobileNumber: '8148717676',
        lastRechargedAmount: 699,
        lastRechargedDate: '31 Jun 2022',
      ),
      RechargeAndBillsModel(
        image: 'assets/images/jio_logo.png',
        name: 'Tommy',
        mobileNumber: '8635818382',
        lastRechargedAmount: 9,
        lastRechargedDate: '01 Nov 2022',
      ),
      RechargeAndBillsModel(
        image: 'assets/images/jio_logo.png',
        name: 'David',
        mobileNumber: '8635818382',
        lastRechargedAmount: 299,
        lastRechargedDate: '20 July 2022',
      ),
    ];
    List<ContactsProfilePicModel> contactsProfilePicModelList = [
      ContactsProfilePicModel(
        name: 'Venkata Sai',
        number: '+91 1976767686',
      ),
      ContactsProfilePicModel(
        name: 'Alex Adams',
        number: '+91 1976767686',
      ),
      ContactsProfilePicModel(
        name: 'Elizabeth Olsen',
        number: '+91 1976767686',
      ),
      ContactsProfilePicModel(
        name: 'Scarlett Johansson',
        number: '+91 1976767686',
      ),
      ContactsProfilePicModel(
        name: 'Amir khan',
        number: '+91 1976767686',
      ),
      ContactsProfilePicModel(
        name: 'Hrithik',
        number: '+91 1976767686',
      ),
      ContactsProfilePicModel(
        name: 'Salman khan',
        number: '+91 1976767686',
      ),
      ContactsProfilePicModel(
        name: 'Shah Rukh khan',
        number: '+91 1976767686',
      ),
      ContactsProfilePicModel(
        name: 'Shah Rukh khan',
        number: '+91 1976767686',
      ),
      ContactsProfilePicModel(
        name: 'Shah Rukh khan',
        number: '+91 1976767686',
      ),
      ContactsProfilePicModel(
        name: 'Shah Rukh khan',
        number: '+91 1976767686',
      ),
      ContactsProfilePicModel(
        name: 'Shah Rukh khan',
        number: '+91 1976767686',
      ),
      ContactsProfilePicModel(
        name: 'Shah Rukh khan',
        number: '+91 1976767686',
      ),
      ContactsProfilePicModel(
        name: 'Shah Rukh khan',
        number: '+91 1976767686',
      ),
    ];
    return Scaffold(
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
                    fontSize: 16,
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
      body: SingleChildScrollView(
        physics: const BouncingScrollPhysics(),
        primary: true,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 15),
              child: Text(
                'Recharge or Pay Mobile Bill',
                style: TextStyle(
                  color: Colors.black,
                  fontWeight: FontWeight.bold,
                  fontSize: 20,
                ),
              ),
            ),
            const SizedBox(
              height: 15,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 15),
              child: ClipRRect(
                borderRadius: BorderRadius.circular(5),
                child: Image.asset(
                  'assets/images/paytm_image.jpg',
                  height: 60,
                  width: double.infinity,
                  fit: BoxFit.fitWidth,
                ),
              ),
            ),
            const SizedBox(
              height: 15,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 15),
              child: TextField(
                decoration: InputDecoration(
                  suffixIcon: const Icon(
                    Icons.contacts_outlined,
                    color: Colors.blue,
                  ),
                  fillColor: Colors.white,
                  hintText: 'Enter name or Mobile Number',
                  hintStyle: const TextStyle(
                    color: Colors.black,
                    fontWeight: FontWeight.bold,
                  ),
                  border: OutlineInputBorder(
                    borderSide: const BorderSide(
                      color: Colors.black,
                      width: 1,
                    ),
                    borderRadius: BorderRadius.circular(15),
                  ),
                ),
              ),
            ),
            const SizedBox(
              height: 15,
            ),
            Container(
              padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 7),
              decoration: BoxDecoration(
                color: Colors.grey.shade300,
              ),
              child: Row(
                children: const [
                  Text(
                    'My Number',
                    style: TextStyle(
                      color: Colors.black,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 8),
              child: Row(
                children: [
                  ClipOval(
                    child: Image.asset(
                      'assets/images/images.png',
                      height: 60,
                      width: 60,
                      fit: BoxFit.cover,
                    ),
                  ),
                  const SizedBox(
                    width: 7,
                  ),
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: const [
                        Text(
                          'My Number',
                          style: TextStyle(
                            color: Colors.black,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        SizedBox(
                          height: 5,
                        ),
                        Text(
                          '9573053883',
                          style: TextStyle(
                            color: Colors.black,
                            // fontWeight: FontWeight.bold,
                          ),
                        ),
                        SizedBox(
                          height: 5,
                        ),
                        Text(
                          'Recharged ₹99 on 29 Nov 2022',
                          style: TextStyle(
                            color: Colors.black,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    padding: const EdgeInsets.symmetric(
                        horizontal: 20, vertical: 10),
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(25),
                      border: Border.all(
                        color: Colors.blue,
                      ),
                    ),
                    child: const Text(
                      '₹99',
                      style: TextStyle(
                        color: Colors.blue,
                        fontWeight: FontWeight.bold,
                        fontSize: 13,
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Container(
              padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 7),
              decoration: BoxDecoration(
                color: Colors.grey.shade300,
              ),
              child: Row(
                children: const [
                  Text(
                    'My Recharges & Bills',
                    style: TextStyle(
                      color: Colors.black,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ],
              ),
            ),
            ListView.builder(
              shrinkWrap: true,
              primary: false,
              physics: const NeverScrollableScrollPhysics(),
              scrollDirection: Axis.vertical,
              itemCount: rechargeAndBillsModelList.length,
              itemBuilder: (BuildContext context, int index) {
                return RechargeAndBillsWidget(
                  rechargeAndBillsModel: rechargeAndBillsModelList[index],
                );
              },
            ),
            Container(
              padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 7),
              decoration: BoxDecoration(
                color: Colors.grey.shade300,
              ),
              child: Row(
                children: const [
                  Text(
                    'My Recharges & Bills',
                    style: TextStyle(
                      color: Colors.black,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 10),
              child: ListView.builder(
                primary: false,
                shrinkWrap: true,
                physics: const NeverScrollableScrollPhysics(),
                scrollDirection: Axis.vertical,
                itemCount: contactsProfilePicModelList.length,
                itemBuilder: (BuildContext context, int index) {
                  return ContactsProfilePic(
                    contactsProfilePicModel: contactsProfilePicModelList[index],
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class RechargeAndBillsWidget extends StatelessWidget {
  final RechargeAndBillsModel rechargeAndBillsModel;
  const RechargeAndBillsWidget({
    super.key,
    required this.rechargeAndBillsModel,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 8),
      child: Row(
        children: [
          ClipOval(
            child: Image.asset(
              rechargeAndBillsModel.image,
              height: 50,
              width: 50,
              fit: BoxFit.cover,
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
                  rechargeAndBillsModel.name,
                  style: const TextStyle(
                    color: Colors.black,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                const SizedBox(
                  height: 5,
                ),
                Text(
                  rechargeAndBillsModel.mobileNumber,
                  style: const TextStyle(
                    color: Colors.black,
                    // fontWeight: FontWeight.bold,
                  ),
                ),
                const SizedBox(
                  height: 5,
                ),
                Text(
                  'Recharged ₹${rechargeAndBillsModel.lastRechargedAmount} on ${rechargeAndBillsModel.lastRechargedDate}',
                  style: const TextStyle(
                    color: Colors.black,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ],
            ),
          ),
          Container(
            padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(25),
              border: Border.all(
                color: Colors.blue,
              ),
            ),
            child: const Text(
              'Recharge',
              style: TextStyle(
                color: Colors.blue,
                fontWeight: FontWeight.bold,
                fontSize: 13,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
