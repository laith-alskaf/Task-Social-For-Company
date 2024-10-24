import 'package:hive/hive.dart';
import 'package:social_app_test/core/models/user_model.dart';
part 'comment_model.g.dart';


@HiveType(typeId: 2)
class CommentModel extends HiveObject {
  @HiveField(0)
  final UserModel? user;
  @HiveField(1)
  final String? time;
  @HiveField(2)
  final String? text;

  CommentModel({
    this.user,
    this.time,
    this.text,
  });
}

