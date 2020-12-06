import 'package:flutter/material.dart';
import 'package:grocery/Screens/CategoryScreen/categories_screen.dart';
import 'package:grocery/Screens/HomeScreen/Components/item_price_list.dart';
import 'package:grocery/Screens/HomeScreen/Components/see_all.dart';
import 'package:grocery/appbar_main.dart';
import 'package:grocery/drawer_main.dart';
import 'package:grocery/navbar_main.dart';
import 'Components/builder_below_search.dart';
import 'Components/categories_name_container.dart';
import 'Components/categories_state.dart';
import 'Components/search_bar.dart';
import 'list_model.dart';

class HomeScreen extends StatefulWidget {
  final Destination destination;
  HomeScreen({this.destination});

  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(55.0),
        child: AppBarMain(),
      ),
      drawer: OpenDrawer(),
      body: ListView.builder(
        shrinkWrap: true,
        itemCount: 1,
        itemBuilder: (BuildContext context, int index) {
          return Column(
            children: [
              SearchBar(),
              BuilderBelowSearch(),
              SizedBox(height: 10.0),
              CategoriesState(),
              ItemPriceList(),
              SeeAll(
                text: 'View All',
                press: () {},
                color: Color(0xFF6200EE),
                textColor: Colors.white,
              ),
              BuilderBelowSearch(),
              SizedBox(height: 5.0),
              EveryScreenHeader(text: 'Categories'),
              SizedBox(height: 5.0),
              Column(
                children: [
                  Row(
                    children: [
                      CategoiesNameContainer(
                        images: AssetImage('assets/images/dryfruits.jpg'),
                        color: Colors.red,
                        text: 'Pulses',
                      ),
                      CategoiesNameContainer(
                        color: Colors.pink,
                        images: AssetImage('assets/images/oilandbaspatti.jpg'),
                        text: 'Vegetables',
                      ),
                      CategoiesNameContainer(
                        color: Colors.purple[100],
                        text: 'Dry Fruits & Nuts',
                        images: AssetImage('assets/images/flour.jpg'),
                      ),
                    ],
                  ),
                  Row(
                    children: [
                      CategoiesNameContainer(
                        color: Colors.black,
                        text: 'Rics & Grains',
                        images: AssetImage('assets/images/ricegrains.jpg'),
                      ),
                      CategoiesNameContainer(
                        color: Colors.pinkAccent,
                        text: 'Atta & Flour',
                        images: AssetImage('assets/images/attaflour.jpg'),
                      ),
                      CategoiesNameContainer(
                        color: Colors.green,
                        text: 'Ghee & Baspatti',
                        images: AssetImage('assets/images/cookingoil.jpg'),
                      ),
                    ],
                  ),
                ],
              ),
            ],
          );
        },
      ),
      bottomNavigationBar: NavBarMain(),
    );
  }
}
