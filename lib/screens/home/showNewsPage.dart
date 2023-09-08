import 'package:example/constants.dart';
import 'package:flutter/material.dart';

class ShowNewsPage extends StatefulWidget {
  const ShowNewsPage({super.key});

  @override
  State<ShowNewsPage> createState() => _ShowNewsPageState();
}

class _ShowNewsPageState extends State<ShowNewsPage> {
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text('ข่าวทั้งหมด'),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              //color: Colors.amber,
              height: size.height,
              child: GridView.count(
                primary: false,
                padding: const EdgeInsets.all(10),
                crossAxisSpacing: 10,
                mainAxisSpacing: 10,
                crossAxisCount: 2,
                shrinkWrap: false,
                children: List.generate(
                    news.length,
                    (index) => Image.asset(
                          news[index]['image'],
                          fit: BoxFit.fill,
                        )),
              ),
            )
          ],
        ),
      ),
    );
  }
}
