import 'package:get/get.dart';
import 'package:social_app_test/core/models/post_model.dart';
import 'package:social_app_test/core/models/story_model.dart';
import 'package:social_app_test/core/utils/general_util.dart';

class HomeController extends GetxController {
  List<StoryModel> stories = [];
  List<PostModel> posts = [];

  initData(){
    // if (storage.getPosts.isNotEmpty) {
      posts = storage.getPosts.cast<PostModel>();
    // }
    // if (storage.getStories.isNotEmpty) {
      stories = storage.getStories.cast<StoryModel>();

    // }
    update();

  }
  @override
  void onInit() {
    initData();
    super.onInit();
  }
}
