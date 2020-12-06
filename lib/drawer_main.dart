import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:grocery/constants.dart';

class OpenDrawer extends StatelessWidget {
  const OpenDrawer({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Container(
        color: Colors.black,
        child: ListView(
          children: [
            DrawerHeader(
              child: Column(
                children: [
                  Row(
                    children: [
                      SvgPicture.asset(
                        loginsvg,
                        height: 40.0,
                      ),
                      SizedBox(width: 20.0),
                      Text(
                        'Hey User',
                        style: TextStyle(
                          fontSize: 22.0,
                          color: Colors.white,
                        ),
                      )
                    ],
                  ),
                  SizedBox(height: 30.0),
                  Expanded(
                    child: Container(
                      width: double.infinity,
                      color: kPrimaryColor,
                      child: Padding(
                        padding: EdgeInsets.symmetric(
                            horizontal: 10.0, vertical: 5.0),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Icon(
                              Icons.home,
                              color: Colors.white,
                              size: 35.0,
                            ),
                            Icon(
                              Icons.card_giftcard,
                              color: Colors.white,
                              size: 35.0,
                            ),
                            Icon(
                              Icons.wallet_membership,
                              color: Colors.white,
                              size: 35.0,
                            ),
                            Icon(
                              Icons.shopping_cart,
                              color: Colors.white,
                              size: 35.0,
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            ListTile(
              leading: Icon(
                Icons.home,
                color: Colors.white,
                size: 22.0,
              ),
              title: Text(
                'Login/SignUp',
                style: kDrawerTextstyle,
              ),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) {
                      return;
                    },
                  ),
                );
              },
            ),
            ListTile(
              leading: Icon(
                Icons.person,
                color: Colors.white,
                size: 22.0,
              ),
              title: Text(
                'About Us',
                style: kDrawerTextstyle,
              ),
              onTap: () {
                Navigator.pop(context);
              },
            ),
            ListTile(
              leading: Icon(
                Icons.privacy_tip_outlined,
                color: Colors.white,
                size: 22.0,
              ),
              title: Text(
                'Terms & Privacy',
                style: kDrawerTextstyle,
              ),
              onTap: () {
                Navigator.pop(context);
              },
            ),
            ListTile(
              leading: Icon(
                Icons.share_outlined,
                color: Colors.white,
                size: 22.0,
              ),
              title: Text(
                'Share with Friends',
                style: kDrawerTextstyle,
              ),
              onTap: () {
                Navigator.pop(context);
              },
            ),
            ListTile(
              leading: Icon(
                Icons.copyright,
                color: Colors.white,
                size: 22.0,
              ),
              title: Text(
                'Powered By',
                style: kDrawerTextstyle,
              ),
              onTap: () {
                Navigator.pop(context);
              },
            ),
          ],
        ),
      ),
    );
  }
}
