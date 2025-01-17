import 'package:flutter/material.dart';
import 'package:flutter_zoom_drawer/flutter_zoom_drawer.dart';
import 'package:resturent_app/pages/home.dart';
import 'package:resturent_app/pages/menu_screen.dart';

class ZoomDrawerScreen extends StatelessWidget {
  const ZoomDrawerScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return ZoomDrawer(
      style: DrawerStyle.defaultStyle,
      menuScreen: MenuScreen(),
      mainScreen: HomeScreen(),
      borderRadius: 24.0,
      showShadow: true,
      angle: -12.0,
      drawerShadowsBackgroundColor: Colors.grey,
      slideWidth: MediaQuery.of(context).size.width * .65,
      openCurve: Curves.fastOutSlowIn,
      closeCurve: Curves.bounceIn,
    );
  }
}
