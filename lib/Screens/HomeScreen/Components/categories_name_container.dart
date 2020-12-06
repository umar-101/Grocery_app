import 'package:flutter/material.dart';

class CategoiesNameContainer extends StatelessWidget {
  final String text;
  final Color color;
  final ImageProvider images;
  const CategoiesNameContainer({
    Key key,
    this.text,
    this.color,
    this.images,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Padding(
        padding: const EdgeInsets.all(3.0),
        child: Container(
          height: 100.0,
          width: double.infinity,
          decoration: BoxDecoration(
            image: DecorationImage(
              image: images,
              fit: BoxFit.cover,
              colorFilter: ColorFilter.mode(
                  Colors.black.withOpacity(0.5), BlendMode.dstATop),
            ),
            color: color,
            borderRadius: BorderRadius.circular(5.0),
            boxShadow: [
              BoxShadow(
                color: Colors.black26,
                offset: Offset(0.0, 2.0),
                blurRadius: 6.0,
              ),
            ],
          ),
          child: Padding(
            padding: const EdgeInsets.only(top: 75.0),
            child: Text(
              text,
              style: TextStyle(color: Colors.white),
              textAlign: TextAlign.center,
            ),
          ),
        ),
      ),
    );
  }
}
