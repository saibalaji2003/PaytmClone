import 'package:flutter/material.dart';
import 'package:paytmclone/models/ticket_booking/reasons_to_book_train.dart';
import 'package:paytmclone/models/ticket_booking/travel_blogs.dart';
import 'package:paytmclone/screens/ticket_booking.dart/travel_screen.dart';

class TrainTickets extends StatelessWidget {
  const TrainTickets({super.key});

  @override
  Widget build(BuildContext context) {
    List<ReasonsToBookTrainModel> reasonsToBookTrainModelList = [
      ReasonsToBookTrainModel(
        Icon: Icons.synagogue_outlined,
        text: 'Available in 10+ languages',
      ),
      ReasonsToBookTrainModel(
        Icon: Icons.mic,
        text: 'Voice Search Feature',
      ),
      ReasonsToBookTrainModel(
        Icon: Icons.smartphone_outlined,
        text: 'Quick Book Feature',
      ),
    ];
    List<TravelBlogsContainerModel> travelBlogsContainerModelList = [
      TravelBlogsContainerModel(
        color1: const Color(0xffE5F3CF),
        color2: Colors.white,
        mainText: 'Famous Indian tourist destinations',
        containerText: 'Check Now',
        bottomText: 'Tours',
      ),
      TravelBlogsContainerModel(
        color1: const Color(0xffDFFFFC),
        color2: Colors.white,
        mainText: 'Interesting facts about Vande Bharat Express',
        containerText: 'Read More',
        bottomText: 'Facts',
      ),
      TravelBlogsContainerModel(
        color1: const Color(0xffF8E8CE),
        color2: Colors.white,
        mainText: "Every train booking feature you'd ever need",
        containerText: 'Read More',
        bottomText: 'Features',
      ),
    ];

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
          padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 15),
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(5),
            border: Border.all(color: Colors.grey.shade300),
          ),
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: const [
                  Text(
                    'BY STATION',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      color: Colors.black,
                      fontSize: 15,
                    ),
                  ),
                  Text(
                    'BY TRAIN',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      color: Colors.black,
                      fontSize: 15,
                    ),
                  ),
                ],
              ),
              const SizedBox(
                height: 15,
              ),
              Row(
                children: [
                  Container(
                    padding:
                        const EdgeInsets.symmetric(horizontal: 20, vertical: 5),
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(5),
                      border: Border.all(color: Colors.grey.shade300),
                    ),
                    child: const Text(
                      'WL',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        color: Colors.black,
                        fontSize: 15,
                      ),
                    ),
                  ),
                  const SizedBox(
                    width: 10,
                  ),
                  const Text(
                    'Warangal',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      color: Colors.black,
                      fontSize: 15,
                    ),
                  ),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(right: 5),
                    child: Container(
                      padding: const EdgeInsets.symmetric(
                          horizontal: 3, vertical: 7),
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(5),
                        border: Border.all(color: Colors.grey.shade300),
                      ),
                      child: const Icon(
                        Icons.arrow_downward,
                        size: 20,
                        color: Colors.black,
                      ),
                    ),
                  ),
                ],
              ),
              Row(
                children: [
                  Container(
                    padding:
                        const EdgeInsets.symmetric(horizontal: 20, vertical: 5),
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(5),
                      border: Border.all(color: Colors.grey.shade300),
                    ),
                    child: const Text(
                      'SC',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        color: Colors.black,
                        fontSize: 15,
                      ),
                    ),
                  ),
                  const SizedBox(
                    width: 10,
                  ),
                  const Text(
                    'Secunderabad Jn',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      color: Colors.black,
                      fontSize: 15,
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
        const SizedBox(
          height: 15,
        ),
        Container(
          padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 20),
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(5),
            border: Border.all(color: Colors.grey.shade300),
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text(
                'Departure Date',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 13,
                  color: Colors.grey,
                ),
              ),
              const SizedBox(
                height: 5,
              ),
              Row(
                children: [
                  const Text(
                    '20',
                    style: TextStyle(
                      // fontWeight: FontWeight.bold,
                      fontSize: 40,
                    ),
                  ),
                  const SizedBox(
                    width: 3,
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: const [
                      Text(
                        'April',
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 12,
                        ),
                      ),
                      Text(
                        'Thursday',
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 15,
                          color: Colors.grey,
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(
                    width: 5,
                  ),
                  const Expanded(
                    child: Icon(
                      Icons.calendar_month,
                      color: Colors.grey,
                    ),
                  ),
                  const SizedBox(
                    width: 5,
                  ),
                  const TrainsDepartureDateContainer(
                    date: '20 Apr',
                    day: 'Today',
                  ),
                  const SizedBox(
                    width: 2,
                  ),
                  const TrainsDepartureDateContainer(
                    date: '21 Apr',
                    day: 'Fri',
                    containerBorderColor: false,
                  ),
                  const SizedBox(
                    width: 2,
                  ),
                  const TrainsDepartureDateContainer(
                    date: '22 Apr',
                    day: 'Sat',
                    containerBorderColor: false,
                  ),
                ],
              ),
              const SizedBox(
                height: 15,
              ),
              Container(
                height: 0.5,
                width: double.infinity,
                color: Colors.grey,
              ),
              const SizedBox(
                height: 10,
              ),
              Row(
                children: const [
                  SpecialFaresContainer(
                    text: 'AC & Non-AC',
                  ),
                  SizedBox(
                    width: 5,
                  ),
                  SpecialFaresContainer(
                    text: 'AC only',
                  ),
                  SizedBox(
                    width: 5,
                  ),
                  SpecialFaresContainer(
                    text: 'Non-AC only',
                  ),
                ],
              ),
            ],
          ),
        ),
        const SizedBox(
          height: 15,
        ),
        Container(
          padding: const EdgeInsets.symmetric(vertical: 17),
          decoration: BoxDecoration(
            color: Colors.blue,
            borderRadius: BorderRadius.circular(5),
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: const [
              Text(
                'Search Trains',
                style: TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                  fontSize: 18,
                ),
              ),
            ],
          ),
        ),
        const SizedBox(
          height: 10,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: const [
            Text(
              'IRCTC Authorised Partner',
              style: TextStyle(
                  // fontWeight: FontWeight.bold,
                  fontSize: 13,
                  color: Color(0xff092C6C)),
            ),
          ],
        ),
        const SizedBox(
          height: 15,
        ),
        Container(
          padding: const EdgeInsets.symmetric(vertical: 15),
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(5),
            border: Border.all(color: Colors.grey.shade300),
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: const [
              CheckPNRContainer(
                icon: Icons.check,
                text: 'Check PNR',
              ),
              CheckPNRContainer(
                icon: Icons.train_outlined,
                text: 'Train Status',
              ),
              CheckPNRContainer(
                icon: Icons.calendar_month_outlined,
                text: 'Train Calender',
              ),
              CheckPNRContainer(
                icon: Icons.food_bank_outlined,
                text: 'Order Food',
              ),
            ],
          ),
        ),
        const SizedBox(
          height: 10,
        ),
        const Text(
          'Reasons to book train tickets',
          style: TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 20,
          ),
        ),
        const SizedBox(
          height: 10,
        ),
        SizedBox(
          height: 205,
          width: double.infinity,
          child: ListView.builder(
            primary: false,
            shrinkWrap: true,
            scrollDirection: Axis.horizontal,
            itemCount: reasonsToBookTrainModelList.length,
            itemBuilder: (BuildContext context, int index) {
              return ReasonsToBookTrainsTickets(
                reasonsToBookTrainModel: reasonsToBookTrainModelList[index],
              );
            },
          ),
        ),
        const SizedBox(
          height: 10,
        ),
        const Text(
          'Travel Blogs',
          style: TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 20,
          ),
        ),
        const SizedBox(
          height: 15,
        ),
        SizedBox(
          height: 215,
          width: double.infinity,
          child: ListView.builder(
            primary: false,
            shrinkWrap: true,
            scrollDirection: Axis.horizontal,
            itemCount: travelBlogsContainerModelList.length,
            itemBuilder: (BuildContext context, int index) {
              return TravelBlogsContainerWidget(
                travelBlogsContainerModel: travelBlogsContainerModelList[index],
              );
            },
          ),
        ),
      ],
    );
  }
}

class TravelBlogsContainerWidget extends StatelessWidget {
  final TravelBlogsContainerModel travelBlogsContainerModel;
  const TravelBlogsContainerWidget({
    super.key,
    required this.travelBlogsContainerModel,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 3),
      child: Column(
        children: [
          Container(
            padding: const EdgeInsets.symmetric(vertical: 15, horizontal: 5),
            height: 170,
            width: 140,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(15),
              gradient: LinearGradient(
                colors: [
                  travelBlogsContainerModel.color1,
                  travelBlogsContainerModel.color2
                ],
                begin: Alignment.bottomCenter,
                end: Alignment.topCenter,
              ),
            ),
            child: Column(
              children: [
                Text(
                  travelBlogsContainerModel.mainText,
                  textAlign: TextAlign.center,
                  style: const TextStyle(
                    color: Color(0xff092C6C),
                    fontWeight: FontWeight.bold,
                    fontSize: 21,
                  ),
                ),
                const Spacer(),
                Container(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 10, vertical: 4),
                  decoration: BoxDecoration(
                    color: const Color(0xff092C6C),
                    borderRadius: BorderRadius.circular(25),
                  ),
                  child: Text(
                    travelBlogsContainerModel.containerText,
                    style: const TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                      fontSize: 13,
                    ),
                  ),
                ),
              ],
            ),
          ),
          const SizedBox(
            height: 13,
          ),
          Text(
            travelBlogsContainerModel.bottomText,
            style: const TextStyle(
              fontWeight: FontWeight.bold,
              color: Colors.grey,
            ),
          ),
        ],
      ),
    );
  }
}

class ReasonsToBookTrainsTickets extends StatelessWidget {
  final ReasonsToBookTrainModel reasonsToBookTrainModel;
  const ReasonsToBookTrainsTickets({
    super.key,
    required this.reasonsToBookTrainModel,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 3),
      child: Column(
        children: [
          Container(
            height: 175,
            width: 135,
            padding: const EdgeInsets.symmetric(vertical: 15, horizontal: 10),
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(10),
              border: Border.all(color: Colors.grey.shade300),
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Container(
                  padding: const EdgeInsets.all(5),
                  height: 95,
                  width: 95,
                  decoration: const BoxDecoration(
                    color: Color(0xffEAFEFC),
                    shape: BoxShape.circle,
                  ),
                  child: Icon(
                    reasonsToBookTrainModel.Icon,
                    size: 60,
                    color: Colors.blue,
                  ),
                ),
                const SizedBox(
                  height: 10,
                ),
                Flexible(
                  child: Text(
                    reasonsToBookTrainModel.text,
                    textAlign: TextAlign.center,
                    style: const TextStyle(
                      color: Color(0xff092C6C),
                      fontWeight: FontWeight.bold,
                      fontSize: 16,
                    ),
                  ),
                ),
              ],
            ),
          ),
          const SizedBox(
            height: 10,
          ),
          const Text(
            'Know More',
            style: TextStyle(
              fontWeight: FontWeight.bold,
              color: Colors.grey,
            ),
          ),
        ],
      ),
    );
  }
}

class CheckPNRContainer extends StatelessWidget {
  final IconData icon;
  final String text;

  const CheckPNRContainer({
    required this.icon,
    required this.text,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          padding: const EdgeInsets.all(5),
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(5),
            border: Border.all(color: Colors.grey.shade300),
          ),
          child: Icon(
            icon,
            color: const Color(0xff092C6C),
            size: 25,
          ),
        ),
        const SizedBox(
          height: 10,
        ),
        Text(
          text,
          style: const TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 13,
            color: Colors.grey,
          ),
        ),
      ],
    );
  }
}

class TrainsDepartureDateContainer extends StatelessWidget {
  final String date;
  final String day;
  final bool containerBorderColor;

  const TrainsDepartureDateContainer({
    required this.date,
    required this.day,
    this.containerBorderColor = true,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 13, vertical: 5),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(5),
        border: Border.all(
          color: containerBorderColor ? Colors.blue : Colors.grey,
        ),
      ),
      child: Column(
        children: [
          Text(
            date,
            style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 12,
              color: containerBorderColor ? Colors.black : Colors.grey,
            ),
          ),
          const SizedBox(
            height: 3,
          ),
          Text(
            day,
            style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 12,
              color: containerBorderColor ? Colors.black : Colors.grey,
            ),
          ),
        ],
      ),
    );
  }
}
