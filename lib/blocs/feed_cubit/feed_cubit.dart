import 'package:bloc/bloc.dart';
import 'package:facebook_clone/models/post.dart';
import 'package:facebook_clone/repositories/posts_repository.dart';
import 'package:flutter/cupertino.dart';
import 'package:meta/meta.dart';

part 'feed_state.dart';

class FeedCubit extends Cubit<FeedState> {
  final PostsRepository _repository;
  FeedCubit(this._repository) : super(FeedInitial());

  List<Post> posts = [];
  getPosts() async {
    try {
      emit(FeedLoadingState());
      posts = await _repository.getPosts();
      emit(FeedLoadedState(posts));
    } on Exception {
      emit(FeedErrorState(
          "Couldn't fetch feed, check your connection and try again"));
    }
  }

  createPost(Post post) {
    posts.insert(0, post);
    emit(FeedChangedState(posts));
  }
}
