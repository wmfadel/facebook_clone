import 'package:facebook_clone/resources/app_colors.dart';
import 'package:flutter/material.dart';

class WebAppbarAction extends StatelessWidget {
  const WebAppbarAction({
    required this.icon,
    required this.name,
    Key? key,
  }) : super(key: key);
  final IconData icon;
  final String name;
  @override
  Widget build(BuildContext context) {
    return Tooltip(
      message: name,
      child: Container(
        margin: const EdgeInsets.symmetric(horizontal: 4),
        width: 38,
        height: 38,
        child: Icon(icon, size: 22),
        decoration: const BoxDecoration(
          color: AppColors.iconBckground,
          shape: BoxShape.circle,
        ),
      ),
    );
  }
}
