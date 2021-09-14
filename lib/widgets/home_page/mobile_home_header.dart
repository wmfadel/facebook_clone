import 'package:facebook_clone/pages/chat/mobile_chat_page.dart';
import 'package:facebook_clone/resources/images.dart';
import 'package:facebook_clone/widgets/home_page/appbar_action.dart';
import 'package:flutter/material.dart';

class MobileHomeHeader extends StatelessWidget {
  const MobileHomeHeader({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 8),
      child: Row(
        mainAxisSize: MainAxisSize.max,
        children: [
          Image.asset(
            Images.appLogoText,
            width: 120,
            height: 28,
          ),
          const Expanded(child: SizedBox()),
          const AppbarAction(icon: Icons.search, name: 'Search'),
          AppbarAction(
            image: Images.messenger,
            name: 'Messages',
            onTap: () {
              Navigator.of(context).pushNamed(MobileChatPage.routeName);
            },
          ),
        ],
      ),
    );
  }
}
