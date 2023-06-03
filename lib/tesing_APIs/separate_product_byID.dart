import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

class SeparateProductByIDScreen extends StatefulWidget {
  final int productID;

  const SeparateProductByIDScreen({super.key, required this.productID});

  @override
  State<SeparateProductByIDScreen> createState() =>
      _SeparateProductByIDScreenState();
}

class _SeparateProductByIDScreenState extends State<SeparateProductByIDScreen> {
  Map<String, dynamic> respondMap = {};
  bool isErrorOccurred = false;
  String errorMessage = '';
  int statusCode = 200;
  bool isLoading = true;

  @override
  void initState() {
    super.initState();
    hittingApi();
  }

  hittingApi() async {
    isLoading = true;
    setState(() {});
    var respondMapData = await http
        .get(Uri.parse('https://dummyjson.com/products/${widget.productID}'));
    if (respondMapData.statusCode >= 200 && respondMapData.statusCode < 300) {
      respondMap = jsonDecode(respondMapData.body);
      print(respondMap);
    } else {
      isErrorOccurred = true;
      errorMessage = respondMapData.reasonPhrase ?? "Something went wrong";
    }
    statusCode = respondMapData.statusCode;
    isLoading = false;
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          elevation: 0,
          backgroundColor: Colors.transparent,
          centerTitle: true,
          leading: GestureDetector(
            onTap: () {
              Navigator.pop(context);
            },
            child: const Icon(
              Icons.arrow_back,
              color: Colors.black,
            ),
          ),
          title: Text(
            isLoading == true || isErrorOccurred == true
                ? ''
                : '${respondMap["brand"]}',
            style: const TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 20,
              color: Colors.black,
            ),
          ),
        ),
        body: isLoading
            ? const Center(child: CircularProgressIndicator())
            : isErrorOccurred
                ? Center(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text('$statusCode'),
                        Text(errorMessage),
                      ],
                    ),
                  )
                : SafeArea(
                    child: Padding(
                      padding: const EdgeInsets.symmetric(
                          horizontal: 25, vertical: 15),
                      child: Column(
                        children: [
                          Row(
                            children: [
                              ClipOval(
                                child: Image.network(
                                  '${respondMap["thumbnail"]}',
                                  height: 125,
                                  width: 125,
                                  fit: BoxFit.cover,
                                ),
                              ),
                              const SizedBox(
                                width: 10,
                              ),
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    '${respondMap["title"]}',
                                    overflow: TextOverflow.ellipsis,
                                    style: const TextStyle(
                                      fontWeight: FontWeight.bold,
                                      fontSize: 20,
                                    ),
                                  ),
                                  Row(
                                    children: [
                                      const Text(
                                        'Price:',
                                        style: TextStyle(
                                          fontWeight: FontWeight.bold,
                                          fontSize: 20,
                                        ),
                                      ),
                                      const SizedBox(
                                        width: 5,
                                      ),
                                      Text(
                                        '${respondMap["price"]}\$',
                                        style: const TextStyle(
                                          fontWeight: FontWeight.bold,
                                          fontSize: 20,
                                        ),
                                      ),
                                    ],
                                  ),
                                  Row(
                                    children: [
                                      const Text(
                                        'Discount:',
                                        style: TextStyle(
                                          fontWeight: FontWeight.bold,
                                          fontSize: 20,
                                        ),
                                      ),
                                      const SizedBox(
                                        width: 5,
                                      ),
                                      Text(
                                        '${respondMap["discountPercentage"]}%',
                                        style: const TextStyle(
                                          fontWeight: FontWeight.bold,
                                          fontSize: 15,
                                        ),
                                      ),
                                    ],
                                  ),
                                ],
                              )
                            ],
                          ),
                          const SizedBox(
                            height: 15,
                          ),
                          Row(
                            children: [
                              const Text(
                                'Rating:',
                                style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontSize: 20,
                                ),
                              ),
                              const SizedBox(
                                width: 5,
                              ),
                              Text(
                                '${respondMap["rating"]}',
                                style: const TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontSize: 15,
                                  color: Colors.blue,
                                ),
                              ),
                            ],
                          ),
                          Row(
                            children: [
                              const Text(
                                'Stock:',
                                style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontSize: 20,
                                ),
                              ),
                              const SizedBox(
                                width: 5,
                              ),
                              Text(
                                '${respondMap["stock"]}',
                                style: const TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontSize: 15,
                                  color: Colors.blue,
                                ),
                              ),
                            ],
                          ),
                          Row(
                            children: [
                              const Text(
                                'Category:',
                                style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontSize: 20,
                                ),
                              ),
                              const SizedBox(
                                width: 5,
                              ),
                              Text(
                                '${respondMap["category"]}',
                                style: const TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontSize: 15,
                                  color: Colors.blue,
                                ),
                              ),
                            ],
                          ),
                          const SizedBox(
                            height: 15,
                          ),
                          Text(
                            '${respondMap["description"]}',
                            style: const TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 15,
                            ),
                          ),
                          const SizedBox(
                            height: 15,
                          ),
                          SizedBox(
                            height: 125,
                            // width: double.infinity,
                            child: PageView.builder(
                              itemCount: respondMap["images"].length,
                              itemBuilder: (BuildContext context, int index) {
                                return ClipRRect(
                                  borderRadius: BorderRadius.circular(15),
                                  child: Image.network(
                                    '${respondMap["images"][index]}',
                                    height: 50,
                                    width: 50,
                                    fit: BoxFit.cover,
                                  ),
                                );
                              },
                            ),
                          ),
                        ],
                      ),
                    ),
                  ));
  }
}
