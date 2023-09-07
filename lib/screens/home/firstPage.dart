import 'package:example/screens/home/homePage.dart';
import 'package:example/screens/notification/notificationsPage.dart';
import 'package:example/screens/products/products.dart';
import 'package:example/screens/salse/salseReport.dart';
import 'package:example/widgets/AppDrawer.dart';
import 'package:flutter/material.dart';

class FirstPage extends StatefulWidget {
  const FirstPage({super.key});

  @override
  State<FirstPage> createState() => _FirstPageState();
}

class _FirstPageState extends State<FirstPage> {
  int selectedIndex = 0;
  final PageStorageBucket bucket = PageStorageBucket();
  Widget currentScreen = HomePage();
  String titlePage = 'หน้าโฮม';

  void onItemNavigation(int index) {
    setState(() {
      selectedIndex = index;
      if (selectedIndex == 0) {
        currentScreen = HomePage();
        titlePage = 'หน้าโฮม';
      } else if (selectedIndex == 1) {
        currentScreen = Products();
        titlePage = 'รายการสินค้า';
      } else if (selectedIndex == 2) {
        currentScreen = SalseReport();
        titlePage = 'รางานการขาย';
      } else if (selectedIndex == 3) {
        currentScreen = NotificationsPage();
        titlePage = 'แจ้งเตือน';
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          '${titlePage}',
          style: TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 16.0,
          ),
        ),
        centerTitle: true,
      ),
      drawer: AppDrawer(),
      extendBody: true,
      body: SafeArea(
        child: PageStorage(
          bucket: bucket,
          child: currentScreen,
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        selectedItemColor: Colors.blue,
        unselectedItemColor: Colors.grey,
        showUnselectedLabels: true,
        type: BottomNavigationBarType.fixed,
        currentIndex: selectedIndex,
        onTap: onItemNavigation,
        items: [
          BottomNavigationBarItem(
            icon: Icon(
              Icons.home,
              size: 25,
            ),
            label: 'หน้าแรก',
          ),

          BottomNavigationBarItem(
            icon: Icon(
              Icons.list,
              size: 25,
            ),
            label: 'สินค้า',
          ),

          BottomNavigationBarItem(
            icon: Icon(
              Icons.difference_outlined,
              size: 25,
            ),
            label: 'รายงาน',
          ),

          BottomNavigationBarItem(
            icon: Icon(
              Icons.notifications,
              size: 25,
            ),
            label: 'แจ้งเตือน',
          ),
        ],
      ),
    );
  }
}


