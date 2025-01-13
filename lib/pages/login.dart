import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:resturent_app/constant/constant.dart';
import 'package:resturent_app/pages/home.dart';
import 'package:resturent_app/pages/register.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height: double.infinity,
        width: double.infinity,
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage("images/backgound.png"),
          ),
        ),
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SizedBox(
                height: 30,
              ),
              Text(
                "login here",
                style: GoogleFonts.poppins(
                  fontSize: 30,
                  color: btnclr,
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(
                height: 30,
              ),
              Container(
                width: 357,
                height: 64,
                decoration: BoxDecoration(
                  color: backgrounclr,
                  borderRadius: BorderRadius.circular(20),
                ),
                child: TextField(
                  decoration: InputDecoration(
                    hintText: "Email",
                    border: OutlineInputBorder(borderSide: BorderSide.none),
                  ),
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Container(
                width: 357,
                height: 64,
                decoration: BoxDecoration(
                  color: backgrounclr,
                  borderRadius: BorderRadius.circular(20),
                ),
                child: TextField(
                  decoration: InputDecoration(
                    hintText: "password",
                    border: OutlineInputBorder(borderSide: BorderSide.none),
                  ),
                ),
              ),
              SizedBox(
                height: 30,
              ),
              ElevatedButton(
                onPressed: () {
                  Navigator.push(
                      context, MaterialPageRoute(builder: (_) => HomeScreen()));
                },
                style: ElevatedButton.styleFrom(
                  minimumSize: Size(357, 64),
                  backgroundColor: btnclr,
                  foregroundColor: Colors.white,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                ),
                child: Text(
                  "login",
                  style: GoogleFonts.poppins(
                      fontSize: 20, fontWeight: FontWeight.normal),
                ),
              ),
              SizedBox(
                height: 40,
              ),
              Row(
                children: [
                  Text("Create new account"),
                  Spacer(),
                  TextButton(
                      onPressed: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (_) => RegisterScreen()));
                      },
                      child: Text(
                        "Sign up",
                        style: GoogleFonts.poppins(
                            fontSize: 16,
                            fontWeight: FontWeight.bold,
                            color: Colors.black),
                      ))
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
