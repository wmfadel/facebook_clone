import 'package:facebook_clone/resources/app_colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class AppbarAction extends StatelessWidget {
  const AppbarAction({
    this.icon,
    this.image,
    required this.name,
    this.onTap,
    Key? key,
  }) : super(key: key);
  final IconData? icon;
  final String? image;
  final String name;
  final Function? onTap;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        if (onTap != null) onTap!();
      },
      child: Tooltip(
        message: name,
        child: Container(
          margin: const EdgeInsets.symmetric(horizontal: 4),
          width: 38,
          height: 38,
          child: icon != null
              ? Icon(
                  icon,
                  size: 22,
                  color: AppColors.bodyIconsGrey,
                )
              : Center(
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      SvgPicture.asset(
                        image!,
                        width: 18,
                        height: 18,
                        fit: BoxFit.fitWidth,
                        semanticsLabel: name,
                      ),
                    ],
                  ),
                ),
          decoration: const BoxDecoration(
            color: AppColors.iconBckground,
            shape: BoxShape.circle,
          ),
        ),
      ),
    );
  }
}
