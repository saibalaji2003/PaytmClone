import 'package:flutter/material.dart';

class CreditCardScreen extends StatefulWidget {
  const CreditCardScreen({
    super.key,
  });

  @override
  State<CreditCardScreen> createState() => _CreditCardScreenState();
}

class _CreditCardScreenState extends State<CreditCardScreen> {
  bool termsValue = false;
  bool consentTerms = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
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
        centerTitle: true,
        title: Image.asset(
          'assets/images/paytm_logo2.png',
          height: 75,
          width: 75,
        ),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 15),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text(
                'Please confirm your PAN',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 20,
                ),
              ),
              const SizedBox(
                height: 5,
              ),
              const Text(
                'We need PAN number to confirm the best offer for you',
                style: TextStyle(
                  // fontWeight: FontWeight.bold,
                  fontSize: 12,
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              Row(
                children: const [
                  Icon(
                    Icons.credit_card,
                    color: Color(0xff092C6C),
                    size: 25,
                  ),
                  SizedBox(
                    width: 5,
                  ),
                  Text(
                    'View crad benefits',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 15,
                      color: Colors.blue,
                    ),
                  ),
                  SizedBox(
                    width: 5,
                  ),
                  Icon(
                    Icons.arrow_forward_ios,
                    color: Colors.blue,
                    size: 15,
                  ),
                ],
              ),
              const SizedBox(
                height: 25,
              ),
              TextField(
                clipBehavior: Clip.none,
                decoration: InputDecoration(
                  // prefixIcon: const Icon(
                  //   Icons.search,
                  //   color: Colors.grey,
                  // ),

                  filled: true,
                  fillColor: Colors.white,
                  labelText: 'Enter PAN',
                  labelStyle: const TextStyle(
                    color: Colors.grey,
                    fontWeight: FontWeight.bold,
                    fontSize: 15,
                  ),
                  hintText: '',
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
                  suffixIcon: const Icon(
                    Icons.check_circle,
                    color: Colors.greenAccent,
                    size: 20,
                  ),
                ),
              ),
              const SizedBox(
                height: 15,
              ),
              TextField(
                clipBehavior: Clip.none,
                decoration: InputDecoration(
                  // prefixIcon: const Icon(
                  //   Icons.search,
                  //   color: Colors.grey,
                  // ),

                  filled: true,
                  fillColor: Colors.white,
                  labelText: 'Name',
                  labelStyle: const TextStyle(
                    color: Colors.grey,
                    fontWeight: FontWeight.bold,
                    fontSize: 15,
                  ),
                  hintText: '',
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
              const SizedBox(
                height: 15,
              ),
              GestureDetector(
                onTap: () {
                  if (termsValue == true) {
                    termsValue = false;
                  } else {
                    termsValue = true;
                  }
                  setState(() {});
                },
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(3),
                        border: Border.all(
                            color: termsValue ? Colors.blue : Colors.grey),
                      ),
                      child: Icon(
                        Icons.check,
                        color: termsValue ? Colors.blue : Colors.transparent,
                        size: 15,
                      ),
                    ),
                    const SizedBox(
                      width: 10,
                    ),
                    const Flexible(
                      child: Text(
                        'I agree to Terms and aconditions & Perivacy Policy and I authorize One97 Communicatins Ltd to access my credit card report from bureau to process mu credit card application',
                        style: TextStyle(
                          // fontWeight: FontWeight.bold,
                          fontSize: 12,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              const SizedBox(
                height: 15,
              ),
              GestureDetector(
                onTap: () {
                  consentTerms = !consentTerms;
                  setState(() {});
                },
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(3),
                        border: Border.all(
                            color: consentTerms ? Colors.blue : Colors.grey),
                      ),
                      child: Icon(
                        Icons.check,
                        color: consentTerms ? Colors.blue : Colors.transparent,
                        size: 15,
                      ),
                    ),
                    const SizedBox(
                      width: 10,
                    ),
                    const Flexible(
                      child: Text(
                        'I have read, understand and agree to Consent Terms and genetal TErms and Conditions',
                        style: TextStyle(
                          // fontWeight: FontWeight.bold,
                          fontSize: 12,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              const SizedBox(
                height: 25,
              ),
              Container(
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
                        fontSize: 18,
                      ),
                    ),
                  ],
                ),
              ),
              Checkbox(
                  activeColor: Colors.red,
                  value: termsValue,
                  onChanged: (value) {
                    termsValue = value ?? false;
                    setState(() {});
                  })
            ],
          ),
        ),
      ),
    );
  }
}
// 0xff092C6C