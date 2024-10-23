import 'package:social_app_test/core/models/comment_model.dart';
import 'package:social_app_test/core/models/user_model.dart';

class Post {
  final User user;
  final String time;
  final String body;
  final List<String> images;
  final List<String>? localOffers;
  final List<Comment> comments;
  final int likes;

  Post({
    required this.time,
    required this.likes,
    required this.comments,
    required this.user,
    required this.images,
    required this.body,
    this.localOffers,
  });
}
