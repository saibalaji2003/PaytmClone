// import 'package:flutter/material.dart';
// import 'package:flutter_vibrate/flutter_vibrate.dart';
// import 'package:paytmclone/main.dart';

// class VibrationWidget extends StatefulWidget {
//   const VibrationWidget({super.key});

//   @override
//   State<VibrationWidget> createState() => _VibrationWidgetState();
// }

// class _MyAppState extends State<MyApp> {
//   bool _canVibrate = true;
//   final Iterable<Duration> pauses = [
//     const Duration(milliseconds: 500),
//     const Duration(milliseconds: 1000),
//     const Duration(milliseconds: 500),
//   ];

//   @override
//   void initState() {
//     super.initState();
//     _init();
//   }

//   Future<void> _init() async {
//     bool canVibrate = await Vibrate.canVibrate;
//     setState(() {
//       _canVibrate = canVibrate;
//       _canVibrate
//           ? debugPrint('This device can vibrate')
//           : debugPrint('This device cannot vibrate');
//     });
//   }
// }
