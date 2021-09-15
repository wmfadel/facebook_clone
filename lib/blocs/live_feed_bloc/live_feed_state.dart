part of 'live_feed_bloc.dart';

@immutable
abstract class LiveFeedState {
  final Post post;
  const LiveFeedState(this.post);
}

class LiveFeedInitial extends LiveFeedState {
  const LiveFeedInitial(Post post) : super(post);
}

class LiveFeedChange extends LiveFeedState {
  const LiveFeedChange(Post post) : super(post);
}
