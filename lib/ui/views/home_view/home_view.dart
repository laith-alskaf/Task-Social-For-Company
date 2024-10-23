import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:social_app_test/ui/shared/colors.dart';
import 'package:social_app_test/ui/shared/extension_sizebox.dart';
import 'package:social_app_test/ui/views/home_view/home_controller.dart';
import 'package:social_app_test/ui/views/home_view/home_widget/container_post.dart';
import 'package:social_app_test/ui/views/home_view/home_widget/container_story.dart';
import 'package:social_app_test/ui/views/home_view/home_widget/story_view.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    HomeController controller = Get.put(HomeController());
    return Scaffold(
        backgroundColor: AppColors.whiteColor,
        body: Container(
          width: 1.sw,
          height: 1.sh,
          decoration: const BoxDecoration(
            image: DecorationImage(
                image: AssetImage('assets/images/im_background.png'),
                fit: BoxFit.cover),
          ),
          child: ListView(
            padding: EdgeInsets.symmetric(horizontal: 20.w),
            children: [
              (50.h).ph,
              Row(
                children: [
                  (20.w).pw,
                  SvgPicture.asset('assets/images/ic_not.svg'),
                  (100.w).pw,
                  SvgPicture.asset(
                    'assets/images/ic-socially.svg',
                    height: 35.w,
                  ),
                ],
              ),
              (20.h).ph,
              Container(
                margin: EdgeInsets.symmetric(horizontal: 20.w),
                width: 100.w,
                height: 80.h,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(60.r),
                    gradient: AppColors.backgroundColorStories),
                child: ClipRRect(
                  borderRadius: BorderRadius.all(Radius.circular(60.r)),
                  child: ListView.builder(
                      shrinkWrap: true,
                      itemCount: controller.stories.length,
                      scrollDirection: Axis.horizontal,
                      itemBuilder: (s, index) {
                        return ContainerStory(
                          profileImage:
                              controller.stories[index].user.profileImage,
                          onTap: () {
                            Get.to(()=>StoryView(story: controller.stories[index],));
                          },
                        );
                      }),
                ),
              ),
              ListView.builder(
                  padding: EdgeInsets.only(top: 15.h),
                  primary: false,
                  shrinkWrap: true,
                  itemCount: controller.posts.length,
                  itemBuilder: (s, index) {
                    List<String> words = controller.posts[index].body.split(' ');
                    return ContainerPost(
                      post: controller.posts[index],
                      existWith: index == 1 ? true : null, body: words,
                      delay: Duration(milliseconds: index*2),
                    );
                  }),
              (65.h).ph,
            ],
          ),
        ));
  }
}
