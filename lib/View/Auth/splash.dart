import 'package:flutter/material.dart';
import 'package:xdzuio_app/core/utils/Themes/app_images.dart';

class SplashScreen extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [Center(child: Image.asset(AppImages.splash))]),
    );
  }
}
