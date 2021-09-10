import 'package:facebook_clone/resources/images.dart';
import 'package:facebook_clone/widgets/home_page/appbar_action.dart';
import 'package:facebook_clone/widgets/home_page/custom_appbar_tab.dart';
import 'package:facebook_clone/widgets/sticky_sliver.dart';
import 'package:flutter/material.dart';

class MobileAppbar extends StatelessWidget {
  const MobileAppbar({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return StickySliver(
      child: Material(
        elevation: 2,
        color: Colors.white,
        child: SizedBox(
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 8),
                child: Row(
                  children: [
                    Image.asset(
                      Images.appLogoText,
                      width: 120,
                      height: 28,
                    ),
                    const Expanded(child: SizedBox()),
                    const AppbarAction(icon: Icons.search, name: 'Search'),
                    const AppbarAction(
                        image: Images.messenger, name: 'Messages'),
                  ],
                ),
              ),
              Row(
                mainAxisSize: MainAxisSize.max,
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: const [
                  CustomAppbarTab(
                      icon: Images.home, name: 'Home', isSelected: true),
                  CustomAppbarTab(icon: Images.pages, name: 'Pages'),
                  CustomAppbarTab(icon: Images.groups, name: 'Groups'),
                  CustomAppbarTab(icon: Images.watch, name: 'Watch'),
                  CustomAppbarTab(icon: Images.gaming, name: 'Gaming'),
                  CustomAppbarTab(icon: Images.menu, name: 'More'),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
