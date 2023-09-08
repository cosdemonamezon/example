import 'package:carousel_slider/carousel_slider.dart';
import 'package:example/constants.dart';
import 'package:example/screens/home/detailNewPage.dart';
import 'package:example/screens/home/promotionPage.dart';
import 'package:example/screens/home/showNewsPage.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: CarouselSlider.builder(
                  itemCount: banners.length,
                  itemBuilder: (context, index, realIndex) {
                    return Image.asset(
                      banners[index],
                      fit: BoxFit.fill,
                    );
                  },
                  options: CarouselOptions(
                    height: size.height * 0.35,
                    pageSnapping: false,
                    enlargeCenterPage: true,
                    enlargeStrategy: CenterPageEnlargeStrategy.height,
                    scrollDirection: Axis.horizontal,
                    autoPlay: true,
                    viewportFraction: 1,
                  )),
            ),
            SizedBox(
              height: size.height * 0.02,
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: size.width * 0.04),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'ข่าววันนี้',
                    style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                  ),
                  GestureDetector(
                    onTap: () {
                      Navigator.push(context, MaterialPageRoute(builder: (context) => ShowNewsPage()));
                    },
                    child: Text(
                      'ดูทั้งหมด',
                      style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold, color: Colors.orange),
                    ),
                  )
                ],
              ),
            ),
            SizedBox(
              height: size.height * 0.02,
            ),
            SizedBox(
              height: size.height * 0.25,
              child: ListView.builder(
                  primary: false,
                  shrinkWrap: false,
                  scrollDirection: Axis.horizontal,
                  itemCount: news.length,
                  itemBuilder: (_, index) {
                    return InkWell(
                      onTap: () {
                        Navigator.push(context, MaterialPageRoute(builder: (context) => DetailNewPage(newDetail: news[index])));
                      },
                      child: Column(
                        children: [
                          Container(
                            height: size.height * 0.25,
                            width: size.width * 0.40,
                            margin: EdgeInsetsDirectional.only(end: 16, start: index == 0 ? 16 : 0),
                            decoration: BoxDecoration(
                              //color: Colors.amber,
                              borderRadius: BorderRadius.all(Radius.circular(12)),
                            ),
                            child: ClipRRect(
                              borderRadius: BorderRadius.all(Radius.circular(12)),
                              child: Column(
                                children: [Image.asset(news[index]['image']), Text(news[index]['title'])],
                              ),
                            ),
                          ),
                        ],
                      ),
                    );
                  }),
            ),
            SizedBox(
              height: size.height * 0.02,
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: size.width * 0.04),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'โปรโมชั่น',
                    style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                  ),
                  Text(
                    'ดูทั้งหมด',
                    style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold, color: Colors.orange),
                  )
                ],
              ),
            ),
            SizedBox(
              height: size.height * 0.02,
            ),
            SizedBox(
              height: size.height * 0.25,
              child: ListView.builder(
                  primary: false,
                  shrinkWrap: false,
                  scrollDirection: Axis.horizontal,
                  itemCount: promotions.length,
                  itemBuilder: (_, index) {
                    return InkWell(
                      onTap: () {
                        Navigator.push(context, MaterialPageRoute(builder: (context) => PromotionPage(promotion: promotions[index])));
                      },
                      child: Column(
                        children: [
                          Container(
                            height: size.height * 0.25,
                            width: size.width * 0.40,
                            margin: EdgeInsetsDirectional.only(end: 16, start: index == 0 ? 16 : 0),
                            decoration: BoxDecoration(
                              //color: Colors.amber,
                              borderRadius: BorderRadius.all(Radius.circular(12)),
                            ),
                            child: ClipRRect(
                              borderRadius: BorderRadius.all(Radius.circular(12)),
                              child: Column(
                                children: [
                                  Image.asset(
                                    promotions[index]['image'],
                                    fit: BoxFit.cover,
                                    height: size.height * 0.18,
                                  ),
                                  Text(promotions[index]['title'])
                                ],
                              ),
                            ),
                          ),
                        ],
                      ),
                    );
                  }),
            ),
            SizedBox(
              height: size.height * 0.08,
            ),
          ],
        ),
      ),
    );
  }
}
