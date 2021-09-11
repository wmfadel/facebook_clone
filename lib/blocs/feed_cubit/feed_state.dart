part of 'feed_cubit.dart';

@immutable
abstract class FeedState {}

class FeedInitial extends FeedState {}

class FeedLoadingState extends FeedState {}

class FeedLoadedState extends FeedState {
  final List<Post> feedList;
  FeedLoadedState(this.feedList);
}

class FeedErrorState extends FeedState {
  final String message;
  FeedErrorState(this.message);
}
