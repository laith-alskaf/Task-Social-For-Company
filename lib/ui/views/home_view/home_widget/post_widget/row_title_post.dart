import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:social_app_test/ui/shared/colors.dart';
import 'package:social_app_test/ui/shared/custom_widget/custom_text.dart';
import 'package:social_app_test/ui/shared/extension_sizebox.dart';

class RowTitlePost extends StatelessWidget {
  const RowTitlePost({super.key, required this.name,  this.existWith, required this.time, required this.profileImage});

  final String name;
  final String time;
  final String profileImage;
  final bool? existWith;

  @override
  Widget build(BuildContext context) {
    return  Row(
      children: [
        ClipRRect(
          borderRadius: BorderRadius.all(Radius.circular(100.r)),
          child: Image.asset(
            profileImage,
            scale: 2.8,
          ),
        ),
        (15.w).pw,
        CustomText(
          text: name,
          textType: TextStyleType.body,
          fontWeight: FontWeight.normal,
        ),
        if(existWith!=null)
      const  CustomText(
          text: ' .With Zoe Sugg',
          textType: TextStyleType.body,
          fontWeight: FontWeight.normal,
        ),
        const Spacer(),
        CustomText(
          text: time,
          textType: TextStyleType.small,
          textColor: AppColors.grayColor,
        ),
      ],
    );
  }
}
