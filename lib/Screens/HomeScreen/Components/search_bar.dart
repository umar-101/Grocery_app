import 'package:flutter/material.dart';
import 'package:grocery/Screens/SearchScreen/search.dart';

class SearchBar extends StatelessWidget {
  const SearchBar({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return GestureDetector(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => SearchScreen()),
        );
      },
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 10.0, vertical: 8.0),
        child: Container(
          width: size.width * 0.95,
          height: 40.0,
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(10),
            boxShadow: [
              BoxShadow(
                color: Colors.black26,
                offset: Offset(0.0, 2.0),
                blurRadius: 6.0,
              ),
            ],
          ),
          child: Row(
            children: [
              SizedBox(width: 10.0),
              Icon(
                Icons.search,
                color: Colors.black54,
              ),
              SizedBox(width: 10.0),
              Text(
                "What you are looking for (eg: mango,onion)",
                style: TextStyle(color: Colors.grey),
              )
            ],
          ),
        ),
      ),
    );
  }
}
