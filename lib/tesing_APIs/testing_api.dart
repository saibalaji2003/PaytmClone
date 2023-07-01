import 'package:flutter/material.dart';
import 'package:paytmclone/providers/product_provider.dart';
import 'package:paytmclone/tesing_APIs/separate_product_byID.dart';
import 'package:provider/provider.dart';

class TestingAPIScreen extends StatefulWidget {
  const TestingAPIScreen({super.key});

  @override
  State<TestingAPIScreen> createState() => _TestingAPIScreenState();
}

class _TestingAPIScreenState extends State<TestingAPIScreen> {
  late ProductProvider productProvider;

  @override
  void initState() {
    super.initState();
    print('initcalled');
    productProvider = context.read();
    WidgetsBinding.instance.addPostFrameCallback((timeStamp) {
      productProvider.hittingAPI();
    });
  }

  @override
  void dispose() {
    print('disposecalled');
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Consumer<ProductProvider>(builder: (context, value, child) {
        return value.isLoading
            ? const Center(child: CircularProgressIndicator())
            : value.isErrorOccured
                ? Center(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text('${value.statusCode}'),
                        Text(value.errorMessage),
                      ],
                    ),
                  )
                : ListView.builder(
                    itemCount: value.response["products"].length,
                    itemBuilder: (BuildContext context, int index) {
                      var response = value.response;
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
                                      crossAxisAlignment:
                                          CrossAxisAlignment.end,
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
                  );
      }),
    );
  }
}
