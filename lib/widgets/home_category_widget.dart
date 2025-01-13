import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:resturent_app/constant/constant.dart';

class HomeCategoryWidget extends StatelessWidget {
   HomeCategoryWidget(
      {super.key, required this.nmetitle, this.clr, this.isselected = false});
  final nmetitle;
  final clr;
  bool isselected;
  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: () {},
      style: ElevatedButton.styleFrom(
          minimumSize: Size(95, 41),
          backgroundColor: clr,
          foregroundColor: isselected?Colors.white:Colors.black,
          elevation: 5,
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
          shadowColor: Colors.black),
      child: Text(
        nmetitle,
        style: GoogleFonts.inter(fontSize: 16),
      ),
    );
  }
}
