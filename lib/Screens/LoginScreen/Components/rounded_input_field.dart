import 'package:flutter/material.dart';
import 'package:grocery/constants.dart';

class RoundedInputField extends StatelessWidget {
  final String hintText;
  final IconData icon;
  final ValueChanged<String> onchanged;

  const RoundedInputField({
    Key key,
    this.hintText,
    this.icon = Icons.person,
    this.onchanged,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextField(
      onChanged: onchanged,
      decoration: InputDecoration(
        hintText: hintText,
        icon: Icon(
          icon,
          color: kPrimaryColor,
        ),
        border: InputBorder.none,
      ),
    );
  }
}
