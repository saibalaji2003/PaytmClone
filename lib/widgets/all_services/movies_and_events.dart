import 'package:flutter/material.dart';
import 'package:paytmclone/models/cashback_points.dart';
import 'package:paytmclone/screens/cashback_and_offers.dart';

class Screen6 extends StatelessWidget {
  const Screen6({super.key});

  @override
  Widget build(BuildContext context) {
    List<CashbackPointsModel> moviesAndEventsList = [
      CashbackPointsModel(
        icon: Icons.move_to_inbox_outlined,
        text1: 'Movie Tickets',
        text2: '',
        containerText: '',
        isContainerShown: false,
      ),
      CashbackPointsModel(
        icon: Icons.event_note_rounded,
        text1: 'Event Tickets',
        text2: '',
        containerText: '',
        isContainerShown: false,
      ),
      CashbackPointsModel(
        icon: Icons.airplane_ticket_outlined,
        text1: 'Book Tickets',
        text2: '',
        containerText: '',
        isContainerShown: false,
      ),
      CashbackPointsModel(
        icon: Icons.movie_filter_outlined,
        text1: 'Upcoming',
        text2: 'Movies',
        containerText: 'Set Alerts',
        isContainerShown: true,
      ),
    ];
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.all(10.0),
          child: GridView.builder(
            shrinkWrap: true,
            primary: false,
            gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 3,
            ),
            itemCount: moviesAndEventsList.length,
            itemBuilder: (BuildContext context, int index) {
              return CashbackPointsWidget(
                cashbackPointsModel: moviesAndEventsList[index],
              );
            },
          ),
        ),
      ],
    );
  }
}
