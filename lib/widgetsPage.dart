import 'package:flutter/material.dart';

class WidgetsPage extends StatefulWidget {
  const WidgetsPage({super.key});

  @override
  State<WidgetsPage> createState() => _WidgetsPageState();
}

class _WidgetsPageState extends State<WidgetsPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('ทำความรู้จักกับ widgets'),
      ),
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            ///// Column
            Center(
              child: Column(
                children: [
                  Text('Column1'),
                  FittedBox(
                    child: FlutterLogo(),
                  ),

                  Text('Column2'),
                  FittedBox(
                    child: FlutterLogo(),
                  ),
                ],
              ),
            ),

            ///// Column
            
            ///Row
            Row(
              children: [
                FlutterLogo(),
                FlutterLogo(),
                FlutterLogo(),
                FlutterLogo(),
              ],
            ),
            ///
          ],
        ),
      ),
    );
  }
}
