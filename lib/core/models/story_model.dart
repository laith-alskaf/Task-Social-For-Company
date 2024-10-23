import 'package:social_app_test/core/models/user_model.dart';

class Story {
  final User user;
  final String time;
  final String story;

  Story({
    required this.time,
    required this.story,
    required this.user,
  });
}