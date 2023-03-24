import 'package:flutter/material.dart';
import 'package:paytmclone/models/featured_model.dart';

class FeaturedWidget extends StatelessWidget {
  final FeaturedModel featuredModel;
  const FeaturedWidget({
    super.key,
    required this.featuredModel,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 10),
      child: Column(
        children: [
          Stack(
            children: [
              Stack(
                children: [
                  ClipOval(
                    child: Image.network(
                      featuredModel.image,
                      height: 50,
                      width: 50,
                      fit: BoxFit.cover,
                    ),
                  ),
                  Positioned(
                    top: 0,
                    right: 17,
                    child: Container(
                      // padding: const EdgeInsets.all(3),
                      decoration: BoxDecoration(
                        color: featuredModel.saleContainerShown
                            ? const Color(0xffFFD766)
                            : Colors.transparent,
                        borderRadius: BorderRadius.circular(5),
                      ),
                      child: Text(
                        featuredModel.saleText,
                        style: TextStyle(
                          color: featuredModel.saleTextShown
                              ? Colors.black
                              : Colors.transparent,
                          fontWeight: FontWeight.bold,
                          fontSize: 11,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
              Positioned(
                bottom: -1,
                right: -1,
                child: Container(
                  // padding: const EdgeInsets.all(2),
                  decoration: BoxDecoration(
                    color: featuredModel.isAdShown
                        ? const Color(0xff092B6B)
                        : Colors.transparent,
                    borderRadius: const BorderRadius.only(
                      bottomRight: Radius.circular(10),
                    ),
                  ),
                  child: Text(
                    featuredModel.adText,
                    style: TextStyle(
                      color: featuredModel.isAdTextShown
                          ? Colors.white
                          : Colors.transparent,
                      fontWeight: FontWeight.bold,
                      fontSize: 10,
                    ),
                  ),
                ),
              ),
            ],
          ),
          const SizedBox(
            height: 5,
          ),
          Text(
            featuredModel.text1,
            style: const TextStyle(
              color: Colors.black,
              fontWeight: FontWeight.bold,
            ),
          ),
          const SizedBox(
            height: 3,
          ),
          Text(
            featuredModel.text2,
            style: const TextStyle(
              color: Colors.black,
              fontWeight: FontWeight.bold,
            ),
          ),
        ],
      ),
    );
  }
}
