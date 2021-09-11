import 'package:facebook_clone/models/post.dart';

abstract class PostsRepository {
  Future<List<Post>> getPosts();
}
