class Post {
  String id;
  User user;
  String text;
  DateTime publishTime;
  Visibility visibility;
  List<String>? images;
  List<String>? likes;
  List<String>? shares;
  List<Post>? comments;

  Post({
    required this.id,
    required this.user,
    required this.text,
    required this.publishTime,
    required this.visibility,
    this.images,
    this.likes,
    this.shares,
    this.comments,
  });
}

class User {
  String name;
  String profileImage;
  User(this.name, this.profileImage);
}

enum Visibility {
  public,
  friends,
  private,
  custom,
}
