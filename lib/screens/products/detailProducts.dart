import 'dart:developer';

import 'package:flutter/material.dart';

import 'listProducts.dart';

class DetailProducts extends StatefulWidget {
  const DetailProducts({super.key, required this.products});
  final Products products;

  @override
  State<DetailProducts> createState() => _DetailProductsState();
}

class _DetailProductsState extends State<DetailProducts> {
  @override
  void initState() {
    super.initState();
    inspect(widget.products);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'รายละเอียด',
          style: TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 16.0,
          ),
        ),
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Center(
              child: Image.asset(widget.products.imgae),
            ),
            SizedBox(
              height: 20,
            ),
            Text(
              widget.products.title,
              style: TextStyle(
                fontFamily: 'Prompt',
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Text(
              widget.products.subTitle,
              style: TextStyle(
                fontFamily: 'Prompt',
                fontSize: 15,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Text(
              widget.products.endTitle,
              style: TextStyle(
                fontFamily: 'Prompt',
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
