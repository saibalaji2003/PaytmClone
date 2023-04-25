import 'package:flutter/material.dart';
import 'package:paytmclone/models/ticket_booking/bank_offers_model.dart';
import 'package:paytmclone/models/ticket_booking/types_of_tickets.dart';
import 'package:paytmclone/screens/ticket_booking.dart/bus_tickets.dart';
import 'package:paytmclone/screens/ticket_booking.dart/flights_tickets.dart';
import 'package:paytmclone/screens/ticket_booking.dart/train_tickets.dart';

class TravelScreen extends StatefulWidget {
  const TravelScreen({super.key});

  @override
  State<TravelScreen> createState() => _TravelScreenState();
}

class _TravelScreenState extends State<TravelScreen> {
  int typeOfTicket = 0;
  changeTypeOfTicket(int index) {
    typeOfTicket = index;
    debugPrint(typeOfTicket.toString());
    setState(() {});
  }

  List<TypesOfTicketsModel> typesOfTicketsModelList = [
    TypesOfTicketsModel(
      icon: Icons.flight,
      text: 'Flights',
    ),
    TypesOfTicketsModel(
      icon: Icons.directions_bus_filled_outlined,
      text: 'Bus',
    ),
    TypesOfTicketsModel(
      icon: Icons.train_outlined,
      text: 'Trains',
    ),
    TypesOfTicketsModel(
      icon: Icons.business_sharp,
      text: 'Hotels',
    ),
    TypesOfTicketsModel(
      icon: Icons.flight_takeoff_sharp,
      text: 'Intl. Flights',
    ),
    TypesOfTicketsModel(
      icon: Icons.local_offer_outlined,
      text: 'Offers',
    ),
    TypesOfTicketsModel(
      icon: Icons.tram_outlined,
      text: 'Metro',
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      bottomNavigationBar: typeOfTicket == 1
          ? Padding(
              padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 15),
              child: Container(
                padding: const EdgeInsets.symmetric(vertical: 15),
                decoration: BoxDecoration(
                  color: Colors.blue,
                  borderRadius: BorderRadius.circular(5),
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: const [
                    Text(
                      'Search Buses',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        color: Colors.white,
                        fontSize: 17,
                      ),
                    ),
                  ],
                ),
              ),
            )
          : null,
      body: SingleChildScrollView(
        child: Stack(
          children: [
            Column(
              children: [
                Container(
                  color: const Color(0xffE1F5FE),
                  height: 350,
                ),
              ],
            ),
            Padding(
              padding: const EdgeInsets.only(left: 15, right: 15, top: 40),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
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
                        'assets/images/paytm_travel1.png',
                        height: 100,
                        width: 100,
                      ),
                      const SizedBox(),
                    ],
                  ),
                  SizedBox(
                    height: 60,
                    width: double.infinity,
                    child: ListView.builder(
                      // physics: const BouncingScrollPhysics(),
                      scrollDirection: Axis.horizontal,
                      itemCount: typesOfTicketsModelList.length,
                      itemBuilder: (BuildContext context, int index) {
                        return GestureDetector(
                          onTap: () {
                            changeTypeOfTicket(index);
                          },
                          child: TypesOfTicketsWidget(
                            typeOfTicket: typeOfTicket,
                            index: index,
                            typesOfTicketsModel: typesOfTicketsModelList[index],
                          ),
                        );
                      },
                    ),
                  ),
                  const SizedBox(
                    height: 15,
                  ),
                  typeOfTicket == 0
                      ? const FlightTickets()
                      : typeOfTicket == 1
                          ? const BusTickets()
                          : typeOfTicket == 2
                              ? const TrainTickets()
                              : typeOfTicket == 4
                                  ? const FlightTickets()
                                  : const BusTickets(),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class BankOffersWidget extends StatelessWidget {
  final BankOffersModel bankOffersModel;
  const BankOffersWidget({
    super.key,
    required this.bankOffersModel,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 5),
      child: Column(
        children: [
          Container(
            width: 170,
            padding: const EdgeInsets.all(15),
            decoration: BoxDecoration(
              color: bankOffersModel.color,
              borderRadius: BorderRadius.circular(15),
            ),
            child: Column(
              children: [
                const Text(
                  'Flat',
                  style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                    fontSize: 13,
                  ),
                ),
                Text(
                  bankOffersModel.offer,
                  style: const TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                    fontSize: 28,
                  ),
                ),
                const SizedBox(
                  height: 10,
                ),
                Container(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 10, vertical: 5),
                  decoration: BoxDecoration(
                    color: Colors.black,
                    borderRadius: BorderRadius.circular(25),
                  ),
                  child: const Text(
                    'Instant Discount',
                    style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                      fontSize: 10,
                    ),
                  ),
                ),
                Text(
                  'on ${bankOffersModel.flightType} Flights',
                  style: const TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                    fontSize: 10,
                  ),
                ),
                const SizedBox(
                  height: 10,
                ),
                Text(
                  bankOffersModel.bottomText1,
                  style: const TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                    fontSize: 10,
                  ),
                ),
                Text(
                  bankOffersModel.bottomText2,
                  style: const TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                    fontSize: 10,
                  ),
                ),
                const SizedBox(
                  height: 5,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: const [
                    Text(
                      'T&C Apply',
                      style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                        fontSize: 7,
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
          const SizedBox(
            height: 10,
          ),
          Text(
            bankOffersModel.promoCode,
            style: const TextStyle(
              color: Colors.black,
              fontWeight: FontWeight.bold,
              fontSize: 15,
            ),
          ),
        ],
      ),
    );
  }
}

class SpecialFaresContainer extends StatelessWidget {
  final String text;

  const SpecialFaresContainer({
    required this.text,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(vertical: 7, horizontal: 10),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(15),
        border: Border.all(color: Colors.grey.shade300),
      ),
      child: Text(
        text,
        style: const TextStyle(
          fontWeight: FontWeight.bold,
          fontSize: 12,
          color: Colors.grey,
        ),
      ),
    );
  }
}

class TypesOfTicketsWidget extends StatelessWidget {
  final int typeOfTicket;
  final TypesOfTicketsModel typesOfTicketsModel;
  final int index;

  const TypesOfTicketsWidget({
    required this.typesOfTicketsModel,
    super.key,
    required this.index,
    required this.typeOfTicket,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 4),
      decoration: BoxDecoration(
        border: Border(
          bottom: typeOfTicket == index
              ? const BorderSide(color: Colors.blue, width: 5)
              : BorderSide.none,
        ),
      ),
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 10),
        child: Column(
          children: [
            Icon(
              typesOfTicketsModel.icon,
              color: const Color(0xff092C6C),
              size: 27,
            ),
            const SizedBox(
              height: 5,
            ),
            Text(
              typesOfTicketsModel.text,
              style: const TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 15,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
