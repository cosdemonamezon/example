import 'package:example/screens/Register/registerPage.dart';
import 'package:example/screens/home/firstPage.dart';
import 'package:example/screens/login/widgets/InputTextForm.dart';
import 'package:flutter/material.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final GlobalKey<FormState> loginFormKey = GlobalKey<FormState>();
  final TextEditingController username = TextEditingController();
  final TextEditingController password = TextEditingController();
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 121, 241, 241),
      body: SingleChildScrollView(
        child: Form(
          key: loginFormKey,
          child: Column(
            children: [
              SizedBox(
                height: size.height * 0.10,
              ),
              Center(
                child: SizedBox(
                    width: size.width * 0.30,
                    height: size.height * 0.20,
                    child: Image.asset(
                      'assets/images/banner1.png',
                      fit: BoxFit.fill,
                    )),
              ),
              SizedBox(
                height: size.height * 0.10,
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
              SizedBox(
                height: size.height * 0.05,
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: GestureDetector(
                  onTap: () {
                    if (loginFormKey.currentState!.validate()) {
                      //Navigator.push(context, MaterialPageRoute(builder: (context)=> FirstPage()));
                      Navigator.pushAndRemoveUntil(
                          context, MaterialPageRoute(builder: (context) => FirstPage()), (route) => false);
                    } else {
                      print('ไม่ได้กรอกข้อมูล');
                    }
                  },
                  child: Container(
                    height: size.height * 0.06,
                    width: double.infinity,
                    decoration: BoxDecoration(borderRadius: BorderRadius.circular(20), color: Colors.blue),
                    child: Center(
                        child: Text(
                      'Login',
                      style: TextStyle(color: Colors.white, fontSize: 16, fontWeight: FontWeight.bold),
                    )),
                  ),
                ),
              ),
              SizedBox(
                height: size.height * 0.02,
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
      ),
    );
  }
}
