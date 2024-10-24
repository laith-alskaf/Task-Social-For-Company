import 'package:animate_do/animate_do.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:social_app_test/core/models/story_model.dart';
import 'package:social_app_test/ui/shared/colors.dart';
import 'package:social_app_test/ui/shared/custom_widget/custom_text.dart';
import 'package:social_app_test/ui/shared/extension_sizebox.dart';
import 'package:story/story.dart';

class StoryView extends StatelessWidget {
  const StoryView({super.key, required this.story});

  final StoryModel story;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ZoomIn(
          child: StoryPageView(
        indicatorHeight: 5.h,
        itemBuilder: (context, pageIndex, storyIndex) {
          return Stack(
            children: [
              Positioned.fill(
                child: Image.asset(
                  story.story!,
                  fit: BoxFit.contain,
                ),
              ),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 20.w, vertical: 45.h),
                child: Align(
                  alignment: Alignment.topCenter,
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      (85.w).pw,
                      CustomText(
                        text: story.user!.name!,
                        textType: TextStyleType.subtitle,
                        textColor: AppColors.whiteColor,
                        topPadding: 10.h,
                        fontWeight: FontWeight.bold,
                      ),
                      (15.w).pw,
                      CustomText(
                        text: story.time!,
                        textType: TextStyleType.body,
                        textColor: AppColors.whiteColor.withOpacity(0.8),
                      ),
                      const Spacer(),
                      SvgPicture.asset(
                        'assets/images/ic_down.svg',
                        width: 65.w,
                      )
                    ],
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsetsDirectional.only(bottom: 35.h, end: 25.w),
                child: Align(
                    alignment: AlignmentDirectional.bottomEnd,
                    child: SvgPicture.asset(
                      'assets/images/ic_favorite_wight.svg',
                      width: 45.w,
                    )),
              ),
              Padding(
                padding:
                    EdgeInsetsDirectional.only(top: 0.75.sh, start: 0.65.sw),
                child: IntrinsicWidth(
                  child: Container(
                    padding: EdgeInsets.all(10.w),
                    decoration: BoxDecoration(
                        color: AppColors.whiteColor,
                        borderRadius: BorderRadius.circular(35.r)),
                    child: Row(
                      children: [
                        Icon(
                          Icons.local_offer_rounded,
                          size: 20.w,
                          color:const Color(0xFF7662B3)

                        ),
                        (5.w).pw,
                        CustomText(
                          text: 'Meditation',
                          textType: TextStyleType.custom,
                          fontSize: 15.sp,
                          textColor: const Color(0xFF7662B3),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ],
          );
        },
        storyLength: (pageIndex) {
          return 1;
        },
        onPageLimitReached: () {
          Get.back();
        },
        pageLength: 1,
        gestureItemBuilder: (context, pageIndex, storyIndex) {
          return GestureDetector(
            onTap: () {
              Get.back();
            },
            child: Align(
              alignment: Alignment.topLeft,
              child: Padding(
                  padding: EdgeInsetsDirectional.only(top: 45.h, start: 30.w),
                  child: SvgPicture.asset(
                    'assets/images/ic_back.svg',
                    width: 65.w,
                  )),
            ),
          );
        },
      )),
    );
  }
}
