import 'package:flutter/material.dart';
import 'package:grocery/Screens/CategoryScreen/categories_screen.dart';
import 'package:grocery/Screens/HomeScreen/Components/item_price_list.dart';
import 'package:grocery/Screens/HomeScreen/Components/see_all.dart';
import 'package:grocery/Screens/HomeScreen/home_screen.dart';
import 'package:grocery/Screens/rounded_button.dart';
import 'package:grocery/appbar_main.dart';
import 'package:grocery/constants.dart';
import 'package:grocery/drawer_main.dart';
import 'package:grocery/navbar_main.dart';

class CartScreen extends StatefulWidget {
  @override
  _CartScreenState createState() => _CartScreenState();
}

class _CartScreenState extends State<CartScreen> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return Scaffold(
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(55.0),
        child: AppBarMain(),
      ),
      drawer: OpenDrawer(),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
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
                    'Cart',
                    style: TextStyle(
                      fontSize: 25.0,
                      letterSpacing: 1.1,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ],
              ),
            ),
          ),
          Expanded(
            child: Padding(
              padding:
                  const EdgeInsets.symmetric(horizontal: 60.0, vertical: 5.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    'NO ITEMS IN THE CART',
                    style: TextStyle(
                        fontSize: 18.0,
                        fontWeight: FontWeight.bold,
                        letterSpacing: 1.2),
                  ),
                  SizedBox(height: 15.0),
                  Text(
                    'Please add some of the items in the cart that appear here',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontWeight: FontWeight.w600,
                      color: Colors.grey[400],
                      fontSize: 16.0,
                    ),
                  ),
                  SizedBox(height: 20.0),
                  RoundedButton(
                    press: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => HomeScreen()),
                      );
                    },
                    text: 'SHOP NOW',
                    color: kPrimaryColor,
                    textColor: Colors.white,
                    width: size.width * 0.7,
                  ),
                ],
              ),
            ),
          )
        ],
      ),
      bottomNavigationBar: NavBarMain(),
    );
  }
}
