import 'package:facebook_clone/resources/app_colors.dart';
import 'package:facebook_clone/resources/images.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

class CreatePost extends StatelessWidget {
  const CreatePost({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(
        vertical: 10,
        horizontal: kIsWeb ? 80 : 8,
      ),
      child: Material(
        color: Colors.white,
        elevation: 1,
        borderRadius: BorderRadius.circular(10),
        child: Container(
          padding: const EdgeInsets.fromLTRB(15, 10, 15, 15),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              // user avatar + text field
              Row(
                mainAxisSize: MainAxisSize.max,
                children: [
                  const CircleAvatar(
                    backgroundImage: AssetImage(Images.mainUser),
                    radius: 20,
                    backgroundColor: Colors.transparent,
                  ),
                  const SizedBox(width: 8),
                  Expanded(
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
                          hintText: 'What\'s on you mind?',
                          hintStyle: const TextStyle(fontSize: 14)),
                    ),
                  ),
                ],
              ),

              const Divider(thickness: 1),

              Row(
                mainAxisSize: MainAxisSize.max,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: const [
                  CreatePostAction(
                    icon: Icons.video_camera_back_rounded,
                    color: Colors.red,
                    commonText: 'Live ',
                    extraText: 'Video',
                  ),
                  CreatePostAction(
                    icon: Icons.photo_library_rounded,
                    color: Colors.green,
                    commonText: 'Photo',
                    extraText: '/Video',
                  ),
                  CreatePostAction(
                    icon: Icons.tag_faces_sharp,
                    color: Colors.orange,
                    commonText: 'Feeling',
                    extraText: '/Activity',
                  ),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}

class CreatePostAction extends StatelessWidget {
  const CreatePostAction({
    required this.icon,
    required this.color,
    required this.commonText,
    required this.extraText,
    Key? key,
  }) : super(key: key);
  final IconData icon;
  final String commonText;
  final String extraText;
  final Color color;
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisSize: MainAxisSize.max,
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Icon(
          icon,
          color: color,
          size: 26,
        ),
        const SizedBox(width: 5),
        Text(
          '$commonText ${kIsWeb ? extraText : ''}',
          style: const TextStyle(
            fontWeight: FontWeight.bold,
            color: AppColors.bodyIconsGrey,
          ),
        )
      ],
    );
  }
}
