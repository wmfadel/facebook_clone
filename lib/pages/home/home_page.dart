import 'package:facebook_clone/pages/home/mobile_home_layout.dart';
import 'package:facebook_clone/pages/home/web_home_layout.dart';
import 'package:facebook_clone/resources/app_colors.dart';
import 'package:flutter/material.dart';
import 'package:responsive_builder/responsive_builder.dart';

class HomePage extends StatelessWidget {
  static const String routeName = '/';

  const HomePage({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.backgound,
      body: SafeArea(
        child: ScreenTypeLayout(
          mobile: const MobileHomeLayout(),
          desktop: const WebHomeLayout(),
          breakpoints: const ScreenBreakpoints(
            tablet: 600,
            desktop: 950,
            watch: 300,
          ),
        ),
      ),
    );
  }
}
