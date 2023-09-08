import 'dart:io';

import 'package:adaptive_dialog/adaptive_dialog.dart';
import 'package:example/screens/login/widgets/InputTextForm.dart';
import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';

class EditProfile extends StatefulWidget {
  const EditProfile({super.key});

  @override
  State<EditProfile> createState() => _EditProfileState();
}

class _EditProfileState extends State<EditProfile> {
  final GlobalKey<FormState> _editformKey = GlobalKey<FormState>();
  final TextEditingController firstname = TextEditingController();
  final TextEditingController lastname = TextEditingController();
  final TextEditingController phoneNumber = TextEditingController();
  final TextEditingController email = TextEditingController();
  XFile? image;
  ImagePicker picker = ImagePicker();

  Future<void> openDialogImage() async {
    final result = await showModalActionSheet<String>(
      context: context,
      title: 'เลือกรูปภาพ',
      cancelLabel: 'ยกเลิก',
      actions: [
        SheetAction<String>(label: 'ถ่ายรูป', key: 'camera'),
        SheetAction<String>(label: 'เลือกจากอัลบั้ม', key: 'gallery'),
      ],
    );

    if (result != null) {
      if (result == 'camera') {
        final img = await picker.pickImage(source: ImageSource.camera);
        setState(() {
          image = img;
        });
      }

      if (result == 'gallery') {
        final img = await picker.pickImage(source: ImageSource.gallery);
        setState(() {
          image = img;
        });
      }
    }
  }

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(
              height: size.height * 0.05,
            ),
            Center(
              child: Stack(
                alignment: AlignmentDirectional.bottomEnd,
                children: [
                  Padding(
                    padding: EdgeInsets.all(10.0),
                    child: image != null
                        ? CircleAvatar(
                            backgroundColor: Colors.grey,
                            radius: 70.0,
                            backgroundImage: FileImage(File(image!.path)),
                          )
                        : CircleAvatar(
                            backgroundColor: Colors.grey,
                            radius: 70.0,
                            backgroundImage: AssetImage('assets/icons/Cartoon_Person.png'),
                          ),
                  ),
                  Positioned(
                    right: size.width * 0.01,
                    bottom: size.height * 0.03,
                    child: GestureDetector(
                      onTap: () => openDialogImage(),
                      child: Container(
                        width: 30,
                        height: 30,
                        decoration: BoxDecoration(color: Colors.black, shape: BoxShape.circle),
                        child: Padding(
                          padding: const EdgeInsets.all(5.0),
                          child: Icon(
                            Icons.photo_camera,
                            color: Colors.red,
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: size.height * 0.03,
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: size.width * 0.04),
              child: Row(
                children: [
                  Text('ชื่อ'),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: InputTextForm(
                username: firstname,
                hintText: 'ชื่อ',
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return 'กรุณากรอกอีเมล';
                  }
                  return null;
                },
              ),
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: size.width * 0.04),
              child: Row(
                children: [
                  Text('นามสกุล'),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: InputTextForm(
                username: lastname,
                hintText: 'นามสกุล',
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return 'กรุณากรอกอีเมล';
                  }
                  return null;
                },
              ),
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: size.width * 0.04),
              child: Row(
                children: [
                  Text('เบอร์โทร'),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: InputTextForm(
                username: phoneNumber,
                hintText: 'เบอร์โทร',
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return 'กรุณากรอกอีเมล';
                  }
                  return null;
                },
              ),
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: size.width * 0.04),
              child: Row(
                children: [
                  Text('อีเมล'),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: InputTextForm(
                username: email,
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
              height: size.height * 0.05,
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: GestureDetector(
                onTap: () {
                  Navigator.pop(context);
                },
                child: Container(
                  height: size.height * 0.06,
                  width: double.infinity,
                  decoration: BoxDecoration(borderRadius: BorderRadius.circular(20), color: Colors.blue),
                  child: Center(
                      child: Text(
                    'บันทึก',
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
