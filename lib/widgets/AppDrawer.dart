import 'package:example/screens/setting/editProfile.dart';
import 'package:example/widgets/ContainerSetting.dart';
import 'package:flutter/material.dart';

class AppDrawer extends StatefulWidget {
  const AppDrawer({
    super.key,
  });

  @override
  State<AppDrawer> createState() => _AppDrawerState();
}

class _AppDrawerState extends State<AppDrawer> {
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Drawer(
      backgroundColor: Colors.white,
      width: size.width * 0.9,
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: SafeArea(
          child: SingleChildScrollView(
            child: Column(
              children: [
                SizedBox(
                  height: size.height * 0.02,
                ),
                ClipRRect(
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(8.0),
                    topRight: Radius.circular(8.0),
                  ),
                  child: Image.asset('assets/icons/Cartoon_Person.png',
                      // width: 300,
                      height: size.height * 0.15,
                      fit: BoxFit.fill),
                ),
                SizedBox(
                  height: size.height * 0.04,
                ),
                ContainerSetting(
                  size: size,
                  leadingIcon: 'assets/icons/icon_person.png',
                  title: 'เเก้ไขโปรไฟล์',
                  trailingIcon: 'assets/icons/icon_back.png',
                  press: () {
                    Navigator.push(context, MaterialPageRoute(builder: (context) => EditProfile()));
                  },
                ),
                SizedBox(
                  height: size.height * 0.02,
                ),
                ContainerSetting(
                  size: size,
                  leadingIcon: 'assets/icons/icon_time.png',
                  title: 'ประวัติ',
                  trailingIcon: 'assets/icons/icon_back.png',
                  press: () {},
                ),
                SizedBox(
                  height: size.height * 0.02,
                ),
                ContainerSetting(
                  size: size,
                  leadingIcon: 'assets/icons/icon_key.png',
                  title: 'เปลี่ยนรหัสผ่าน',
                  trailingIcon: 'assets/icons/icon_back.png',
                  press: () {},
                ),
                SizedBox(
                  height: size.height * 0.02,
                ),
                ContainerSetting(
                  size: size,
                  leadingIcon: 'assets/icons/icon_q.png',
                  title: 'เกี่ยวกับเรา',
                  trailingIcon: 'assets/icons/icon_back.png',
                  press: () {},
                ),
                SizedBox(
                  height: size.height * 0.02,
                ),
                ContainerSetting(
                  size: size,
                  leadingIcon: 'assets/icons/icon_call.png',
                  title: 'ติดต่อ',
                  trailingIcon: 'assets/icons/icon_back.png',
                  press: () {},
                ),
                SizedBox(
                  height: size.height * 0.02,
                ),
                ContainerSetting(
                  size: size,
                  leadingIcon: 'assets/icons/icon_help.png',
                  title: 'ภาษา',
                  trailingIcon: 'assets/icons/icon_back.png',
                  press: () {},
                ),
                SizedBox(
                  height: size.height * 0.02,
                ),
                ContainerSetting(
                  size: size,
                  leadingIcon: 'assets/icons/icon_logout.png',
                  title: 'ออกจากระบบ',
                  trailingIcon: 'assets/icons/icon_back.png',
                  press: () {},
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
