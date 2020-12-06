import 'package:flutter/material.dart';
import 'package:grocery/Screens/HomeScreen/list_model.dart';

class BuilderBelowSearch extends StatelessWidget {
  const BuilderBelowSearch({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 150.0,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        physics: ClampingScrollPhysics(),
        shrinkWrap: true,
        itemCount: destinations.length,
        itemBuilder: (BuildContext context, int index) {
          Destination destination = destinations[index];
          return Container(
            margin: EdgeInsets.all(5.0),
            width: 200.0,
            height: 80.0,
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(20.0),
              boxShadow: [
                BoxShadow(
                  color: Colors.black26,
                  offset: Offset(0.0, 2.0),
                  blurRadius: 6.0,
                ),
              ],
            ),
            child: ClipRRect(
              borderRadius: BorderRadius.circular(20.0),
              child: Image(
                  height: 150.0,
                  width: 200.0,
                  fit: BoxFit.cover,
                  image: AssetImage(destination.imageUrl)),
            ),
          );
        },
      ),
    );
  }
}
