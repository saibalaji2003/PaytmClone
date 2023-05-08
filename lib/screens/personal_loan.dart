import 'package:flutter/material.dart';

class PersonalLoanScreen extends StatefulWidget {
  const PersonalLoanScreen({super.key});

  @override
  State<PersonalLoanScreen> createState() => _PersonalLoanScreenState();
}

class _PersonalLoanScreenState extends State<PersonalLoanScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 5, vertical: 5),
        child: Container(
          // alignment: Alignment.center,
          padding: const EdgeInsets.symmetric(vertical: 15),
          decoration: BoxDecoration(
            color: Colors.blue,
            borderRadius: BorderRadius.circular(5),
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: const [
              Text(
                'Confirm',
                style: TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                  fontSize: 13,
                ),
              ),
            ],
          ),
        ),
      ),
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              alignment: Alignment.topCenter,
              height: 175,
              width: double.infinity,
              color: const Color(0xffF4F8FB),
              child: Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 15),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
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
                        Image.asset(
                          'assets/images/paytm_logo2.png',
                          height: 90,
                          width: 90,
                        ),
                        const Text(
                          'Help',
                          style: TextStyle(
                            color: Colors.blue,
                            fontWeight: FontWeight.bold,
                            fontSize: 13,
                          ),
                        ),
                      ],
                    ),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Column(
                        children: const [
                          Icon(
                            Icons.check_circle,
                            color: Colors.greenAccent,
                            size: 20,
                          ),
                          SizedBox(
                            height: 7,
                          ),
                          Text(
                            'Basic',
                            style: TextStyle(
                              color: Colors.black,
                              // fontWeight: FontWeight.bold,
                              fontSize: 14,
                            ),
                          ),
                          Text(
                            'Details',
                            style: TextStyle(
                              color: Colors.black,
                              // fontWeight: FontWeight.bold,
                              fontSize: 14,
                            ),
                          ),
                        ],
                      ),
                      Column(
                        children: const [
                          Icon(
                            Icons.check_circle,
                            color: Colors.greenAccent,
                            size: 20,
                          ),
                          SizedBox(
                            height: 7,
                          ),
                          Text(
                            'Occupation',
                            style: TextStyle(
                              color: Colors.black,
                              // fontWeight: FontWeight.bold,
                              fontSize: 14,
                            ),
                          ),
                          Text(
                            'Details',
                            style: TextStyle(
                              color: Colors.black,
                              // fontWeight: FontWeight.bold,
                              fontSize: 14,
                            ),
                          ),
                        ],
                      ),
                      Column(
                        children: const [
                          Icon(
                            Icons.check_circle,
                            color: Colors.greenAccent,
                            size: 20,
                          ),
                          SizedBox(
                            height: 7,
                          ),
                          Text(
                            'Loan ',
                            style: TextStyle(
                              color: Colors.black,
                              // fontWeight: FontWeight.bold,
                              fontSize: 14,
                            ),
                          ),
                          Text(
                            'Offer',
                            style: TextStyle(
                              color: Colors.black,
                              // fontWeight: FontWeight.bold,
                              fontSize: 14,
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ],
              ),
            ),
            const SizedBox(
              height: 15,
            ),
            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 15),
              child: Text(
                'Hey Sai, please provide below details',
                style: TextStyle(
                  color: Colors.black,
                  fontWeight: FontWeight.bold,
                  fontSize: 17,
                ),
              ),
            ),
            const SizedBox(
              height: 15,
            ),
            const PersonalLoanTextfield(
              labelText: 'Select Occupation Type',
              hinttext: '',
            ),
            const SizedBox(
              height: 15,
            ),
            const PersonalLoanTextfield(
              labelText: 'Company Name',
              hinttext: '',
            ),
            const SizedBox(
              height: 15,
            ),
            const PersonalLoanTextfield(
              labelText: 'Yearly Income',
              hinttext: '',
            ),
            const SizedBox(
              height: 15,
            ),
            const PersonalLoanTextfield(
              labelText: 'Home Address Pincode',
              hinttext: '',
            ),
          ],
        ),
      ),
    );
  }
}

class PersonalLoanTextfield extends StatelessWidget {
  final String labelText;
  final String hinttext;

  const PersonalLoanTextfield({
    required this.labelText,
    required this.hinttext,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 15),
      child: TextField(
        clipBehavior: Clip.none,
        decoration: InputDecoration(
          // prefixIcon: const Icon(
          //   Icons.search,
          //   color: Colors.grey,
          // ),

          filled: true,
          fillColor: const Color.fromRGBO(255, 255, 255, 1),
          labelText: labelText,
          labelStyle: const TextStyle(
            color: Colors.grey,
            fontWeight: FontWeight.bold,
            fontSize: 14,
          ),
          hintText: hinttext,
          hintStyle: const TextStyle(
            color: Colors.black,
            fontWeight: FontWeight.bold,
            fontSize: 15,
          ),
          contentPadding:
              const EdgeInsets.symmetric(horizontal: 15, vertical: 0),
          // border: OutlineInputBorder(
          //   borderSide: BorderSide(
          //     color: Colors.grey.shade300,
          //     width: 0.5,
          //   ),
          //   borderRadius: BorderRadius.circular(15),
          // ),

          enabledBorder: OutlineInputBorder(
            borderSide: const BorderSide(
              color: Colors.grey,
              width: 0.5,
            ),
            borderRadius: BorderRadius.circular(10),
          ),
          focusedBorder: OutlineInputBorder(
            borderSide: const BorderSide(
              color: Color(0xff88E8F4),
              width: 1,
            ),
            borderRadius: BorderRadius.circular(10),
          ),
        ),
      ),
    );
  }
}
