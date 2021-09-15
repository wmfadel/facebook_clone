part of 'live_feed_bloc.dart';

@immutable
abstract class LiveFeedEvent {}

class AddCommentEvent extends LiveFeedEvent {
  final Post comment;
  AddCommentEvent(this.comment);
}
