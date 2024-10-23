import 'package:animate_do/animate_do.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:social_app_test/ui/shared/colors.dart';

class ContainerStory extends StatelessWidget {
  const ContainerStory({super.key, required this.profileImage, this.onTap});

  final String profileImage;
  final Function()?  onTap;

  @override
  Widget build(BuildContext context) {
    return ZoomIn(
        child: GestureDetector(
          onTap:onTap ,
          child: Container(
                margin: EdgeInsets.all(10.w),
                width: 75.w,
                alignment: Alignment.center,
                decoration: BoxDecoration(
            shape: BoxShape.circle,
            color: Colors.white,
            border: Border.all(color: AppColors.whiteColor, width: 3),
            image: DecorationImage(
              image: AssetImage(profileImage),
            )),
              ),
        ));
  }
}
