import 'package:facebook_clone/resources/app_colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class WebAppbarTab extends StatelessWidget {
  const WebAppbarTab({
    required this.icon,
    required this.name,
    this.isSelected = false,
    Key? key,
  }) : super(key: key);

  final String icon;
  final String name;
  final bool isSelected;
  @override
  Widget build(BuildContext context) {
    return Tooltip(
      message: name,
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 8.0),
        child: SizedBox(
          height: 52,
          width: 82,
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
                  height: 4,
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
    );
  }
}
