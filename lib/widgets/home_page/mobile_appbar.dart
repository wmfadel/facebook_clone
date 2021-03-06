import 'package:facebook_clone/blocs/navigation_cubit/tabsnavigation_cubit.dart';
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
      child: BlocConsumer<TabsnavigationCubit, TabsnavigationState>(
        listener: (BuildContext context, TabsnavigationState state) {
          if (state is TabsnavigationChange) {}
        },
        builder: (BuildContext context, TabsnavigationState state) {
          Tabs tab = BlocProvider.of<TabsnavigationCubit>(context).currentTab;
          return Row(
            mainAxisSize: MainAxisSize.max,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              CustomAppbarTab(
                id: Tabs.home,
                icon: Images.home,
                name: 'Home',
                isSelected: tab == Tabs.home ? true : false,
              ),
              CustomAppbarTab(
                id: Tabs.pages,
                icon: Images.pages,
                name: 'Pages',
                isSelected: tab == Tabs.pages ? true : false,
              ),
              CustomAppbarTab(
                id: Tabs.groups,
                icon: Images.groups,
                name: 'Groups',
                isSelected: tab == Tabs.groups ? true : false,
              ),
              CustomAppbarTab(
                id: Tabs.watch,
                icon: Images.watch,
                name: 'Watch',
                isSelected: tab == Tabs.watch ? true : false,
              ),
              CustomAppbarTab(
                id: Tabs.gaming,
                icon: Images.gaming,
                name: 'Gaming',
                isSelected: tab == Tabs.gaming ? true : false,
              ),
              CustomAppbarTab(
                id: Tabs.more,
                icon: Images.menu,
                name: 'Gaming',
                isSelected: tab == Tabs.more ? true : false,
              ),
            ],
          );
        },
      ),
    );
  }
}
