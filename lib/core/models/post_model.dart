import 'package:hive/hive.dart';
import 'package:social_app_test/core/models/comment_model.dart';
import 'package:social_app_test/core/models/user_model.dart';
part 'post_model.g.dart';


@HiveType(typeId: 3)
class PostModel extends HiveObject {
  @HiveField(0)
  final String? time;

  @HiveField(1)
  final int? likes;

  @HiveField(2)
  final List<CommentModel>? comments;

  @HiveField(3)
  final UserModel? user;

  @HiveField(4)
  final List<String>? images;

  @HiveField(5)
  final String? body;

  @HiveField(6)
  final List<String>? localOffers;

  PostModel({
     this.time,
     this.likes,
     this.comments,
     this.user,
     this.images,
     this.body,
    this.localOffers,
  });
}

