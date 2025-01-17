import 'package:flutter/material.dart';
import 'package:get_storage/get_storage.dart';
import 'package:resturent_app/constant/constant.dart';
import 'package:resturent_app/controller/login_provider.dart';
import 'package:resturent_app/controller/register_provider.dart';
import 'package:resturent_app/pages/home.dart';
import 'package:resturent_app/pages/onboarding.dart';
import 'package:provider/provider.dart';

void main() async {
  await GetStorage.init();
  final box = GetStorage();
  final hasdate = box.hasData(isloggedIn);
  runApp(
    MultiProvider(
      providers: [
        ChangeNotifierProvider<RegisterProvider>(
            create: (_) => RegisterProvider()),
        ChangeNotifierProvider<LoginProvider>(create: (_) => LoginProvider())
      ],
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        home: hasdate? HomeScreen() :OnboardingScreen(),
      ),
    ),
  );
}
