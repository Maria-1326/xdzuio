import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:responsive_sizer/responsive_sizer.dart';
import 'package:xdzuio_app/Routes/app_routes.dart';
import 'package:xdzuio_app/core/Extension/size_box.dart';
import 'package:xdzuio_app/core/common/main_button.dart';
import 'package:xdzuio_app/core/common/text.dart';
import 'package:xdzuio_app/core/common/text_field_custam.dart';
import 'package:xdzuio_app/core/utils/Themes/app_color.dart';
import 'package:xdzuio_app/core/utils/Themes/app_images.dart';

class SignUp extends StatelessWidget {
  const SignUp({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          centerTitle: true,
          title: Image.asset(
            AppImages.xdzuio,
          ),
          leading: IconButton(
            icon: SvgPicture.asset(
              AppImages.dehaze,
              height: 2.4.h,
              width: 2.4.h,
            ),
            onPressed: () {},
          ),
        ),
        backgroundColor: AppColors.backgroundColor,
        body: SingleChildScrollView(
          child: Padding(
            padding: EdgeInsets.all(16.0),
            child: Column(
                // mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Center(
                      child: CustomTextWidget(
                    title: "Sign up",
                    fontSize: 20.sp,
                  )),
                  2.h.height,
                  CustomTextField(
                    hintText: "First name",
                    keyboardType: TextInputType.emailAddress,
                  ),
                  2.h.height,
                  CustomTextField(
                    hintText: "Last name",
                    keyboardType: TextInputType.emailAddress,
                  ),
                  2.h.height,
                  CustomTextField(
                    hintText: "E-mail",
                    keyboardType: TextInputType.emailAddress,
                  ),
                  2.h.height,
                  CustomTextField(
                    hintText: "Password",
                    keyboardType: TextInputType.text,
                    obscureText: true,
                  ),
                  2.h.height,
                  CustomTextField(
                    hintText: "Confirm Password",
                    keyboardType: TextInputType.text,
                    obscureText: true,
                  ),
                  3.h.height,
                  MainCustomButton(
                      title: "Sign up",
                      backColour: AppColors.primaryColor,
                      onTap: () {
                        Navigator.pushNamed(context, AppRoutes.productpreview);
                      }),
                  3.h.height,
                  CustomTextWidget(
                    title: "Already have an account?",
                    fontSize: 17.sp,
                  ),
                  2.h.height,
                  MainCustomButton(
                      title: "Sign in",
                      onTap: () {
                        Navigator.pushNamed(context, AppRoutes.signin);
                      }),
                ]),
          ),
        ));
  }
}
