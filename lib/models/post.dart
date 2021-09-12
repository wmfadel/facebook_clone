import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

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

  String getFormatedDate() {
    if (publishTime.difference(DateTime.now()) < const Duration(minutes: 1)) {
      return '${DateTime.now().difference(publishTime).inSeconds} s';
    } else if (publishTime.difference(DateTime.now()) <
        const Duration(hours: 1)) {
      return '${publishTime.difference(DateTime.now()).inMinutes} m';
    } else if (publishTime.difference(DateTime.now()) <
        const Duration(days: 1)) {
      return '${publishTime.difference(DateTime.now()).inHours} h';
    } else {
      return DateFormat('MMMM d, h:m a').format(publishTime);
    }
  }

  IconData getVisibilityIcon() {
    switch (visibility) {
      case Visibility.public:
        return Icons.filter_vintage;
      case Visibility.private:
        return Icons.lock;
      case Visibility.friends:
        return Icons.group;
      case Visibility.custom:
        return Icons.settings;
    }
  }
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
