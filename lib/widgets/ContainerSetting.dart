import 'package:flutter/material.dart';

class ContainerSetting extends StatelessWidget {
  const ContainerSetting({super.key, required this.size, required this.leadingIcon, required this.press, required this.trailingIcon, required this.title});

  final Size size;
  final VoidCallback press;
  final String leadingIcon;
  final String trailingIcon;
  final String title;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: size.width * 0.85,
      height: size.height * 0.07,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.all(
          Radius.circular(15.0),
        ),
        boxShadow: [
          BoxShadow(
            offset: Offset(0, 0),
            blurRadius: 2,
            spreadRadius: 2,
            color: Colors.black26,
          ),
        ],
      ),
      child: GestureDetector(
        onTap: press,
        child: ListTile(
          dense: false,
          leading: Image.asset(leadingIcon),
          title: Text(
            title,
            style: TextStyle(fontSize: 18, color: Colors.grey,),
          ),
          trailing: Image.asset(trailingIcon),
        ),
      ),
    );
  }
}
