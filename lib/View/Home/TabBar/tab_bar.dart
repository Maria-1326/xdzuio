import 'package:flutter/material.dart';
import 'package:xdzuio_app/core/common/custamContainer.dart';
import 'package:xdzuio_app/core/common/text.dart';
import 'package:xdzuio_app/core/utils/Themes/app_color.dart';

class CustomTabBar extends StatefulWidget {
  const CustomTabBar({super.key});

  @override
  State<CustomTabBar> createState() => _CustomTabBarState();
}

class _CustomTabBarState extends State<CustomTabBar> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: TabBar(
        unselectedLabelColor: AppColors.primaryColor,
        indicatorSize: TabBarIndicatorSize.label,
        indicator: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
            color: AppColors.primaryColor),
        dividerColor: Colors.transparent,
        tabs: [
          Tab(
            child: CustomContainer(
                borders: true,
                borderCol: AppColors.primaryColor,
                cir: 10,
                child: Align(
                  alignment: Alignment.center,
                  child: CustomTextWidget(title: "1"),
                )),
          ),
          Tab(
            child: CustomContainer(
                borders: true,
                cir: 10,
                borderCol: AppColors.primaryColor,
                child: Align(
                  alignment: Alignment.center,
                  child: CustomTextWidget(title: "2"),
                )),
          )
        ],
      ),
    );
  }
}
