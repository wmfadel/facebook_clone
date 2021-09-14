import 'package:facebook_clone/blocs/live_feed_cubit/live_feed_cubit.dart';
import 'package:facebook_clone/enums/visibility_enum.dart';
import 'package:facebook_clone/models/post.dart';
import 'package:facebook_clone/resources/app_colors.dart';
import 'package:facebook_clone/resources/images.dart';
import 'package:facebook_clone/widgets/feed_page/feed_comment.dart';
import 'package:facebook_clone/widgets/feed_page/post_images.dart';
import 'package:facebook_clone/widgets/feed_page/post_interaction_button.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class FeedItem extends StatelessWidget {
  final Post _post;
  FeedItem(this._post, {Key? key}) : super(key: key);
  final TextEditingController commentTextField = TextEditingController();
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
              const Padding(
                padding: EdgeInsets.symmetric(horizontal: 10),
                child: Divider(),
              ),
              if (_post.comments != null && _post.comments != null)
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 10),
                  child: Row(
                    mainAxisSize: MainAxisSize.max,
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: const [
                      Text(
                        'All Comments',
                        style: TextStyle(
                          color: AppColors.bodyIconsGrey,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      SizedBox(width: 4),
                      Icon(
                        Icons.arrow_drop_down,
                        color: AppColors.bodyIconsGrey,
                      )
                    ],
                  ),
                ),
              // add comment text field
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 10),
                child: Row(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    const CircleAvatar(
                      radius: 18,
                      backgroundImage: AssetImage(Images.mainUser),
                    ),
                    const SizedBox(width: 10),
                    Expanded(
                      child: TextField(
                        controller: commentTextField,
                        maxLines: 1,
                        minLines: 1,
                        autocorrect: true,
                        textInputAction: TextInputAction.go,
                        onSubmitted: (value) {
                          BlocProvider.of<LiveFeedCubit>(context).addComment(
                            Post(
                                id: 'xx',
                                user: User(
                                  'Dasha Taran',
                                  'https://raw.githubusercontent.com/wmfadel/facebook_clone/master/assets/images/user.jpg',
                                ),
                                text: value,
                                publishTime: DateTime.now(),
                                visibility: VisibilityEnum.public),
                          );
                          commentTextField.clear();
                          FocusScope.of(context).unfocus();
                        },
                        style: const TextStyle(fontSize: 16.0, height: 1.0),
                        decoration: InputDecoration(
                          filled: true,
                          isDense: true,
                          suffixIcon: Row(
                            mainAxisSize: MainAxisSize.min,
                            children: const [
                              Icon(Icons.tag_faces, size: 18),
                              SizedBox(width: 4),
                              Icon(Icons.camera_alt_outlined, size: 18),
                              SizedBox(width: 4),
                              Icon(Icons.gif, size: 18),
                              SizedBox(width: 4),
                              Icon(Icons.sticky_note_2_rounded, size: 18),
                              SizedBox(width: 8),
                            ],
                          ),
                          fillColor: AppColors.textfieldInnerGrey,
                          border: OutlineInputBorder(
                            borderSide: BorderSide.none,
                            borderRadius: BorderRadius.circular(90),
                          ),
                          hintText: 'Write a comment...',
                          hintStyle: const TextStyle(fontSize: 12),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              if (_post.comments != null && _post.comments != null)
                FeedComments(_post.comments!),
            ],
          ),
        ),
      ),
    );
  }
}
