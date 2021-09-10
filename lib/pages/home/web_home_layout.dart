import 'package:facebook_clone/widgets/home_page/web_appbar.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class WebHomeLayout extends StatelessWidget {
  const WebHomeLayout({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: const [WebAppbar()],
    );
  }
}
