import 'package:flutter/material.dart';
import 'package:grocery/constants.dart';

class CategoriesState extends StatefulWidget {
  @override
  _CategoriesStateState createState() => _CategoriesStateState();
}

class _CategoriesStateState extends State<CategoriesState> {
  List<String> categories = ['TOP SELLING', 'RECENT SELLING', 'WHAT\'S NEW'];
  int selectedIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 50.0,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        physics: ClampingScrollPhysics(),
        shrinkWrap: true,
        itemCount: categories.length,
        itemBuilder: (BuildContext context, int index) {
          return buildCategories(index);
        },
      ),
    );
  }

  Widget buildCategories(int index) {
    return GestureDetector(
      onTap: () {},
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 8.0, vertical: 5.0),
        child: Column(
          children: [
            Text(
              categories[index],
              style: TextStyle(
                  fontWeight: FontWeight.bold,
                  color: selectedIndex == index ? kPrimaryColor : Colors.black),
            ),
            selectedIndex == index
                ? Container(
                    margin: EdgeInsets.only(top: 5.0),
                    height: 2.0,
                    width: 50.0,
                    color:
                        selectedIndex == index ? kPrimaryColor : Colors.black,
                  )
                : Container(),
          ],
        ),
      ),
    );
  }
}
