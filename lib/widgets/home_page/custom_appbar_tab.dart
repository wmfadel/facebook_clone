import 'package:facebook_clone/blocs/navigation_cubit/tabsnavigation_cubit.dart';
import 'package:facebook_clone/enums/tabs_enum.dart';
import 'package:facebook_clone/resources/app_colors.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/flutter_svg.dart';

class CustomAppbarTab extends StatelessWidget {
  const CustomAppbarTab({
    required this.id,
    required this.icon,
    required this.name,
    this.isSelected = false,
    Key? key,
  }) : super(key: key);
  final Tabs id;
  final String icon;
  final String name;
  final bool isSelected;
  @override
  Widget build(BuildContext context) {
    return Tooltip(
      message: name,
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: kIsWeb ? 8 : 4),
        child: InkWell(
          splashColor: Colors.grey[200],
          onTap: () {
            BlocProvider.of<TabsnavigationCubit>(context).change(id);
          },
          child: SizedBox(
            height: 52,
            width: kIsWeb ? 82 : 52,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                SvgPicture.asset(
                  icon,
                  width: 24,
                  height: 24,
                  semanticsLabel: name,
                  color: isSelected ? AppColors.facebookBlue : null,
                ),
                const SizedBox(height: 10),
                if (isSelected)
                  Container(
                    height: kIsWeb ? 4 : 2,
                    width: double.maxFinite,
                    decoration: const BoxDecoration(
                      color: AppColors.facebookBlue,
                      borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(8),
                        topRight: Radius.circular(8),
                      ),
                    ),
                  )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
