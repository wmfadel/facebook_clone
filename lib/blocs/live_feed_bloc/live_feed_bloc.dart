import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:facebook_clone/models/post.dart';
import 'package:meta/meta.dart';

part 'live_feed_event.dart';
part 'live_feed_state.dart';

class LiveFeedBloc extends Bloc<LiveFeedEvent, LiveFeedState> {
  LiveFeedBloc(this.post) : super(LiveFeedInitial(post));
  Post post;
  @override
  Stream<LiveFeedState> mapEventToState(
    LiveFeedEvent event,
  ) async* {
    if (event is AddCommentEvent) {
      post.comments ??= [];
      post.comments!.add(event.comment);
      yield LiveFeedChange(post);
    }
  }
}
