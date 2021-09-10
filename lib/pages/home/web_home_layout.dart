import 'package:facebook_clone/resources/app_colors.dart';
import 'package:facebook_clone/resources/images.dart';
import 'package:facebook_clone/widgets/home_page/web_appbar_action.dart';
import 'package:facebook_clone/widgets/home_page/web_appbar_tab.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class WebHomeLayout extends StatelessWidget {
  const WebHomeLayout({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Material(
          elevation: 4,
          color: Colors.white,
          child: Container(
            height: 52,
            padding: const EdgeInsets.symmetric(horizontal: 8),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                // facebook app logo
                Row(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Image.asset(
                      Images.appLogo,
                      width: 42,
                      height: 42,
                    ),
                    const SizedBox(width: 10),
                    // appbar search field
                    if (MediaQuery.of(context).size.width > 1030)
                      SizedBox(
                        width: 180,
                        height: 32,
                        child: TextField(
                          maxLines: 1,
                          minLines: 1,
                          autocorrect: true,
                          decoration: InputDecoration(
                              filled: true,
                              isDense: true,
                              fillColor: AppColors.textfieldInnerGrey,
                              border: OutlineInputBorder(
                                borderSide: BorderSide.none,
                                borderRadius: BorderRadius.circular(90),
                              ),
                              prefixIcon: const Icon(Icons.search),
                              hintText: 'Search Facebook',
                              hintStyle: const TextStyle(fontSize: 12)),
                        ),
                      ),
                    if (MediaQuery.of(context).size.width <= 1030)
                      const WebAppbarAction(icon: Icons.search, name: 'Search'),
                  ],
                ),

                Row(
                  mainAxisSize: MainAxisSize.min,
                  children: const [
                    WebAppbarTab(
                        icon: Images.home, name: 'Home', isSelected: true),
                    WebAppbarTab(icon: Images.pages, name: 'Pages'),
                    WebAppbarTab(icon: Images.groups, name: 'Groups'),
                    WebAppbarTab(icon: Images.watch, name: 'Watch'),
                    WebAppbarTab(icon: Images.gaming, name: 'Gaming'),
                  ],
                ),

                Row(
                  mainAxisSize: MainAxisSize.min,
                  children: const [
                    CircleAvatar(
                      radius: 15,
                      backgroundImage: AssetImage(Images.mainUser),
                    ),
                    SizedBox(width: 5),
                    Text(
                      'Mohamed',
                      style: TextStyle(
                        color: AppColors.textBlack,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    SizedBox(width: 8),
                    WebAppbarAction(icon: Icons.apps_rounded, name: 'Menu'),
                    WebAppbarAction(
                        icon: Icons.chat_bubble_rounded, name: 'Messages'),
                    WebAppbarAction(
                        icon: Icons.notifications, name: 'Notifications'),
                    WebAppbarAction(
                        icon: Icons.arrow_drop_down, name: 'Account'),
                  ],
                ),
              ],
            ),
          ),
        )
      ],
    );
  }
}
