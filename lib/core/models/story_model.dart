import 'package:hive/hive.dart';
import 'package:social_app_test/core/models/user_model.dart';
part 'story_model.g.dart';

@HiveType(typeId: 1)
class StoryModel extends HiveObject {
  @HiveField(0)
  final UserModel? user;
  @HiveField(1)
  final String? time;
  @HiveField(2)
  final String? story;

  StoryModel({
    this.user,
    this.time,
    this.story,
  });
}
