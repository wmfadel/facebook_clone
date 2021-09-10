import 'package:facebook_clone/blocs/cubit/tabsnavigation_cubit.dart';
import 'package:facebook_clone/enums/tabs_enum.dart';
import 'package:facebook_clone/resources/app_colors.dart';
import 'package:facebook_clone/resources/images.dart';
import 'package:facebook_clone/widgets/home_page/appbar_action.dart';
import 'package:facebook_clone/widgets/home_page/custom_appbar_tab.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class WebAppbar extends StatelessWidget {
  const WebAppbar({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Material(
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
                  const AppbarAction(icon: Icons.search, name: 'Search'),
              ],
            ),

            BlocConsumer<TabsnavigationCubit, TabsnavigationState>(
              listener: (BuildContext context, TabsnavigationState state) {
                if (state is TabsnavigationChange) {
                  debugPrint('new tab ${state.tab}');
                }
              },
              builder: (BuildContext context, TabsnavigationState state) {
                Tabs tab =
                    BlocProvider.of<TabsnavigationCubit>(context).currentTab;
                return Row(
                  mainAxisSize: MainAxisSize.min,
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
                  ],
                );
              },
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
                  'Dasha Taran',
                  style: TextStyle(
                    color: AppColors.textBlack,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                SizedBox(width: 8),
                AppbarAction(icon: Icons.apps_rounded, name: 'Menu'),
                AppbarAction(image: Images.messenger, name: 'Messages'),
                AppbarAction(icon: Icons.notifications, name: 'Notifications'),
                AppbarAction(icon: Icons.arrow_drop_down, name: 'Account'),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
