import 'package:bloc/bloc.dart';
import 'package:facebook_clone/models/post.dart';
import 'package:flutter/cupertino.dart';
import 'package:meta/meta.dart';

part 'live_feed_state.dart';

class LiveFeedCubit extends Cubit<LiveFeedState> {
  Post post;
  LiveFeedCubit(this.post) : super(LiveFeedInitial(post));

  addComment(Post comment) {
    post.comments ??= [];
    post.comments!.add(comment);
    emit(LiveFeedChange(post));
  }
}
