import 'package:flutter/material.dart';
import 'package:line_icons/line_icons.dart';
import 'package:resturent_app/constant/constant.dart';

class PidzzaPageScreen extends StatelessWidget {
  const PidzzaPageScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: backgrounclr,
      body: SafeArea(
          child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
        child: Column(
          children: [
            Row(
              children: [
                Container(
                  height: 45,
                  width: 45,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(7),
                    color: backgrounclr,
                    boxShadow: [
                      BoxShadow(
                        color: Colors.black.withOpacity(0.15),
                        spreadRadius: 4,
                        blurRadius: 5,
                        offset: Offset(0, 3),
                      )
                    ],
                  ),
                  child: Center(
                    child: Icon(
                      Icons.arrow_back_ios,
                      color: btnclr,
                      size: 20,
                    ),
                  ),
                ),
                Spacer(),
                Icon(
                  LineIcons.shoppingBag,
                  size: 30,
                  color: btnclr,
                ),
              ],
            )
          ],
        ),
      )),
    );
  }
}
