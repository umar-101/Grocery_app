import 'package:flutter/material.dart';
import 'package:grocery/appbar_main.dart';
import 'package:grocery/drawer_main.dart';
import 'package:grocery/navbar_main.dart';

class CategoryScreen extends StatefulWidget {
  @override
  _CategoryScreenState createState() => _CategoryScreenState();
}

class _CategoryScreenState extends State<CategoryScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(55.0),
        child: AppBarMain(),
      ),
      drawer: OpenDrawer(),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          EveryScreenHeader(
            text: 'Categories',
          ),
        ],
      ),
      bottomNavigationBar: NavBarMain(),
    );
  }
}

class EveryScreenHeader extends StatelessWidget {
  final String text;
  const EveryScreenHeader({
    Key key,
    this.text,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      decoration: BoxDecoration(color: Colors.white, boxShadow: [
        BoxShadow(
          color: Colors.black26,
          offset: Offset(0.0, 1.0),
          blurRadius: 4.0,
        ),
      ]),
      child: Padding(
        padding: const EdgeInsets.fromLTRB(30.0, 25.0, 10.0, 10.0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              text,
              style: TextStyle(
                fontSize: 25.0,
                letterSpacing: 1.1,
                fontWeight: FontWeight.bold,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
