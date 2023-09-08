import 'package:flutter/material.dart';

class DetailNewPage extends StatefulWidget {
  DetailNewPage({super.key, required this.newDetail});

  Map<String, dynamic> newDetail;

  @override
  State<DetailNewPage> createState() => _DetailNewPageState();
}

class _DetailNewPageState extends State<DetailNewPage> {
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text(widget.newDetail['title']),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            children: [
              SizedBox(
                height: size.height * 0.01,
              ),
              Image.asset(widget.newDetail['image']),
              Padding(
                padding: EdgeInsets.symmetric(vertical: size.height * 0.01),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Text(widget.newDetail['date'])
                  ],
                ),
              ),
              SizedBox(
                height: size.height * 0.01,
              ),
              Text(widget.newDetail['description'])
            ],
          ),
        ),
      ),
    );
  }
}