import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:resturent_app/constant/constant.dart';
import 'package:resturent_app/widgets/discount_widget.dart';

class HomeScreen extends StatefulWidget {
  HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: backgrounclr,
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              ListTile(
                contentPadding: EdgeInsets.zero,
                title: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      children: [
                        Image.asset("images/Sun.png"),
                        SizedBox(
                          width: 4,
                        ),
                        Text(
                          "Good Morning",
                          style: GoogleFonts.poppins(
                              fontSize: 14, color: Color(0xff0A2533)),
                        ),
                      ],
                    ),
                    Text(
                      "Pheyzal Mohamed",
                      style: GoogleFonts.poppins(
                        fontSize: 16,
                        color: Color(0xff0A2533),
                      ),
                    ),
                  ],
                ),
                trailing: CircleAvatar(
                  radius: 25,
                  backgroundImage: AssetImage("images/profile.png"),
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Text(
                "Featured",
                style: GoogleFonts.poppins(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                    color: Color(0xff0A2533)),
              ),
              SizedBox(
                height: 10,
              ),
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: [
                    DiscountWidget(
                      cl1: Color(0xff70B9BE),
                      cl2: Color(0xffE1EEF4),
                      imgurl: "images/hum.png",
                      logo: "images/king.png",
                      tittext: "Flash Offer",
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    DiscountWidget(
                      cl1: Color(0xff00D756),
                      cl2: Color(0xff018AC5),
                      imgurl: "images/Pizza.png",
                      logo: "images/logo2.png",
                      tittext: "New Arrivable",
                    ),
                    SizedBox(
                      width: 10,
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 15,
              ),
              Text(
                "Category",
                style: GoogleFonts.poppins(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                    color: Color(0xff0A2533)),
              ),
              DefaultTabController(
                length: 3,
                child: Column(
                  children: [
                    Material(
                      child: Container(
                        height: 55,
                        color: Colors.white,
                        child: TabBar(
                            physics: ClampingScrollPhysics(),
                            unselectedLabelColor: Colors.pink,
                            labelStyle: TextStyle(color: Colors.white),
                            indicatorSize: TabBarIndicatorSize.label,
                            padding: EdgeInsets.all(10),
                            indicator: BoxDecoration(
                                borderRadius: BorderRadius.circular(30),
                                color: Colors.pink),
                            tabs: [
                              Tab(
                                child: Container(
                                  height: 35,
                                  decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(30),
                                      border: Border.all(
                                          color: Colors.pinkAccent, width: 1)),
                                  child: Align(
                                    alignment: Alignment.center,
                                    child: Text("Chat"),
                                  ),
                                ),
                              ),
                              Tab(
                                child: Container(
                                  height: 35,
                                  decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(30),
                                      border: Border.all(
                                          color: Colors.pinkAccent, width: 1)),
                                  child: Align(
                                    alignment: Alignment.center,
                                    child: Text("Chat"),
                                  ),
                                ),
                              ),
                              Tab(
                                child: Container(
                                  height: 35,
                                  decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(30),
                                      border: Border.all(
                                          color: Colors.pinkAccent, width: 1)),
                                  child: Align(
                                    alignment: Alignment.center,
                                    child: Text("Chat"),
                                  ),
                                ),
                              )
                            ]),
                      ),
                    ),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
