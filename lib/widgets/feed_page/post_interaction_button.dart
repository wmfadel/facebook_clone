import 'package:facebook_clone/resources/app_colors.dart';
import 'package:flutter/material.dart';

class PostInteraction extends StatelessWidget {
  const PostInteraction({
    required this.icon,
    required this.text,
    Key? key,
  }) : super(key: key);

  final String text;
  final IconData icon;
  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: TextButton(
          onPressed: () {},
          child: Row(
            mainAxisSize: MainAxisSize.max,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Icon(
                icon,
                size: 20,
                color: AppColors.bodyIconsGrey,
              ),
              const SizedBox(width: 8),
              Text(
                text,
                style: const TextStyle(
                  color: Colors.grey,
                  fontSize: 12,
                  fontWeight: FontWeight.bold,
                ),
              )
            ],
          )),
    );
  }
}
