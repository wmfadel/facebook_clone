part of 'feed_bloc.dart';

@immutable
abstract class FeedEvent {}

class LoadFeedEvent extends FeedEvent {}

class CreatePostEvent extends FeedEvent {
  final Post post;
  CreatePostEvent(this.post);
}
