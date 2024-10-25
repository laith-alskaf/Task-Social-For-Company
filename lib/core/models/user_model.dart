import 'package:hive/hive.dart';
part 'user_model.g.dart';

@HiveType(typeId: 0)
class UserModel extends HiveObject{
  @HiveField(0)
  final String? name;
  @HiveField(1)
  final String? profileImage;

  UserModel({
    this.name,
    this.profileImage,
  });
}

