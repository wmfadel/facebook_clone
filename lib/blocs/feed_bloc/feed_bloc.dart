import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:facebook_clone/models/post.dart';
import 'package:facebook_clone/repositories/posts_repository.dart';
import 'package:flutter/cupertino.dart';
import 'package:meta/meta.dart';

part 'feed_event.dart';
part 'feed_state.dart';

class FeedBloc extends Bloc<FeedEvent, FeedState> {
  final PostsRepository _repository;
  FeedBloc(this._repository) : super(FeedInitial());

  List<Post> posts = [];

  @override
  Stream<FeedState> mapEventToState(
    FeedEvent event,
  ) async* {
    if (event is LoadFeedEvent) {
      try {
        yield FeedLoadingState();
        posts = await _repository.getPosts();
        yield FeedLoadedState(posts);
      } on Exception {
        yield FeedErrorState(
            "Couldn't fetch feed, check your connection and try again");
      }
    } else if (event is CreatePostEvent) {
      // this is wraped in try..catch because in real word adding a new post
      // will be asynchronous
      try {
        posts.insert(0, event.post);
        yield FeedLoadedState(posts);
      } on Exception {
        yield FeedErrorState(
            "Couldn't fetch feed, check your connection and try again");
      }
    }
  }
}
