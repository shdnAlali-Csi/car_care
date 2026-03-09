import 'package:car_care/core/constants/app_assets.dart';
import 'package:car_care/core/theme/app_colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class HomeAppBar extends StatelessWidget implements PreferredSizeWidget {
  const HomeAppBar({super.key});

  @override
  Size get preferredSize => Size.fromHeight(64.h);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: AppColors.primary,
      elevation: 0,
      leadingWidth: 60.w,
      
      leading: Padding(
        padding: EdgeInsetsDirectional.only(start: 12.w),
        child: IconButton(
          onPressed: () {},
          padding: EdgeInsets.zero,
          style: IconButton.styleFrom(
            shape: const CircleBorder(),
          ),
          icon: Container(
            width: 42.w,
            height: 40.w,
            decoration: BoxDecoration(
              color: const Color(0xFFCFD8DC), 
              shape: BoxShape.circle,
              border: Border.all(
                color: Colors.white,
                width: 2.5,
              ),
              boxShadow: [
                BoxShadow(
                  // ignore: deprecated_member_use
                  color: Colors.black.withOpacity(0.1),
                  blurRadius: 1,
                  offset: const Offset(0, 1),
                ),
              ],
            ),
            child: Center(
              child: Icon(
                Icons.person,
                size: 28.sp,
                color: Colors.white,
              ),
            ),
          ),
        ),
      ),
      
      centerTitle: true,
      titleSpacing: 0,
      
      title: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(14.r),
        ),
        child: Image.asset(
          AppAssets.homeAppBarLogo,
          height: 220.h,
          width: 5000.w,
          fit: BoxFit.contain,
          errorBuilder: (_, __, ___) => Text(
            'CAR CARE',
            style: TextStyle(
              color: Colors.white,
              fontSize: 16.sp,
              fontWeight: FontWeight.w700,
            ),
          ),
        ),
      ),
      
      actions: [
        Padding(
          padding: EdgeInsetsDirectional.only(end: 8.w),
          child: IconButton(
            onPressed: () {},
            icon: const Icon(
              Icons.menu,
              color: Colors.white,
              size: 30,
            ),
          ),
        ),
      ],
    );
  }
}