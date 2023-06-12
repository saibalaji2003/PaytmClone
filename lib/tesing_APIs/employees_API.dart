import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:paytmclone/tesing_APIs/employees_details.dart';

class DummyAPIScreen extends StatefulWidget {
  const DummyAPIScreen({super.key});

  @override
  State<DummyAPIScreen> createState() => _DummyAPIScreenState();
}

class _DummyAPIScreenState extends State<DummyAPIScreen> {
  bool loader = true;
  bool errorOccured = false;
  String errorMessage = 'Something gone wrong';
  int statusCode = 200;
  Map<String, dynamic> responser = {};

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    hittingAPI();
  }

  hittingAPI() async {
    setState(() {
      loader = true;
    });

    var responserData = await http
        .get(Uri.parse('https://dummy.restapiexample.com/api/v1/employees'));
    if (responserData.statusCode >= 200 && responserData.statusCode < 300) {
      responser = jsonDecode(responserData.body);
    } else {
      errorOccured = true;
      errorMessage = errorMessage;
    }
    statusCode = responserData.statusCode;
    loader = false;
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: loader
          ? const Center(
              child: CircularProgressIndicator(),
            )
          : errorOccured
              ? Center(
                  child: Text(errorMessage),
                )
              : ListView.builder(
                  itemCount: responser["data"].length,
                  itemBuilder: (BuildContext context, int index) {
                    return InkWell(
                      hoverColor: Colors.grey,
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => EmployeesDetailsScreen(
                              data: responser["data"][index],
                            ),
                          ),
                        );
                      },
                      child: Padding(
                        padding: const EdgeInsets.symmetric(vertical: 0),
                        child: Card(
                          child: Padding(
                            padding: const EdgeInsets.symmetric(
                                horizontal: 5, vertical: 25),
                            child: Text(
                              responser["data"][index]["employee_name"],
                              style: const TextStyle(
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ),
                        ),
                      ),
                    );
                  },
                ),
    );
  }
}
