import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:social_app_test/core/local_storage/hive_repositories.dart';
import 'package:social_app_test/core/models/comment_model.dart';
import 'package:social_app_test/core/models/post_model.dart';
import 'package:social_app_test/core/models/story_model.dart';
import 'package:social_app_test/core/models/user_model.dart';


double get sizeTextTitle => 30.sp; //30  // title home view

double get sizeTextSupHeader => 27.sp; //25   // profile name

double get sizeTextBodyBig => 22.sp; //20

double get sizeTextBody => 20.sp; //18  //menu

double get defaultSizeSmall => 18.sp; //16

double get defaultPadding => 35.w; //16

HiveRepository get storage => Get.find<HiveRepository>();


List<StoryModel> stories = [
  StoryModel(
      time: '7h',
      story:'assets/images/story.png',
      user: UserModel(
          name: 'Laith Alskaf',
          profileImage: 'assets/profile_image/ic_person1.png')),
  StoryModel(
      time: '3h',
      story:'assets/images/story.png',
      user: UserModel(
          name: 'Kylie Jenner',
          profileImage: 'assets/profile_image/ic_person2.png')),
  StoryModel(
      time: '17m',
      story:'assets/images/story.png',
      user: UserModel(
          name: 'Alex Strohl',
          profileImage: 'assets/profile_image/ic_person7.png')),
  StoryModel(
      time: '3h',
      story:'assets/images/story.png',
      user: UserModel(
          name: 'André Alexander',
          profileImage: 'assets/profile_image/ic_person6.png')),
  StoryModel(
      time: '13h',
      story:'assets/images/story.png',
      user: UserModel(
          name: 'Leen Ibrahim',
          profileImage: 'assets/profile_image/ic_person3.png')),
  StoryModel(
      time: '47m',
      story:'assets/images/story.png',
      user: UserModel(
          name: 'Ibrahim Yassen',
          profileImage: 'assets/profile_image/ic_person4.png')),
  StoryModel(
      time: '2m',
      story:'assets/images/story.png',
      user: UserModel(
          name: 'Sara Ali',
          profileImage: 'assets/profile_image/ic_person5.png')),
];
List<PostModel> posts = [
  PostModel(
      time: '1w ago',
      user: UserModel(
          name: 'André Alexander',
          profileImage: 'assets/profile_image/ic_person6.png'),
      likes: 93,
      comments: [
        CommentModel(
            user: UserModel(
                name: 'Leen Ibrahim',
                profileImage: 'assets/profile_image/ic_person3.png'),
            text: 'Cool PIC',
            time: '1h'),
        CommentModel(
            user: UserModel(
                name: 'Sara Ali',
                profileImage: 'assets/profile_image/ic_person5.png'),
            text: 'Sick PIC bro',
            time: '30m'),
        CommentModel(
            user: UserModel(
                name: 'Kylie Jenner',
                profileImage: 'assets/profile_image/ic_person2.png'),
            text: 'Sick PIC bro',
            time: '16m'),
      ],
      images: const [],
      body:
      'Stopped by @zoesugg today with goosey girl to see @kyliecosmetics & @kylieskin 💕 wow what a dream!!!!!!!! It’s the best experience we have!'),
  PostModel(
      time: '1d ago',
      user: UserModel(
          name: 'Alex Strohl',
          profileImage: 'assets/profile_image/ic_person7.png'),
      likes: 78,
      comments: [
        CommentModel(
            user: UserModel(
                name: 'Kylie Jenner',
                profileImage: 'assets/profile_image/ic_person2.png'),
            text: 'Cool PIC',
            time: '1h'),
        CommentModel(
            user: UserModel(
                name: 'Ibrahim Yassen',
                profileImage: 'assets/profile_image/ic_person4.png'),
            text: 'Sick PIC bro',
            time: '30m'),
        CommentModel(
            user: UserModel(
                name: 'Ibrahim Yassen',
                profileImage: 'assets/profile_image/ic_person4.png'),
            text: 'Sick PIC bro',
            time: '30m'),
        CommentModel(
            user: UserModel(
                name: 'Ibrahim Yassen',
                profileImage: 'assets/profile_image/ic_person4.png'),
            text: 'Sick PIC bro',
            time: '30m'),
        CommentModel(
            user: UserModel(
                name: 'Kylie Jenner',
                profileImage: 'assets/profile_image/ic_person2.png'),
            text: 'Cool PIC',
            time: '1h'),
      ],
      images: const [
        'assets/images/ic_image.png',
        'assets/images/ic_image.png',
        'assets/images/ic_image.png',
        'assets/images/ic_image.png'
      ],
      body:
      'This is one of the best experiences that I’ve ever had in my life! the mountain view here is amazing.',
      localOffers: const['Meditation', 'Cold', 'Alberta', 'Cold']),
  PostModel(
      time: '2d ago',
      likes: 20,
      comments: [
        CommentModel(
            user: UserModel(
                name: 'Alex Strohl',
                profileImage: 'assets/profile_image/ic_person7.png'),
            text: 'Cool PIC',
            time: '1h'),
        CommentModel(
            user: UserModel(
                name: 'Alex Strohl',
                profileImage: 'assets/profile_image/ic_person7.png'),
            text: 'Sick PIC bro',
            time: '30m'),
        CommentModel(
            user: UserModel(
                name: 'Ibrahim Yassen',
                profileImage: 'assets/profile_image/ic_person4.png'),
            text: 'Sick PIC bro',
            time: '30m'),
        CommentModel(
            user: UserModel(
                name: 'Ibrahim Yassen',
                profileImage: 'assets/profile_image/ic_person4.png'),
            text: 'Sick PIC bro',
            time: '30m'),
        CommentModel(
            user: UserModel(
                name: 'Alex Strohl',
                profileImage: 'assets/profile_image/ic_person7.png'),
            text: 'Sick PIC bro',
            time: '30m'),
        CommentModel(
            user: UserModel(
                name: 'Ibrahim Yassen',
                profileImage: 'assets/profile_image/ic_person4.png'),
            text: 'Sick PIC bro',
            time: '30m'),
        CommentModel(
            user: UserModel(
                name: 'Alex Strohl',
                profileImage: 'assets/profile_image/ic_person7.png'),
            text: 'Sick PIC bro',
            time: '30m'),
        CommentModel(
            user: UserModel(
                name: 'Alex Strohl',
                profileImage: 'assets/profile_image/ic_person7.png'),
            text: 'Sick PIC bro',
            time: '30m'),
        CommentModel(
            user: UserModel(
                name: 'Alex Strohl',
                profileImage: 'assets/profile_image/ic_person7.png'),
            text: 'Sick PIC bro',
            time: '30m'),
        CommentModel(
            user: UserModel(
                name: 'Ibrahim Yassen',
                profileImage: 'assets/profile_image/ic_person4.png'),
            text: 'Sick PIC bro',
            time: '30m'),
        CommentModel(
            user: UserModel(
                name: 'Alex Strohl',
                profileImage: 'assets/profile_image/ic_person7.png'),
            text: 'Sick PIC bro',
            time: '30m'),
        CommentModel(
            user: UserModel(
                name: 'Alex Strohl',
                profileImage: 'assets/profile_image/ic_person7.png'),
            text: 'Sick PIC bro',
            time: '30m'),

      ],
      user: UserModel(
          name: 'Kylie Jenner',
          profileImage: 'assets/profile_image/ic_person2.png'),
      images: const [
        'assets/images/image1.jpeg',
        'assets/images/image2.jpg',
        'assets/images/image3.jpg',
      ],
      body: '')
];