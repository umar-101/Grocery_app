import 'package:flutter/material.dart';

class AppBarMain extends StatelessWidget {
  const AppBarMain({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      elevation: 0.0,
      leading: IconButton(
        icon: const Icon(
          Icons.menu,
          color: Colors.black,
          size: 28.0,
        ),
        onPressed: () {
          Scaffold.of(context).openDrawer();
        },
        tooltip: MaterialLocalizations.of(context).openAppDrawerTooltip,
      ),
      title: Text(
        'Street 05,Kurri Road Area,Rawalpindi Punjab Pakistan',
        maxLines: 2,
        textAlign: TextAlign.center,
        style: TextStyle(
            color: Colors.grey, fontSize: 14.0, fontWeight: FontWeight.normal),
      ),
      actions: [
        Icon(
          Icons.account_circle,
          color: Colors.black,
          size: 40.0,
        ),
      ],
      backgroundColor: Color(0xFFEEEEEE),
    );
  }
}
