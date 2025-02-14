import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:responsive_sizer/responsive_sizer.dart';
import 'package:xdzuio_app/View/Home/TabBar/tab_bar.dart';
import 'package:xdzuio_app/core/Extension/size_box.dart';
import 'package:xdzuio_app/core/common/custamContainer.dart';
import 'package:xdzuio_app/core/common/text.dart';
import 'package:xdzuio_app/core/utils/Themes/app_color.dart';
import 'package:xdzuio_app/core/utils/Themes/app_images.dart';

class ProductPreview extends StatelessWidget {
  const ProductPreview({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: AppColors.backgroundColor,
        body: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              CustomContainer(
                height: 28.h,
                width: double.infinity,
                col: Colors.white,
                shadow: true,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    SafeArea(
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Column(
                          children: [
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Row(
                                  mainAxisSize: MainAxisSize.min,
                                  children: [
                                    IconButton(
                                      icon: SvgPicture.asset(
                                        AppImages.dehaze,
                                        height: 2.4.h,
                                        // width: 2.4.h,
                                      ),
                                      onPressed: () {},
                                    ),
                                    IconButton(
                                      icon: SvgPicture.asset(
                                        AppImages.profile,
                                        height: 2.4.h,
                                        //  width: 2.4.h,
                                      ),
                                      onPressed: () {},
                                    ),
                                  ],
                                ),
                                Image.asset(
                                  AppImages.xdzuio,
                                ),
                                Row(
                                  children: [
                                    IconButton(
                                      icon: SvgPicture.asset(
                                        AppImages.search,
                                        height: 2.4.h,
                                        width: 2.4.h,
                                      ),
                                      onPressed: () {},
                                    ),
                                    IconButton(
                                      icon: SvgPicture.asset(
                                        AppImages.groceryStore,
                                        height: 2.4.h,
                                        width: 2.4.h,
                                      ),
                                      onPressed: () {},
                                    ),
                                  ],
                                ),
                              ],
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Row(
                                  children: [
                                    CustomTextWidget(
                                      title: "Male > ",
                                      fontWeight: FontWeight.w500,
                                      fontSize: 20,
                                    ),
                                    CustomTextWidget(
                                      title: "Clothing",
                                      color: AppColors.textgray,
                                      fontSize: 20,
                                    ),
                                  ],
                                ),
                                Row(
                                  children: [
                                    IconButton(
                                      icon: SvgPicture.asset(
                                        AppImages.gridview,
                                        height: 2.4.h,
                                        width: 2.4.h,
                                      ),
                                      onPressed: () {},
                                    ),
                                    IconButton(
                                      icon: SvgPicture.asset(
                                        AppImages.listview,
                                        height: 2.4.h,
                                        width: 2.4.h,
                                      ),
                                      onPressed: () {},
                                    ),
                                  ],
                                ),
                              ],
                            ),
                            2.h.height,
                            CustomTabBar()
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ]));
  }
}


// import 'package:flutter/material.dart';
// import 'package:flutter_svg/svg.dart';
// import 'package:responsive_sizer/responsive_sizer.dart';
// import 'package:xdzuio_app/core/utils/Themes/app_images.dart';

// class ProductPreview extends StatelessWidget {
//   const ProductPreview({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         backgroundColor: Colors.white,
//         elevation: 0,
//         leading: Row(
//           children: [
//             IconButton(
//               icon: SvgPicture.asset(
//                 AppImages.dehaze,
//                 height: 2.4.h,
//                 width: 2.4.h,
//               ),
//               onPressed: () {},
//             ),
//             IconButton(
//               icon: SvgPicture.asset(
//                 AppImages.profile,
//                 height: 2.4.h,
//                 width: 2.4.h,
//               ),
//               onPressed: () {},
//             ),
//           ],
//         ),
//         centerTitle: true,
//         title: Image.asset(
//           AppImages.xdzuio,
//         ),
//         actions: [
//           IconButton(
//             icon: Icon(Icons.search, color: Colors.black),
//             onPressed: () {},
//           ),
//           IconButton(
//             icon: Icon(Icons.shopping_cart, color: Colors.black),
//             onPressed: () {},
//           ),
//         ],
//       ),
//       body: Column(
//         children: [],
//       ),
//     );
//   }
// }
