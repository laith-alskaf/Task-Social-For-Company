// import 'package:animate_do/animate_do.dart';
// import 'package:flutter/material.dart';
// import 'package:flutter_screenutil/flutter_screenutil.dart';
// import 'package:internship_pakistan/ui/shared/colors.dart';
// import 'package:internship_pakistan/ui/shared/custom_widget/custom_text.dart';
//
// class ContainerWeek extends StatelessWidget {
//   const ContainerWeek({super.key, required this.week});
//
//   final int week;
//
//   @override
//   Widget build(BuildContext context) {
//     return ZoomIn(child: Container(
//       padding: EdgeInsets.all(10.w),
//       height: 200.w,
//       width: 200.w,
//       alignment: Alignment.center,
//       decoration: BoxDecoration(
//           borderRadius: BorderRadius.circular(15.r),
//           color: Colors.white,
//           boxShadow: [
//             BoxShadow(
//               color: AppColors.mainColor.withOpacity(0.5),
//               spreadRadius: 1,
//               blurRadius: 3,
//               offset: const Offset(0, 3),
//             ),
//           ]),
//       child: CustomText(
//         text: 'Week-${week.toString()}-',
//         textType: TextStyleType.subtitle,
//         fontWeight: FontWeight.bold,
//       ),
//     ));
//   }
// }