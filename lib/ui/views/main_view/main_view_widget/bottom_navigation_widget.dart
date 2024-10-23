import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:social_app_test/core/enums/bottom_navigation.dart';
import 'package:social_app_test/ui/shared/colors.dart';

class BottomNavigationWidget extends StatefulWidget {
  const BottomNavigationWidget({
    super.key,
    required this.bottomNavigationEnum,
    required this.onTap,
  });

  final BottomNavigationEnum bottomNavigationEnum;
  final Function(BottomNavigationEnum, int) onTap;

  @override
  State<BottomNavigationWidget> createState() => _BottomNavigationWidgetState();
}

class _BottomNavigationWidgetState extends State<BottomNavigationWidget> {
  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: Alignment.bottomCenter,
      children: [
        Container(
          width: 1.sw,
          height: 70.h,
          alignment: Alignment.bottomCenter,
          decoration: BoxDecoration(
              color: AppColors.whiteColor,
              borderRadius: BorderRadius.only(topLeft: Radius.circular(25.r),topRight: Radius.circular(25.r))
          ),
        ),
        Positioned(
          bottom: 0,
          right: 0,
          left: 0,
          child: Padding(
            padding: EdgeInsets.symmetric(
              vertical: 20.w,
              horizontal:60.w,
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                navItem(
                  icon:Icons.home,
                  isSelected: widget.bottomNavigationEnum ==
                      BottomNavigationEnum.home,
                  onTap: () {
                    widget.onTap(BottomNavigationEnum.home, 0);
                  },
                ),
                navItem(
                  icon: Icons.explore_outlined,
                  isSelected: widget.bottomNavigationEnum ==
                      BottomNavigationEnum.explore,
                  onTap: () {
                    widget.onTap(BottomNavigationEnum.explore, 1);
                  },
                ),
                SizedBox(
                  child: navItem(
                    icon: Icons.person_3_outlined,
                    isSelected: widget.bottomNavigationEnum ==
                        BottomNavigationEnum.profile,
                    onTap: () {
                      widget.onTap(BottomNavigationEnum.profile, 2);
                    },
                  ),
                )
              ],
            ),
          ),
        ),
      ],
    );
  }

  Widget navItem({
    required IconData icon,
    required bool isSelected,
    required Function onTap,
  }) {
    return InkWell(
      onTap: () {
        onTap();
      },
      child: Icon(icon,size: 45.w,color:isSelected?AppColors.mainColor:AppColors.blackColor ,),
    );
  }
}
