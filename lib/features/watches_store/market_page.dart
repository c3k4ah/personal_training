import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class WatchesProductsPage extends StatefulWidget {
  const WatchesProductsPage({super.key});

  @override
  State<WatchesProductsPage> createState() => _WatchesProductsPageState();
}

class _WatchesProductsPageState extends State<WatchesProductsPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
      ),
      body: SizedBox(
        width: MediaQuery.sizeOf(context).width,
        height: MediaQuery.sizeOf(context).height,
        child: Column(
          children: [
            SizedBox(
              width: MediaQuery.sizeOf(context).width,
              height: 300,
              child: CarouselSlider(
                options: CarouselOptions(
                  height: 400.0,
                  pageSnapping: false,
                  viewportFraction: 1.0,
                ),
                items: watchesList.map((WatchesDataModels article) {
                  return Builder(
                    builder: (BuildContext context) {
                      return _buildBigCardProduct(article);
                    },
                  );
                }).toList(),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildBigCardProduct(WatchesDataModels article) {
    return Container(
      width: MediaQuery.of(context).size.width,
      margin: const EdgeInsets.symmetric(horizontal: 15.0),
      decoration: const BoxDecoration(
        color: Colors.white,
      ),
      child: Row(
        children: [
          Expanded(
            flex: 1,
            child: SizedBox(
              height: double.infinity,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    height: 70,
                    width: double.infinity,
                    decoration: BoxDecoration(
                      color: Colors.red,
                      borderRadius: BorderRadius.circular(10),
                    ),
                  ),
                  Container(
                    height: 70,
                    width: double.infinity,
                    decoration: BoxDecoration(
                      color: Colors.red,
                      borderRadius: BorderRadius.circular(10),
                    ),
                  ),
                ],
              ),
            ),
          ),
          Expanded(
            flex: 2,
            child: Container(
              decoration: BoxDecoration(
                image: DecorationImage(
                  fit: BoxFit.fitHeight,
                  image: ExactAssetImage(
                    "assets/watches_store/images/${article.imagesAsset}",
                  ),
                ),
              ),
            ),
          ),
          Expanded(
            flex: 1,
            child: SizedBox(
              height: double.infinity,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    height: 70,
                    width: double.infinity,
                    decoration: BoxDecoration(
                      color: Colors.red,
                      borderRadius: BorderRadius.circular(10),
                    ),
                  ),
                  Container(
                    height: 70,
                    width: double.infinity,
                    decoration: BoxDecoration(
                      color: Colors.red,
                      borderRadius: BorderRadius.circular(10),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class WatchesDataModels {
  final String imagesAsset;
  final String objectAsset;
  final String articleName;
  final int articleCode;
  final bool isFavorite;
  final bool isNewArticle;

  WatchesDataModels({
    required this.imagesAsset,
    required this.objectAsset,
    required this.articleName,
    required this.articleCode,
    required this.isFavorite,
    required this.isNewArticle,
  });
}

List<WatchesDataModels> watchesList = [
  WatchesDataModels(
    articleName: "Japanese Quartz",
    imagesAsset: "watch_02.png",
    objectAsset: "",
    articleCode: 001,
    isFavorite: true,
    isNewArticle: true,
  ),
  WatchesDataModels(
    articleName: "HAMILTON",
    imagesAsset: "watch_04.png",
    objectAsset: "",
    articleCode: 003,
    isFavorite: true,
    isNewArticle: false,
  ),
  WatchesDataModels(
    articleName: "Apple Watch",
    imagesAsset: "watch_01.png",
    objectAsset: "",
    articleCode: 003,
    isFavorite: true,
    isNewArticle: false,
  ),
  WatchesDataModels(
    articleName: "LUMINOR PANERAI",
    imagesAsset: "watch_03.png",
    objectAsset: "",
    articleCode: 003,
    isFavorite: true,
    isNewArticle: false,
  ),
];
