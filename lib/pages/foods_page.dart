import 'package:flutter/material.dart';
import 'package:line_icons/line_icons.dart';
import 'package:resturent_app/constant/constant.dart';
import 'package:resturent_app/pages/breakfast_page.dart';
import 'package:resturent_app/pages/dinner_page.dart';
import 'package:resturent_app/pages/lunch_page.dart';

class FoodsPageScreen extends StatelessWidget {
  const FoodsPageScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: backgrounclr,
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
              child: Row(
                children: [
                  GestureDetector(
                    onTap: () => Navigator.pop(context),
                    child: Container(
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
                  ),
                  Spacer(),
                  IconButton(
                    onPressed: () {},
                    icon: Icon(
                      LineIcons.shoppingBag,
                      size: 30,
                      color: btnclr,
                    ),
                  ),
                ],
              ),
            ),
            DefaultTabController(
              length: 3,
              child: Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Material(
                      child: Container(
                        height: 55,
                        color: Colors.white,
                        child: TabBar(
                            physics: ClampingScrollPhysics(),
                            unselectedLabelColor: btnclr,
                            labelStyle: TextStyle(color: Colors.white),
                            indicatorSize: TabBarIndicatorSize.label,
                            padding: EdgeInsets.all(10),
                            indicator: BoxDecoration(
                                borderRadius: BorderRadius.circular(30),
                                color: btnclr),
                            tabs: [
                              Tab(
                                child: Container(
                                  height: 35,
                                  decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(30),
                                      border:
                                          Border.all(color: btnclr, width: 1)),
                                  child: Align(
                                    alignment: Alignment.center,
                                    child: Text("Breakfast"),
                                  ),
                                ),
                              ),
                              Tab(
                                child: Container(
                                  height: 35,
                                  decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(30),
                                      border:
                                          Border.all(color: btnclr, width: 1)),
                                  child: Align(
                                    alignment: Alignment.center,
                                    child: Text("Lunch"),
                                  ),
                                ),
                              ),
                              Tab(
                                child: Container(
                                  height: 35,
                                  decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(30),
                                      border:
                                          Border.all(color: btnclr, width: 1)),
                                  child: Align(
                                    alignment: Alignment.center,
                                    child: Text("Dinner"),
                                  ),
                                ),
                              )
                            ]),
                      ),
                    ),
                    Expanded(
                      child: TabBarView(
                        children: [
                          BreakfastPageScreen(),
                          LunchPageScreen(),
                          DinnerPageScreen()
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
