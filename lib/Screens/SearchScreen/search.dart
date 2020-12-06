import 'package:flutter/material.dart';
import 'package:grocery/Screens/LoginScreen/Components/rounded_input_field.dart';
import 'package:grocery/Screens/LoginScreen/Components/textfield_container.dart';
import 'package:grocery/appbar_main.dart';
import 'package:grocery/drawer_main.dart';
import 'package:grocery/navbar_main.dart';

class SearchScreen extends StatefulWidget {
  @override
  _SearchScreenState createState() => _SearchScreenState();
}

class _SearchScreenState extends State<SearchScreen> {
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
          Padding(
            padding: const EdgeInsets.fromLTRB(30.0, 25.0, 0.0, 10.0),
            child: Container(
              child: Text(
                'Search',
                style: TextStyle(
                  fontSize: 25.0,
                  letterSpacing: 1.2,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          ),
          Padding(
            padding:
                const EdgeInsets.symmetric(horizontal: 10.0, vertical: 5.0),
            child: TextFieldContainer(
              width: double.infinity,
              child: RoundedInputField(
                icon: Icons.search,
                hintText: "Search Products",
                onchanged: (value) {},
              ),
            ),
          ),
        ],
      ),
      bottomNavigationBar: NavBarMain(),
    );
  }
}
