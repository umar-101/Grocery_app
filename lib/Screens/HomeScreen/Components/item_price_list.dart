import 'package:flutter/material.dart';

class ItemPriceList extends StatefulWidget {
  @override
  _ItemPriceListState createState() => _ItemPriceListState();
}

class _ItemPriceListState extends State<ItemPriceList> {
  List<String> items = ['item1', 'item1', 'item1', 'item1', 'item1', 'item1'];
  int selectedIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 400.0,
      child: ListView.builder(
        itemCount: items.length,
        physics: ClampingScrollPhysics(),
        shrinkWrap: true,
        itemBuilder: (BuildContext context, int index) {
          return Container(
            margin: EdgeInsets.symmetric(horizontal: 10.0, vertical: 5.0),
            height: 150.0,
            width: double.infinity,
            decoration: BoxDecoration(
              boxShadow: [
                BoxShadow(
                  color: Colors.black26,
                  offset: Offset(0.0, 2.0),
                  blurRadius: 6.0,
                )
              ],
              color: Colors.white,
              borderRadius: BorderRadius.circular(15.0),
            ),
            child: Padding(
              padding: const EdgeInsets.fromLTRB(80.0, 10.0, 5.0, 5.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Mothers choice Red Row Peanuts',
                    style: TextStyle(
                      fontSize: 15.0,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  SizedBox(height: 5.0),
                  Text(
                    'Mothers choice Red Row Peanuts',
                  ),
                  SizedBox(height: 5.0),
                  Text(
                    '500G',
                    style: TextStyle(
                      fontSize: 18.0,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  SizedBox(height: 10.0),
                  Expanded(
                    child: Padding(
                      padding: const EdgeInsets.symmetric(
                          horizontal: 10.0, vertical: 5.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text('Rs 79'),
                          SizedBox(width: 15.0),
                          RaisedButton.icon(
                            shape: RoundedRectangleBorder(
                              borderRadius: new BorderRadius.circular(30.0),
                            ),
                            textColor: Colors.white,
                            color: Color(0xFF6200EE),
                            onPressed: () {
                              // Respond to button press
                            },
                            icon: Icon(Icons.add, size: 18),
                            label: Text("ADD"),
                          )
                        ],
                      ),
                    ),
                  )
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}
