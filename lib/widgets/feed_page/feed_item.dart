import 'package:facebook_clone/enums/visibility_enum.dart';
import 'package:facebook_clone/models/post.dart';
import 'package:facebook_clone/resources/app_colors.dart';
import 'package:facebook_clone/resources/images.dart';
import 'package:facebook_clone/widgets/feed_page/post_images.dart';
import 'package:facebook_clone/widgets/feed_page/post_interaction_button.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';

class FeedItem extends StatelessWidget {
  final Post _post;
  const FeedItem(this._post, {Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin:
          const EdgeInsets.symmetric(vertical: 8, horizontal: kIsWeb ? 80 : 0),
      child: Material(
        color: Colors.white,
        elevation: 1,
        borderRadius: kIsWeb ? BorderRadius.circular(10) : null,
        child: Container(
          padding: const EdgeInsets.symmetric(vertical: 10),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisSize: MainAxisSize.min,
            children: [
              // user + data + visibility
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 10),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    CircleAvatar(
                      radius: 20,
                      backgroundColor: Colors.transparent,
                      backgroundImage: NetworkImage(_post.user.profileImage),
                    ),
                    const SizedBox(width: 10),
                    // name + date + visibility
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        Text(
                          _post.user.name,
                          style: const TextStyle(
                            color: AppColors.textBlack,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        const SizedBox(height: 4),
                        Row(
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            Text(
                              '${_post.getFormatedDate()} · ',
                              style: const TextStyle(fontSize: 12),
                            ),
                            Icon(
                              _post.getVisibilityIcon(),
                              size: 10,
                            )
                          ],
                        )
                      ],
                    ),
                    const Expanded(child: SizedBox()),
                    IconButton(
                      onPressed: () {},
                      icon: const Icon(
                        Icons.more_horiz,
                      ),
                    ),
                  ],
                ),
              ),
              const SizedBox(height: 10),
              // post text
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 10),
                child: Text(
                  _post.text,
                  style: const TextStyle(color: AppColors.textBlack),
                ),
              ),
              const SizedBox(height: 10),
              if (_post.images != null && _post.images!.isNotEmpty)
                PostImages(_post.images!),
              const SizedBox(height: 10),
              // likes, comments and shares count texts
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 10),
                child: Row(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    // show likes icon and count text only if there is likes
                    if (_post.likes != null && _post.likes!.isNotEmpty) ...[
                      Image.asset(
                        Images.like,
                        width: 18,
                        height: 18,
                        fit: BoxFit.fill,
                      ),
                      const SizedBox(width: 8),
                      Text('${_post.likes?.length ?? 0}'),
                    ],
                    const Expanded(child: SizedBox()),
                    // show number of comments only if there is comments
                    // check for null first because the comments list is
                    // List<String>? , then check if empty, same for shares.
                    if (_post.comments != null && _post.comments!.isNotEmpty)
                      Text('${_post.comments!.length} Comments'),
                    // take this space between comments and shares only
                    // if there is values in both of them
                    if (_post.shares != null && _post.comments != null)
                      const SizedBox(width: 8),
                    if (_post.shares != null && _post.shares!.isNotEmpty)
                      Text('${_post.shares!.length} Shares'),
                  ],
                ),
              ),

              const Padding(
                padding: EdgeInsets.symmetric(horizontal: 10),
                child: Divider(),
              ),
// like, comment and share buttons
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 10),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    const PostInteraction(
                        icon: Icons.thumb_up_alt_outlined, text: 'Like'),
                    const PostInteraction(
                        icon: Icons.chat_bubble_outline, text: 'Comment'),
                    if (_post.visibility == VisibilityEnum.public)
                      const PostInteraction(
                          icon: Icons.reply_rounded, text: 'Share'),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
