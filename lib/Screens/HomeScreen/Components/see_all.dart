import 'package:flutter/material.dart';

class SeeAll extends StatelessWidget {
  final String text;
  final Function press;
  final Color color, textColor;
  const SeeAll({
    Key key,
    this.text,
    this.press,
    this.color,
    this.textColor,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    //Size size = MediaQuery.of(context).size;
    return Container(
      width: double.infinity,
      padding: EdgeInsets.symmetric(horizontal: 5.0, vertical: 5.0),
      child: ClipRRect(
        child: FlatButton(
          padding: EdgeInsets.symmetric(vertical: 20, horizontal: 40),
          color: color,
          onPressed: press,
          child: Text(
            text,
            style: TextStyle(color: textColor),
          ),
        ),
      ),
    );
  }
}
