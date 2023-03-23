class FeaturedModel {
  final String image;
  final String text1;
  final String text2;
  final bool isAdShown;
  final bool isAdTextShown;
  final String adText;
  final bool saleContainerShown;
  final bool saleTextShown;
  final String saleText;
  FeaturedModel({
    required this.image,
    required this.text1,
    required this.text2,
    this.isAdShown = true,
    this.isAdTextShown = true,
    required this.adText,
    this.saleContainerShown = true,
    this.saleTextShown = true,
    required this.saleText,
  });
}
