import 'package:facebook_clone/resources/app_colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class ChatTile extends StatelessWidget {
  final String name;
  final String image;
  const ChatTile({required this.name, required this.image, Key? key})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListTile(
      onTap: () {},
      leading: CircleAvatar(
        radius: 15,
        child: SvgPicture.asset(
          image,
          width: 30,
          height: 30,
          fit: BoxFit.fitWidth,
          semanticsLabel: name,
        ),
        backgroundColor: Colors.transparent,
      ),
      title: Align(
        alignment: const Alignment(-1, 0),
        heightFactor: 0.85,
        child: Text(
          name,
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
