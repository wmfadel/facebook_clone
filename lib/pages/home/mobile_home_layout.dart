import 'package:facebook_clone/blocs/navigation_bloc/navigation_bloc.dart';
import 'package:facebook_clone/enums/tabs_enum.dart';
import 'package:facebook_clone/pages/explore/explore.dart';
import 'package:facebook_clone/pages/feed/feed_page.dart';
import 'package:facebook_clone/widgets/home_page/mobile_appbar.dart';
import 'package:facebook_clone/widgets/home_page/mobile_home_header.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class MobileHomeLayout extends StatelessWidget {
  const MobileHomeLayout({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return NestedScrollView(
      headerSliverBuilder: (BuildContext context, bool innerBoxIsScrolled) {
        return [
          const SliverAppBar(
              pinned: false,
              floating: true,
              automaticallyImplyLeading: false,
              backgroundColor: Colors.white,
              title: MobileHomeHeader())
        ];
      },
      body: Column(
        children: [
          const MobileAppbar(),
          Expanded(
            child: BlocConsumer<NavigationBloc, NavigationState>(
              listener: (context, NavigationState state) {},
              builder: (context, NavigationState state) {
                if (state is NavigationChange) {
                  switch (state.tab) {
                    case Tabs.home:
                      return const FeedPage();
                    case Tabs.pages:
                      return Container();
                    case Tabs.groups:
                      return Container();
                    case Tabs.watch:
                      return Container();
                    case Tabs.gaming:
                      return Container();
                    case Tabs.more:
                      return const Explore();
                  }
                } else {
                  // if initial state
                  return const FeedPage();
                }
              },
            ),
          ),
        ],
      ),
    );
  }
}
