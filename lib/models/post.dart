import 'package:facebook_clone/enums/visibility_enum.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class Post {
  String id;
  User user;
  String text;
  DateTime publishTime;
  VisibilityEnum visibility;
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
      return '0 m';
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
      case VisibilityEnum.public:
        return Icons.public;
      case VisibilityEnum.private:
        return Icons.lock;
      case VisibilityEnum.friends:
        return Icons.group;
      case VisibilityEnum.custom:
        return Icons.settings;
    }
  }
}

class User {
  String name;
  String profileImage;
  User(this.name, this.profileImage);
}
