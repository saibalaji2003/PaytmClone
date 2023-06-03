import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

class FakestoreAPIScreen extends StatefulWidget {
  const FakestoreAPIScreen({super.key});

  @override
  State<FakestoreAPIScreen> createState() => _FakestoreAPIScreenState();
}

class _FakestoreAPIScreenState extends State<FakestoreAPIScreen> {
  List fakestore = [];
  bool isLoading = true;
  bool isErrorOccurred = false;
  String errorMessage = '404 not found';
  int statusCode = 200;

  @override
  void initState() {
    super.initState();
    hittingApi();
  }

  hittingApi() async {
    isLoading = true;
    setState(() {});
    var fakestoreData =
        await http.get(Uri.parse('https://fakestoreapi.com/products/'));
    if (fakestoreData.statusCode >= 200 && fakestoreData.statusCode < 300) {
      fakestore = jsonDecode(fakestoreData.body);
    } else {
      isErrorOccurred = true;
      errorMessage = errorMessage;
    }
    statusCode = fakestoreData.statusCode;
    isLoading = false;
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: isLoading
          ? const Center(child: CircularProgressIndicator())
          : isErrorOccurred
              ? Center(
                  child: Column(
                    children: [
                      Text(
                        errorMessage,
                        style: const TextStyle(color: Colors.red),
                      ),
                      Text('$statusCode'),
                    ],
                  ),
                )
              : ListView.builder(
                  itemCount: fakestore.length,
                  itemBuilder: (BuildContext context, int index) {
                    return Card(
                      child: Padding(
                        padding: const EdgeInsets.symmetric(
                            vertical: 5, horizontal: 10),
                        child: Row(
                          children: [
                            ClipRRect(
                              borderRadius: BorderRadius.circular(15),
                              child: Image.network(
                                '${fakestore[index]["image"]}',
                                height: 75,
                                width: 75,
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
                                    '${fakestore[index]["title"]}',
                                    style: const TextStyle(
                                      fontWeight: FontWeight.bold,
                                      overflow: TextOverflow.ellipsis,
                                    ),
                                  ),
                                  const SizedBox(
                                    height: 5,
                                  ),
                                  Text(
                                    '${fakestore[index]["category"]}',
                                    style: const TextStyle(
                                      fontWeight: FontWeight.bold,
                                      color: Colors.blue,
                                      // overflow: TextOverflow.ellipsis,
                                    ),
                                  ),
                                  const SizedBox(
                                    height: 5,
                                  ),
                                  Text(
                                    '${fakestore[index]["rating"]["rate"]}',
                                    style: const TextStyle(
                                      fontWeight: FontWeight.bold,
                                      color: Colors.black,
                                      // overflow: TextOverflow.ellipsis,
                                    ),
                                  ),
                                  const SizedBox(
                                    height: 5,
                                  ),
                                  Text(
                                    '${fakestore[index]["rating"]["count"]}',
                                    style: const TextStyle(
                                      fontWeight: FontWeight.bold,
                                      color: Colors.black,
                                      // overflow: TextOverflow.ellipsis,
                                    ),
                                  ),
                                  Row(
                                    mainAxisAlignment: MainAxisAlignment.end,
                                    children: [
                                      Text(
                                        '₹${fakestore[index]["price"]}',
                                        style: const TextStyle(
                                          fontWeight: FontWeight.bold,
                                          color: Colors.greenAccent,
                                        ),
                                      ),
                                    ],
                                  )
                                ],
                              ),
                            )
                          ],
                        ),
                      ),
                    );
                  },
                ),
    );
  }
}
