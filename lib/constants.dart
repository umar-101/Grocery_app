import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

const kPrimaryColor = Color(0xFF6200EE);
const kPrimaryLightColor = Color(0xFF6200EE);

final String loginsvg = 'assets/icons/mainstore.svg';
final Widget svg = SvgPicture.asset(loginsvg, semanticsLabel: 'Acme Logo');

final kDrawerTextstyle = TextStyle(
  color: Colors.white,
  fontSize: 18.0,
);
