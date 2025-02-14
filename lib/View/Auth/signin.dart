import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:responsive_sizer/responsive_sizer.dart';
import 'package:xdzuio_app/Controller/Auth_Controller/checkbox_controller.dart';
import 'package:xdzuio_app/Routes/app_routes.dart';
import 'package:xdzuio_app/core/Extension/size_box.dart';
import 'package:xdzuio_app/core/common/main_button.dart';
import 'package:xdzuio_app/core/common/text.dart';
import 'package:xdzuio_app/core/common/text_field_custam.dart';
import 'package:xdzuio_app/core/utils/Themes/app_color.dart';
import 'package:xdzuio_app/core/utils/Themes/app_images.dart';

class SignIn extends StatelessWidget {
  const SignIn({super.key});

  @override
  Widget build(BuildContext context) {
    final SignInController controller =
        Get.put(SignInController()); // Initialize Controller

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
                    title: "Sign in",
                    fontSize: 20.sp,
                  )),
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
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(
                        children: [
                          Obx(() => Checkbox(
                                activeColor: AppColors.primaryColor,
                                value: controller.isChecked.value,
                                onChanged: (value) {
                                  controller.isChecked.value = value!;
                                },
                              )),
                          CustomTextWidget(
                            title: "Remember me?",
                          ),
                        ],
                      ),
                      CustomTextWidget(
                        title: "Forgot Password?",
                        color: AppColors.primaryColor,
                      )
                    ],
                  ),
                  3.h.height,
                  MainCustomButton(
                      title: "Login",
                      backColour: AppColors.primaryColor,
                      onTap: () {
                        Navigator.pushNamed(context, AppRoutes.productpreview);
                      }),
                  3.h.height,
                  CustomTextWidget(
                    title: "Don’t have an account?",
                    fontSize: 17.sp,
                  ),
                  2.h.height,
                  MainCustomButton(
                      title: "Sign up",
                      onTap: () {
                        Navigator.pushNamed(context, AppRoutes.signup);
                      }),
                ]),
          ),
        ));
  }
}
