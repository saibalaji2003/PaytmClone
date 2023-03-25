import 'package:flutter/material.dart';
import 'package:paytmclone/common_widgets/contacts_profilepic_widget.dart';
import 'package:paytmclone/models/contacts_profilepic.dart';
import 'package:paytmclone/models/recents_model.dart';
import 'package:paytmclone/widgets/recents_money_transfer.dart';

class MobileOrContactScreen extends StatelessWidget {
  const MobileOrContactScreen({super.key});

  @override
  Widget build(BuildContext context) {
    List<RecentsModel> recentsModelList = [
      RecentsModel(
        // image:
        //     'https://cdn.pixabay.com/photo/2017/03/24/07/28/twitter-2170426__340.png',
        text1: 'Akhil Dada',
        text2: '',
      ),
      RecentsModel(
        image:
            'https://cdn.pixabay.com/photo/2016/12/09/04/02/presents-1893642__340.jpg',
        text1: 'Arnold',
        text2: '',
      ),
      RecentsModel(
        // image:
        //     'https://cdn.pixabay.com/photo/2015/05/26/09/37/paypal-784404_960_720.png',
        text1: 'CBum',
        text2: '',
      ),
      RecentsModel(
        // image:
        //     'https://cdn.pixabay.com/photo/2017/03/24/07/28/twitter-2170426__340.png',
        text1: 'Ronnie',
        text2: 'Colemon',
      ),
      RecentsModel(
        image:
            'https://cdn.pixabay.com/photo/2017/03/24/07/28/twitter-2170426__340.png',
        text1: 'Chris',
        text2: 'Evans',
      ),
      RecentsModel(
        // image:
        //     'https://cdn.pixabay.com/photo/2017/03/24/07/28/twitter-2170426__340.png',
        text1: 'Micheal',
        text2: 'Jordon',
      ),
      RecentsModel(
        // image:
        //     'https://cdn.pixabay.com/photo/2017/03/24/07/28/twitter-2170426__340.png',
        text1: 'Lebron',
        text2: 'James',
      ),
      RecentsModel(
        // image:
        //     'https://cdn.pixabay.com/photo/2017/03/24/07/28/twitter-2170426__340.png',
        text1: 'Leonel',
        text2: 'Messi',
      ),
      RecentsModel(
        image:
            'https://cdn.pixabay.com/photo/2016/11/19/03/08/youtube-1837872__340.png',
        text1: 'Ronaldo',
        text2: '',
      ),
      RecentsModel(
        image:
            'https://cdn.pixabay.com/photo/2016/12/26/18/33/logo-1932539__340.png',
        text1: 'Neymar',
        text2: '',
      ),
      RecentsModel(
        image:
            'https://cdn.pixabay.com/photo/2016/04/01/00/22/cat-1298141__340.png',
        text1: 'Virat',
        text2: 'Kohli',
      ),
      RecentsModel(
        // image:
        //     'https://cdn.pixabay.com/photo/2017/03/24/07/28/twitter-2170426__340.png',
        text1: 'Mike',
        text2: 'Tyson',
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
    ];
    return GestureDetector(
      onPanUpdate: (details) {
        // Swiping in right direction.
        if (details.delta.dy > 0) {
          debugPrint('Swipe down');

          Navigator.pop(context);
        }

        // Swiping in left direction.
        if (details.delta.dy < 0) {
          debugPrint('Swipe up');
          // Navigator.pop(context);
        }
      },
      child: Scaffold(
        body: SafeArea(
          child: SingleChildScrollView(
            primary: true,
            child: Padding(
              padding: const EdgeInsets.all(10.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      const Text(
                        'UPI Money Transfer',
                        style: TextStyle(
                          color: Colors.black,
                          fontWeight: FontWeight.bold,
                          fontSize: 25,
                        ),
                      ),
                      Container(
                        padding: const EdgeInsets.all(3),
                        decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          color: Colors.grey.shade600,
                        ),
                        child: const Padding(
                          padding: EdgeInsets.symmetric(horizontal: 10),
                          child: Icon(
                            Icons.clear_outlined,
                            color: Colors.white,
                            size: 15,
                          ),
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: 5,
                  ),
                  Text(
                    'Enter New Mobile / UPI Number or Search Name',
                    style: TextStyle(
                      color: Colors.grey.shade600,
                      fontWeight: FontWeight.bold,
                      fontSize: 13,
                    ),
                  ),
                  const SizedBox(
                    height: 15,
                  ),
                  Row(
                    children: [
                      Expanded(
                        child: TextField(
                          decoration: InputDecoration(
                            prefixIcon: const Icon(
                              Icons.search,
                              color: Colors.blue,
                            ),
                            suffixIcon: const Icon(
                              Icons.dialpad,
                              color: Colors.blue,
                            ),
                            fillColor: Colors.white,
                            hintText: 'Enter name or Mobile Number',
                            hintStyle: const TextStyle(
                              color: Colors.grey,
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
                        width: 10,
                      ),
                      Column(
                        children: const [
                          Icon(
                            Icons.contact_page,
                            color: Colors.blue,
                            size: 28,
                          ),
                          SizedBox(
                            height: 5,
                          ),
                          Text(
                            'Contacts',
                            style: TextStyle(
                              color: Colors.blue,
                              fontWeight: FontWeight.bold,
                              fontSize: 10,
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: 15,
                  ),
                  Container(
                    padding: const EdgeInsets.all(10),
                    decoration: BoxDecoration(
                      color: const Color(0xffF5F8FD),
                      borderRadius: BorderRadius.circular(15),
                      border: Border.all(color: Colors.grey.shade300),
                    ),
                    child: Row(
                      children: [
                        Container(
                          padding: const EdgeInsets.all(5),
                          decoration: const BoxDecoration(
                            color: Colors.white,
                            shape: BoxShape.circle,
                          ),
                          child: Container(
                            padding: const EdgeInsets.all(3),
                            decoration: const BoxDecoration(
                              color: Colors.grey,
                              shape: BoxShape.circle,
                            ),
                            child: const Icon(
                              Icons.pin_drop_outlined,
                              size: 15,
                              color: Colors.white,
                            ),
                          ),
                        ),
                        const SizedBox(
                          width: 7,
                        ),
                        Expanded(
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Row(
                                children: [
                                  const Text(
                                    'PIn Frequent Payments',
                                    style: TextStyle(
                                      color: Colors.black,
                                      fontWeight: FontWeight.bold,
                                      fontSize: 12,
                                    ),
                                  ),
                                  const SizedBox(
                                    width: 7,
                                  ),
                                  Container(
                                    padding: const EdgeInsets.symmetric(
                                        horizontal: 8, vertical: 2),
                                    decoration: BoxDecoration(
                                      color: const Color(0xffFFD766),
                                      borderRadius: BorderRadius.circular(5),
                                    ),
                                    child: const Text(
                                      'New',
                                      style: TextStyle(
                                        color: Colors.black,
                                        fontWeight: FontWeight.bold,
                                        fontSize: 11,
                                      ),
                                    ),
                                  )
                                ],
                              ),
                              const SizedBox(
                                height: 1,
                              ),
                              const Text(
                                'Long press on icons to pin recent payments',
                                style: TextStyle(
                                  color: Colors.black,
                                  // fontWeight: FontWeight.bold,
                                  fontSize: 12,
                                ),
                              ),
                            ],
                          ),
                        ),
                        const Icon(
                          Icons.clear,
                          color: Colors.black,
                          size: 20,
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  const Text(
                    'Recents',
                    style: TextStyle(
                      color: Colors.black,
                      fontWeight: FontWeight.bold,
                      fontSize: 17,
                    ),
                  ),
                  const SizedBox(
                    height: 15,
                  ),
                  GridView.builder(
                    primary: false,
                    shrinkWrap: true,
                    physics: const NeverScrollableScrollPhysics(),
                    gridDelegate:
                        const SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 4,
                    ),
                    itemCount: recentsModelList.length,
                    itemBuilder: (BuildContext context, int index) {
                      return index == 11
                          ? GestureDetector(
                              onTap: () {
                                debugPrint('Pressed on See All');
                              },
                              child: Column(
                                children: [
                                  Container(
                                    height: 50,
                                    width: 50,
                                    decoration: BoxDecoration(
                                      color: Colors.blue.withOpacity(0.3),
                                      shape: BoxShape.circle,
                                    ),
                                    child: const Icon(
                                      Icons.arrow_forward,
                                      color: Colors.blue,
                                    ),
                                  ),
                                  const SizedBox(
                                    height: 5,
                                  ),
                                  const Text(
                                    'See All',
                                    style: TextStyle(
                                      color: Colors.blue,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  )
                                ],
                              ),
                            )
                          : RecentsMoneyTransfer(
                              recentsModel: recentsModelList[index]);
                    },
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  Container(
                    padding: const EdgeInsets.symmetric(
                      horizontal: 15,
                      vertical: 10,
                    ),
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(15),
                      border: Border.all(
                        color: Colors.black,
                      ),
                    ),
                    child: Row(
                      children: [
                        Image.asset(
                          'assets/images/paytm_logo.png',
                          fit: BoxFit.cover,
                          height: 40,
                          width: 40,
                        ),
                        const SizedBox(
                          width: 15,
                        ),
                        Expanded(
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: const [
                              Text(
                                'Do 5 Money Transfers',
                                style: TextStyle(
                                  color: Colors.black,
                                  // fontWeight: FontWeight.bold,
                                  fontSize: 15,
                                ),
                              ),
                              Text(
                                'Get ₹25 Cashback',
                                style: TextStyle(
                                  color: Colors.black,
                                  fontWeight: FontWeight.bold,
                                  fontSize: 17,
                                ),
                              ),
                            ],
                          ),
                        ),
                        const Text(
                          'Activate Offer',
                          style: TextStyle(
                            color: Colors.blue,
                            fontWeight: FontWeight.bold,
                            fontSize: 15,
                          ),
                        ),
                        const SizedBox(
                          width: 3,
                        ),
                        const Icon(
                          Icons.arrow_forward_ios,
                          color: Colors.blue,
                          size: 15,
                        )
                      ],
                    ),
                  ),
                  const SizedBox(
                    height: 25,
                  ),
                  const Text(
                    'Contacts',
                    style: TextStyle(
                      color: Colors.black,
                      fontWeight: FontWeight.bold,
                      fontSize: 17,
                    ),
                  ),
                  const SizedBox(
                    height: 15,
                  ),
                  ListView.builder(
                    primary: false,
                    shrinkWrap: true,
                    physics: const NeverScrollableScrollPhysics(),
                    scrollDirection: Axis.vertical,
                    itemCount: contactsProfilePicModelList.length,
                    itemBuilder: (BuildContext context, int index) {
                      return ContactsProfilePic(
                        contactsProfilePicModel:
                            contactsProfilePicModelList[index],
                      );
                    },
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
