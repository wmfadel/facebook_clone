import 'package:facebook_clone/pages/chat/chat.dart';
import 'package:flutter/material.dart';

class MobileChatPage extends StatelessWidget {
  static const String routeName = 'MobileChat_page';

  const MobileChatPage({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return const SafeArea(
      child: Scaffold(
        body: Chat(),
      ),
    );
  }
}
