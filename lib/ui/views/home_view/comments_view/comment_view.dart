import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:social_app_test/core/models/comment_model.dart';
import 'package:social_app_test/ui/shared/colors.dart';
import 'package:social_app_test/ui/shared/custom_widget/custom_text.dart';
import 'package:social_app_test/ui/shared/extension_sizebox.dart';

showCommentsPost({required List<Comment> comments,required int numberLikes}) {
  Get.bottomSheet(
      isScrollControlled: true,
      backgroundColor: Colors.transparent,
      enterBottomSheetDuration: const Duration(milliseconds: 500),
      Padding(
        padding: EdgeInsets.only(top: 20.h),
        child: Container(
          width: 1.sw,
          decoration: BoxDecoration(
              color: AppColors.whiteColor,
              borderRadius: BorderRadius.only(
                  topRight: Radius.circular(25.r),
                  topLeft: Radius.circular(35.r))),
          height: 864.h,
          child: Padding(
              padding: EdgeInsets.all(30.w),
              child: Column(
                children: [
                  Row(
                    children: [
                      SvgPicture.asset(
                        'assets/images/ic_favorite.svg',
                        color: AppColors.redColor,
                      ),
                      (10.w).pw,
                      CustomText(
                          text: numberLikes.toString(),
                          textType: TextStyleType.bodyBig),
                      const Spacer(),
                      SvgPicture.asset('assets/images/ic_favorite.svg'),
                    ],
                  ),
                  Divider(
                    color: AppColors.blackColor.withOpacity(0.6),
                  ),
                  (20.h).ph,
                  SizedBox(
                    height: 0.77.sh,
                    child: ListView.builder(
                        shrinkWrap: true,
                        itemCount: comments.length,
                        itemBuilder: (s, index) {
                          return Container(
                            margin: EdgeInsets.only(bottom: 20.h),
                            child: Row(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                ClipRRect(
                                    borderRadius:
                                        BorderRadius.all(Radius.circular(100.r)),
                                    child: Image.asset(
                                      comments[index].user.profileImage,
                                      scale: 2.8,
                                    )),
                                (10.w).pw,
                                IntrinsicWidth(
                                  child: Column(
                                    mainAxisSize: MainAxisSize.min,
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: [
                                      Container(
                                        padding: EdgeInsets.all(15.w),
                                        decoration: BoxDecoration(
                                            borderRadius:
                                                BorderRadius.circular(25.r),
                                            color: AppColors.grayColor
                                                .withOpacity(0.3)),
                                        child: Column(
                                          children: [
                                            CustomText(
                                                text: comments[index].user.name,
                                                textType: TextStyleType.body),
                                            (15.h).ph,
                                            CustomText(
                                              text: comments[index].text,
                                              textType: TextStyleType.body,
                                              fontWeight: FontWeight.normal,
                                            ),
                                          ],
                                        ),
                                      ),
                                      (5.h).ph,
                                      Row(
                                        mainAxisSize: MainAxisSize.min,
                                        children: [
                                          CustomText(
                                              startPadding: 5.w,
                                              text: comments[index].time,
                                              textType: TextStyleType.small),
                                          const Spacer(),
                                          CustomText(
                                            text: 'Reply',
                                            textType: TextStyleType.small,
                                            endPadding: 5.w,
                                          ),
                                        ],
                                      )
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          );
                        }),
                  ),
                ],
              )),
        ),
      ));
}
