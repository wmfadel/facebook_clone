import 'package:facebook_clone/blocs/navigation_bloc/navigation_bloc.dart';
import 'package:facebook_clone/enums/tabs_enum.dart';
import 'package:facebook_clone/resources/images.dart';
import 'package:facebook_clone/widgets/home_page/custom_appbar_tab.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class MobileAppbar extends StatelessWidget {
  const MobileAppbar({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Material(
      elevation: 2,
      color: Colors.white,
      child: BlocConsumer<NavigationBloc, NavigationState>(
        listener: (BuildContext context, NavigationState state) {},
        builder: (BuildContext context, NavigationState state) {
          return Row(
            mainAxisSize: MainAxisSize.max,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              CustomAppbarTab(
                id: Tabs.home,
                icon: Images.home,
                name: 'Home',
                isSelected: state.tab == Tabs.home ? true : false,
              ),
              CustomAppbarTab(
                id: Tabs.pages,
                icon: Images.pages,
                name: 'Pages',
                isSelected: state.tab == Tabs.pages ? true : false,
              ),
              CustomAppbarTab(
                id: Tabs.groups,
                icon: Images.groups,
                name: 'Groups',
                isSelected: state.tab == Tabs.groups ? true : false,
              ),
              CustomAppbarTab(
                id: Tabs.watch,
                icon: Images.watch,
                name: 'Watch',
                isSelected: state.tab == Tabs.watch ? true : false,
              ),
              CustomAppbarTab(
                id: Tabs.gaming,
                icon: Images.gaming,
                name: 'Gaming',
                isSelected: state.tab == Tabs.gaming ? true : false,
              ),
              CustomAppbarTab(
                id: Tabs.more,
                icon: Images.menu,
                name: 'Gaming',
                isSelected: state.tab == Tabs.more ? true : false,
              ),
            ],
          );
        },
      ),
    );
  }
}
