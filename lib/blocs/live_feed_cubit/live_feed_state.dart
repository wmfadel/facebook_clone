part of 'live_feed_cubit.dart';

@immutable
abstract class LiveFeedState {}

class LiveFeedInitial extends LiveFeedState {
  final Post post;
  LiveFeedInitial(this.post);
}

class LiveFeedChange extends LiveFeedState {
  final Post post;
  LiveFeedChange(this.post);
}
