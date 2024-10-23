import 'package:get/get.dart';
import 'package:social_app_test/core/models/comment_model.dart';
import 'package:social_app_test/core/models/post_model.dart';
import 'package:social_app_test/core/models/story_model.dart';
import 'package:social_app_test/core/models/user_model.dart';

class HomeController extends GetxController {
  List<Story> stories = [
    Story(
        time: '7h',
       story:'assets/images/story.png',
        user: User(
            name: 'Laith Alskaf',
            profileImage: 'assets/profile_image/ic_person1.png')),
    Story(
        time: '3h',
       story:'assets/images/story.png',
        user: User(
            name: 'Kylie Jenner',
            profileImage: 'assets/profile_image/ic_person2.png')),
    Story(
        time: '17m',
       story:'assets/images/story.png',
        user: User(
            name: 'Alex Strohl',
            profileImage: 'assets/profile_image/ic_person7.png')),
    Story(
        time: '3h',
       story:'assets/images/story.png',
        user: User(
            name: 'André Alexander',
            profileImage: 'assets/profile_image/ic_person6.png')),
    Story(
        time: '13h',
       story:'assets/images/story.png',
        user: User(
            name: 'Leen Ibrahim',
            profileImage: 'assets/profile_image/ic_person3.png')),
    Story(
        time: '47m',
       story:'assets/images/story.png',
        user: User(
            name: 'Ibrahim Yassen',
            profileImage: 'assets/profile_image/ic_person4.png')),
    Story(
        time: '2m',
       story:'assets/images/story.png',
        user: User(
            name: 'Sara Ali',
            profileImage: 'assets/profile_image/ic_person5.png')),
  ];
  List<Post> posts = [
    Post(
        time: '1w ago',
        user: User(
            name: 'André Alexander',
            profileImage: 'assets/profile_image/ic_person6.png'),
        likes: 93,
        comments: [
          Comment(
              user: User(
                  name: 'Leen Ibrahim',
                  profileImage: 'assets/profile_image/ic_person3.png'),
              text: 'Cool PIC',
              time: '1h'),
          Comment(
              user: User(
                  name: 'Sara Ali',
                  profileImage: 'assets/profile_image/ic_person5.png'),
              text: 'Sick PIC bro',
              time: '30m'),
          Comment(
              user: User(
                  name: 'Kylie Jenner',
                  profileImage: 'assets/profile_image/ic_person2.png'),
              text: 'Sick PIC bro',
              time: '16m'),
        ],
        images: [],
        body:
            'Stopped by @zoesugg today with goosey girl to see @kyliecosmetics & @kylieskin 💕 wow what a dream!!!!!!!! It’s the best experience we have!'),
    Post(
        time: '1d ago',
        user: User(
            name: 'Alex Strohl',
            profileImage: 'assets/profile_image/ic_person7.png'),
        likes: 78,
        comments: [
          Comment(
              user: User(
                  name: 'Kylie Jenner',
                  profileImage: 'assets/profile_image/ic_person2.png'),
              text: 'Cool PIC',
              time: '1h'),
          Comment(
              user: User(
                  name: 'Ibrahim Yassen',
                  profileImage: 'assets/profile_image/ic_person4.png'),
              text: 'Sick PIC bro',
              time: '30m'),
          Comment(
              user: User(
                  name: 'Ibrahim Yassen',
                  profileImage: 'assets/profile_image/ic_person4.png'),
              text: 'Sick PIC bro',
              time: '30m'),
          Comment(
              user: User(
                  name: 'Ibrahim Yassen',
                  profileImage: 'assets/profile_image/ic_person4.png'),
              text: 'Sick PIC bro',
              time: '30m'),
          Comment(
              user: User(
                  name: 'Kylie Jenner',
                  profileImage: 'assets/profile_image/ic_person2.png'),
              text: 'Cool PIC',
              time: '1h'),
        ],
        images: [
          'assets/images/ic_image.png',
          'assets/images/ic_image.png',
          'assets/images/ic_image.png',
          'assets/images/ic_image.png'
        ],
        body:
            'This is one of the best experiences that I’ve ever had in my life! the mountain view here is amazing.',
        localOffers: ['Meditation', 'Cold', 'Alberta', 'Cold']),
    Post(
        time: '2d ago',
        likes: 20,
        comments: [
          Comment(
              user: User(
                  name: 'Alex Strohl',
                  profileImage: 'assets/profile_image/ic_person7.png'),
              text: 'Cool PIC',
              time: '1h'),
          Comment(
              user: User(
                  name: 'Alex Strohl',
                  profileImage: 'assets/profile_image/ic_person7.png'),
              text: 'Sick PIC bro',
              time: '30m'),
          Comment(
              user: User(
                  name: 'Ibrahim Yassen',
                  profileImage: 'assets/profile_image/ic_person4.png'),
              text: 'Sick PIC bro',
              time: '30m'),
          Comment(
              user: User(
                  name: 'Ibrahim Yassen',
                  profileImage: 'assets/profile_image/ic_person4.png'),
              text: 'Sick PIC bro',
              time: '30m'),
          Comment(
              user: User(
                  name: 'Alex Strohl',
                  profileImage: 'assets/profile_image/ic_person7.png'),
              text: 'Sick PIC bro',
              time: '30m'),
          Comment(
              user: User(
                  name: 'Ibrahim Yassen',
                  profileImage: 'assets/profile_image/ic_person4.png'),
              text: 'Sick PIC bro',
              time: '30m'),
          Comment(
              user: User(
                  name: 'Alex Strohl',
                  profileImage: 'assets/profile_image/ic_person7.png'),
              text: 'Sick PIC bro',
              time: '30m'),
          Comment(
              user: User(
                  name: 'Alex Strohl',
                  profileImage: 'assets/profile_image/ic_person7.png'),
              text: 'Sick PIC bro',
              time: '30m'),
          Comment(
              user: User(
                  name: 'Alex Strohl',
                  profileImage: 'assets/profile_image/ic_person7.png'),
              text: 'Sick PIC bro',
              time: '30m'),
          Comment(
              user: User(
                  name: 'Ibrahim Yassen',
                  profileImage: 'assets/profile_image/ic_person4.png'),
              text: 'Sick PIC bro',
              time: '30m'),
          Comment(
              user: User(
                  name: 'Alex Strohl',
                  profileImage: 'assets/profile_image/ic_person7.png'),
              text: 'Sick PIC bro',
              time: '30m'),
          Comment(
              user: User(
                  name: 'Alex Strohl',
                  profileImage: 'assets/profile_image/ic_person7.png'),
              text: 'Sick PIC bro',
              time: '30m'),

        ],
        user: User(
            name: 'Kylie Jenner',
            profileImage: 'assets/profile_image/ic_person2.png'),
        images: [
          'assets/images/image1.jpeg',
          'assets/images/image2.jpg',
          'assets/images/image3.jpg',
        ],
        body: '')
  ];
}
