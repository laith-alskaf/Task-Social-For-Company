import 'package:hive_flutter/hive_flutter.dart';
import 'package:social_app_test/core/models/comment_model.dart';
import 'package:social_app_test/core/models/post_model.dart';
import 'package:social_app_test/core/models/story_model.dart';
import 'package:path_provider/path_provider.dart' as path_provider;
import 'package:social_app_test/core/models/user_model.dart';

class HiveRepository {
  //static string name for keys
  static String posts = 'posts';
  static String stories = 'stories';

  //static string name for boxes
  static String boxPost = "posts_box";
  static String boxStory = "stories_box";

  //Boxes
  late Box boxPosts;
  late Box boxStories;

  Future initBoxes() async {
    final appDocumentDirectory =
        await path_provider.getApplicationDocumentsDirectory();
    Hive.initFlutter(appDocumentDirectory.path);
    boxStories = await Hive.openBox(boxStory);
    boxPosts = await Hive.openBox(boxPost);
  }

  registerAdapter() {
    Hive
      ..registerAdapter(UserModelAdapter())
      ..registerAdapter(StoryModelAdapter())
      ..registerAdapter(CommentModelAdapter())
      ..registerAdapter(PostModelAdapter());
  }

  Future<void> setPosts(List<PostModel> value) async {
    await boxPosts.put(posts, value);
  }

  List<dynamic> get getPosts =>
      boxPosts.get(posts, defaultValue: <PostModel>[]);

  Future<void> setStories(List<StoryModel> value) async {
    await boxStories.put(stories, value);
  }

  List<dynamic> get getStories =>
      boxStories.get(stories, defaultValue: <StoryModel>[]);

  closeBox({required Box boxName}) {
    boxName.close();
  }
}
