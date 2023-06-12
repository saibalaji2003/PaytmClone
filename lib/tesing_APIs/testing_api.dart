import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:paytmclone/tesing_APIs/separate_product_byID.dart';

class TestingAPIScreen extends StatefulWidget {
  const TestingAPIScreen({super.key});

  @override
  State<TestingAPIScreen> createState() => _TestingAPIScreenState();
}

class _TestingAPIScreenState extends State<TestingAPIScreen> {
  bool isLoading = true;
  bool isErrorOccured = false;
  String errorMessage = '';
  int statusCode = 200;
  Map<String, dynamic> response = {};
  @override
  void initState() {
    super.initState();
    print('initcalled');
    hittingAPI();
  }

  @override
  void dispose() {
    print('disposecalled');
    super.dispose();
  }

  hittingAPI() async {
    setState(() {
      isLoading = true;
    });

    var responseData =
        await http.get(Uri.parse('https://dummyjson.com/products'));
    if (responseData.statusCode >= 200 && responseData.statusCode < 300) {
      response = jsonDecode(responseData.body);
      print('response statuscode ${responseData.statusCode}');
      print('response length= ${response["products"].length}');
    } else {
      isErrorOccured = true;
      errorMessage = responseData.reasonPhrase ?? "Something went wrong";
    }
    statusCode = responseData.statusCode;
    isLoading = false;
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: isLoading
          ? const Center(child: CircularProgressIndicator())
          : isErrorOccured
              ? Center(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text('$statusCode'),
                      Text(errorMessage),
                    ],
                  ),
                )
              : ListView.builder(
                  itemCount: response["products"].length,
                  itemBuilder: (BuildContext context, int index) {
                    return Material(
                      animationDuration: const Duration(milliseconds: 200),
                      color: Colors.transparent,
                      child: InkWell(
                        onTap: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => SeparateProductByIDScreen(
                                productID: response["products"][index]["id"],
                              ),
                            ),
                          );
                        },
                        child: Center(
                          child: Card(
                            child: Padding(
                              padding: const EdgeInsets.symmetric(
                                  horizontal: 15, vertical: 7),
                              child: Row(
                                children: [
                                  ClipOval(
                                    child: Image.network(
                                      '${response["products"][index]["thumbnail"]}',
                                      height: 55,
                                      width: 55,
                                      fit: BoxFit.cover,
                                    ),
                                  ),
                                  const SizedBox(
                                    width: 10,
                                  ),
                                  Expanded(
                                    child: Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Text(
                                          '${response["products"][index]["title"]}',
                                          overflow: TextOverflow.ellipsis,
                                          style: const TextStyle(
                                            fontWeight: FontWeight.bold,
                                            fontSize: 17.5,
                                          ),
                                        ),
                                        Text(
                                          '${response["products"][index]["description"]}',
                                          overflow: TextOverflow.ellipsis,
                                          style: const TextStyle(
                                            // fontWeight: FontWeight.bold,
                                            fontSize: 15,
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                  const SizedBox(
                                    width: 10,
                                  ),
                                  Column(
                                    crossAxisAlignment: CrossAxisAlignment.end,
                                    children: [
                                      Text(
                                        '${response["products"][index]["price"]}\$',
                                        overflow: TextOverflow.ellipsis,
                                        style: const TextStyle(
                                          fontWeight: FontWeight.bold,
                                          fontSize: 17.5,
                                        ),
                                      ),
                                      Text(
                                        '${response["products"][index]["rating"]}',
                                        overflow: TextOverflow.ellipsis,
                                        style: const TextStyle(
                                          // fontWeight: FontWeight.bold,
                                          fontSize: 15,
                                        ),
                                      ),
                                    ],
                                  ),
                                ],
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
