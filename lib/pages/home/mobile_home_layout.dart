import 'package:facebook_clone/widgets/home_page/mobile_appbar.dart';
import 'package:flutter/material.dart';

class MobileHomeLayout extends StatelessWidget {
  const MobileHomeLayout({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return CustomScrollView(
      slivers: [
        const MobileAppbar(),
        ...List<int>.generate(5, (index) => index).map(
          (e) => SliverToBoxAdapter(
            child: Container(
              height: 300,
              color: Colors.red,
              margin: const EdgeInsets.symmetric(vertical: 5),
            ),
          ),
        ),
      ],
    );
  }
}
