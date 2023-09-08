import 'package:flutter/material.dart';

import '../login/widgets/InputTextForm.dart';

class RegisterPage extends StatefulWidget {
  const RegisterPage({super.key});

  @override
  State<RegisterPage> createState() => _RegisterPageState();
}

class _RegisterPageState extends State<RegisterPage> {
  final GlobalKey<FormState> loginFormKey = GlobalKey<FormState>();
  final TextEditingController username = TextEditingController();
  final TextEditingController password = TextEditingController();
  final TextEditingController phone = TextEditingController();
  final TextEditingController email = TextEditingController();
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'ลงทะเบียน',
          style: TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 16.0,
          ),
        ),
        centerTitle: true,
      ),
      backgroundColor: Color.fromARGB(255, 121, 241, 241),
      body: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(
              height: size.height * 0.05,
            ),
            Center(
              child: SizedBox(
                  width: size.width * 0.30,
                  height: size.height * 0.20,
                  child: Image.asset(
                    'assets/images/Asset-1-2.png',
                    fit: BoxFit.fill,
                  )),
            ),
            SizedBox(
              height: size.height * 0.05,
            ),
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: InputTextForm(
                username: username,
                hintText: 'อีเมล',
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return 'กรุณากรอกอีเมล';
                  }
                  return null;
                },
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: InputTextForm(
                username: password,
                isPassword: true,
                hintText: 'รหัสผ่าน',
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return 'กรุณากรอกรหัสผ่าน';
                  }
                  if (value.length < 8) {
                    return 'พาสเวิร์ต้องมีความยาว 8 อักษรขึ้นไป';
                  }
                  return null;
                },
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: InputTextForm(
                username: phone,
                hintText: 'เบอร์โทร',
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return 'กรุณากรอกเบอร์โทร';
                  }
                  return null;
                },
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: InputTextForm(
                username: email,
                // isPassword: true,
                hintText: 'อีเมล',
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return 'กรุณากรอกอีเมล';
                  }

                  return null;
                },
              ),
            ),
            SizedBox(
              height: size.height * 0.1,
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: GestureDetector(
                onTap: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context) {
                    return RegisterPage();
                  }));
                },
                child: Container(
                  height: size.height * 0.06,
                  width: double.infinity,
                  decoration: BoxDecoration(borderRadius: BorderRadius.circular(20), color: Colors.blue),
                  child: Center(
                      child: Text(
                    'ลงทะเบียน',
                    style: TextStyle(color: Colors.white, fontSize: 16, fontWeight: FontWeight.bold),
                  )),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
