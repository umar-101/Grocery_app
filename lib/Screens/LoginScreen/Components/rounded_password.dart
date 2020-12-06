import 'package:flutter/material.dart';
import 'package:grocery/constants.dart';

class RoundedPasswordField extends StatelessWidget {
  final ValueChanged<String> onchanged;
  const RoundedPasswordField({
    Key key,
    this.onchanged,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextField(
      obscureText: true,
      decoration: InputDecoration(
          hintText: "Enter Password",
          icon: Icon(
            Icons.lock,
            color: kPrimaryColor,
          ),
          border: InputBorder.none,
          suffixIcon: Icon(
            Icons.visibility,
            color: kPrimaryColor,
          )),
    );
  }
}
