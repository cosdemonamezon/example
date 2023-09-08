import 'package:flutter/material.dart';

class PromotionPage extends StatefulWidget {
  PromotionPage({super.key, required this.promotion});

  Map<String, dynamic> promotion;

  @override
  State<PromotionPage> createState() => _PromotionPageState();
}

class _PromotionPageState extends State<PromotionPage> {
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text(widget.promotion['title']),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            children: [
              SizedBox(
                height: size.height * 0.01,
              ),
              Image.asset(widget.promotion['image']),
              SizedBox(
                height: size.height * 0.01,
              ),
              Text(widget.promotion['description']),
              SizedBox(
                height: size.height * 0.03,
              ),
              Text(widget.promotion['date'], style: TextStyle(fontWeight: FontWeight.bold),),
              SizedBox(
                height: size.height * 0.08,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
