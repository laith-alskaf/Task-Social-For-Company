import 'package:animate_do/animate_do.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:social_app_test/core/models/post_model.dart';
import 'package:social_app_test/core/utils/general_util.dart';
import 'package:social_app_test/ui/shared/colors.dart';
import 'package:social_app_test/ui/shared/custom_widget/custom_text.dart';
import 'package:social_app_test/ui/shared/extension_sizebox.dart';
import 'package:social_app_test/ui/views/home_view/comments_view/comment_view.dart';
import 'package:social_app_test/ui/views/home_view/home_widget/post_widget/row_title_post.dart';

class ContainerPost extends StatelessWidget {
  const ContainerPost(
      {super.key,
      required this.post,
      this.existWith,
      required this.body,
      required this.delay});

  final Post post;
  final bool? existWith;
  final List<String> body;
  final Duration delay;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(bottom: 15.h),
      padding: EdgeInsets.all(20.w),
      alignment: Alignment.center,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.all(Radius.circular(35.r)),
      ),
      child: Column(
        children: [
          RowTitlePost(
            name: post.user.name,
            existWith: existWith,
            time: post.time,
            profileImage: post.user.profileImage,
          ),
          (20.h).ph,
          if (post.images.isNotEmpty) ...[
            Stack(
              alignment: Alignment.bottomCenter,
              children: [
                if (post.images.length < 4)
                  Row(
                    children: [
                      ClipRRect(
                          borderRadius: BorderRadius.circular(35.r),
                          child: Image.asset(
                            post.images[0],
                            height: 360.h,
                            width: 230.w,
                            fit: BoxFit.cover,
                          )),
                      (8.w).pw,
                      Column(
                        children: [
                          ClipRRect(
                              borderRadius: BorderRadius.circular(35.r),
                              child: Image.asset(
                                post.images[1],
                                height: 180.h,
                                width: 220.w,
                                fit: BoxFit.cover,
                              )),
                          (5.h).ph,
                          ClipRRect(
                              borderRadius: BorderRadius.circular(35.r),
                              child: Image.asset(
                                post.images[2],
                                height: 180.h,
                                width: 220.w,
                                fit: BoxFit.cover,
                              )),
                        ],
                      )
                    ],
                  ),
                if (post.images.length >= 4) ...[
                  ClipRRect(
                      borderRadius: BorderRadius.circular(35.r),
                      child: Image.asset(post.images[0])),
                  Padding(
                    padding: EdgeInsetsDirectional.only(
                        start: 0.36.sw, bottom: 10.h),
                    child: Align(
                      alignment: Alignment.centerLeft,
                      child: Row(
                          mainAxisSize: MainAxisSize.min,
                          children: List.generate(post.images.length, (index) {
                            return Container(
                                margin: EdgeInsetsDirectional.only(end: 10.w),
                                width: 10.w,
                                height: 10.w,
                                decoration: BoxDecoration(
                                    color: index == 0
                                        ? AppColors.whiteColor
                                        : AppColors.grayColor,
                                    shape: BoxShape.circle));
                          })),
                    ),
                  )
                ],
              ],
            ),
            (10.h).ph,
          ],
          if (post.body.isNotEmpty) ...[
            Wrap(
                runSpacing: 5.w,
                spacing: 5.w,
                children: List.generate(body.length, (index) {
                  return RichText(
                    text: TextSpan(
                        children: body[index]
                            .characters
                            .map((e) => body[index].startsWith('@')
                                ? TextSpan(
                                    text: e,
                                    style: TextStyle(
                                        color: AppColors.textColor,
                                        fontSize: sizeTextBody,
                                        fontWeight: FontWeight.bold),
                                  )
                                : TextSpan(
                                    text: e,
                                    style: TextStyle(
                                        color: AppColors.textColor,
                                        fontSize: sizeTextBody),
                                  ))
                            .toList()),
                  );
                })),
            if (post.images.isEmpty)
              Divider(
                thickness: 3,
                height: 26.h,
                indent: 2.w,
              ),
            (10.h).ph,
          ],
          if (post.localOffers != null) ...[
            Padding(
              padding: EdgeInsetsDirectional.only(start: 5.w),
              child: Row(
                children: List.generate(post.localOffers!.length, (index) {
                  return index != 3
                      ? Container(
                          margin: EdgeInsetsDirectional.only(end: 10.w),
                          padding: EdgeInsets.all(15.w),
                          height: 50.h,
                          decoration: BoxDecoration(
                              color: AppColors.grayColor.withOpacity(0.2),
                              borderRadius: BorderRadius.circular(30.r)),
                          child: Row(
                            children: [
                              Icon(
                                Icons.local_offer_rounded,
                                color: AppColors.mainColor,
                                size: 20.w,
                              ),
                              (5.w).pw,
                              CustomText(
                                text: post.localOffers![index],
                                textType: TextStyleType.custom,
                                fontSize: 15.sp,
                              ),
                            ],
                          ),
                        )
                      : SizedBox(
                          width: 100.w,
                          child: Stack(
                            children: [
                              Container(
                                  width: 65.w,
                                  height: 65.w,
                                  decoration: BoxDecoration(
                                    shape: BoxShape.circle,
                                    color: AppColors.grayColor.withOpacity(0.1),
                                  )),
                              Positioned(
                                left: 10.w,
                                child: Container(
                                    width: 65.w,
                                    height: 65.w,
                                    decoration: BoxDecoration(
                                      shape: BoxShape.circle,
                                      color:
                                          AppColors.grayColor.withOpacity(0.1),
                                    )),
                              ),
                              Positioned(
                                left: 20.w,
                                child: Container(
                                  alignment: Alignment.center,
                                  width: 65.w,
                                  height: 65.w,
                                  decoration: BoxDecoration(
                                    shape: BoxShape.circle,
                                    color: AppColors.grayColor.withOpacity(0.4),
                                  ),
                                  child: const CustomText(
                                    text: '+3',
                                    textType: TextStyleType.bodyBig,
                                    fontWeight: FontWeight.normal,
                                  ),
                                ),
                              ),
                            ],
                          ),
                        );
                }),
              ),
            ),
            (20.h).ph,
          ],
          Padding(
            padding: EdgeInsetsDirectional.only(start: 35.w, end: 20.w),
            child: Row(
              children: [
                SvgPicture.asset('assets/images/ic_favorite.svg', width: 40.w),
                (10.w).pw,
                CustomText(
                  text: post.likes.toString(),
                  textType: TextStyleType.body,
                  textColor: AppColors.grayColor,
                  fontWeight: FontWeight.normal,
                ),
                (25.w).pw,
                GestureDetector(
                    onTap: () {
                      showCommentsPost(
                          comments: post.comments, numberLikes: post.likes);
                    },
                    child: SvgPicture.asset('assets/images/ic_comment.svg',
                        width: 40.w)),
                (10.w).pw,
                CustomText(
                  text: post.comments.length.toString(),
                  textType: TextStyleType.body,
                  textColor: AppColors.grayColor,
                  fontWeight: FontWeight.normal,
                ),
                const Spacer(),
                SvgPicture.asset('assets/images/ic_mark.svg'),
              ],
            ),
          )
        ],
      ),
    );
  }
}
