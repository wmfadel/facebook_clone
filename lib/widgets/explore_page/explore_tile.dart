import 'package:facebook_clone/resources/app_colors.dart';
import 'package:flutter/material.dart';

class ExploreTile extends StatelessWidget {
  final String title;
  final String image;
  const ExploreTile({required this.title, required this.image, Key? key})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListTile(
      onTap: () {},
      leading: CircleAvatar(
        radius: 15,
        backgroundImage: AssetImage(image),
        backgroundColor: Colors.transparent,
      ),
      title: Align(
        alignment: const Alignment(-1, 0),
        child: Text(
          title,
          style: const TextStyle(
            fontSize: 14,
            fontWeight: FontWeight.bold,
            color: AppColors.textBlack,
          ),
        ),
      ),
    );
  }
}
