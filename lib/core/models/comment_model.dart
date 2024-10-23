import 'package:social_app_test/core/models/user_model.dart';

class Comment {
  final User user;
  final String text;
  final String time;

  Comment({
    required this.user,
    required this.text,
    required this.time,
  });
}