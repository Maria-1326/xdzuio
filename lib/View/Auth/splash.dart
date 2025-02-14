import 'dart:async';
import 'package:flutter/material.dart';
import 'package:xdzuio_app/Routes/app_routes.dart';
import 'package:xdzuio_app/core/utils/Themes/app_color.dart';
import 'package:xdzuio_app/core/utils/Themes/app_images.dart';

class SplashScreen extends StatefulWidget {
  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  void initState() {
    super.initState();
    Timer(const Duration(seconds: 2), () {
      Navigator.pushNamed(context, AppRoutes.signin);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.backgroundColor,
      body: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [Center(child: Image.asset(AppImages.splash))]),
      bottomNavigationBar: Image.asset(AppImages.text),
    );
  }
}
