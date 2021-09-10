import 'package:facebook_clone/pages/explore/explore.dart';
import 'package:facebook_clone/widgets/home_page/web_appbar.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class WebHomeLayout extends StatelessWidget {
  const WebHomeLayout({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        const WebAppbar(),
        Expanded(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisSize: MainAxisSize.max,
            children: [
              const Expanded(
                flex: 2,
                child: Explore(),
              ),
              Flexible(
                  flex: 5,
                  child: Container(
                    color: Colors.blue,
                  )),
              Flexible(
                  flex: 2,
                  child: Container(
                    color: Colors.green,
                  )),
            ],
          ),
        ),
      ],
    );
  }
}
