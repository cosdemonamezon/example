import 'package:flutter/material.dart';

class InputTextForm extends StatelessWidget {
  const InputTextForm({
    super.key,
    this.username,
    this.hintText,
    this.isPassword = false,
    this.keyboardType,
    this.validator
  });

  final TextEditingController? username;
  final TextInputType? keyboardType;
  final String? hintText;
  final FormFieldValidator<String>? validator;
  final bool isPassword;

  @override
  Widget build(BuildContext context) {
    late bool _show = true;

    return TextFormField(
      obscureText: isPassword ? _show : false,
      controller: username,
      enabled: true,
      keyboardType: TextInputType.emailAddress,
      maxLines: 1,
      style: TextStyle(fontSize: 16.0),
      decoration: InputDecoration(
        hintText: hintText,
          contentPadding: EdgeInsets.all(10),
          fillColor: Color.fromARGB(255, 228, 228, 228),
          filled: true,
          border: OutlineInputBorder(
            borderSide: BorderSide.none,
            borderRadius: BorderRadius.all(
              Radius.circular(20),
            ),
          )),
      validator: validator,
    );
  }
}
