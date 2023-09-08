import 'package:example/constants.dart';
import 'package:flutter/material.dart';

class NotificationsPage extends StatefulWidget {
  const NotificationsPage({super.key});

  @override
  State<NotificationsPage> createState() => _NotificationsPageState();
}

class _NotificationsPageState extends State<NotificationsPage> {
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            children: [
              SizedBox(
                height: size.height * 0.02,
              ),
              Column(
                children: List.generate(
                    notifications.length,
                    (index) => Padding(
                      padding: const EdgeInsets.all(5.0),
                      child: Card(
                            margin: EdgeInsets.zero,
                            elevation: 0,
                            color: Color.fromARGB(255, 238, 234, 234),
                            shape: RoundedRectangleBorder(
                              side: BorderSide(
                                color: Color.fromARGB(255, 238, 231, 231),
                                width: 2.0,
                              ),
                              borderRadius: BorderRadius.circular(8),
                            ),
                            child: Container(
                              decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.circular(8)
                              ),
                              child: ListTile(
                                title: Text('หมายเลข: ${notifications[index]['no']}'),
                                subtitle: Column(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text('สถานะ:  ${notifications[index]['title']}'),
                                    Text('รายละเอียด:  ${notifications[index]['description']}'),
                                    Text('วันที่ซื้อ:  ${notifications[index]['date']}')
                                  ],
                                ),
                              ),
                            ),
                          ),
                    )),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
