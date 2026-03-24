// ignore_for_file: file_names

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
class VehicleHeaderWidget extends StatelessWidget {
  const VehicleHeaderWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        children: [
          Container(
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              border: Border.all(color: Colors.white, width: 3.w),
              boxShadow: [BoxShadow(color: Colors.black12, blurRadius: 10, offset: const Offset(0, 5))],
            ),
            child: ClipOval(
              child: Image.asset('assets/images/car.png', width: 140.w, height: 140.w, fit: BoxFit.cover),
            ),
          ),
          SizedBox(height: 8.h),
          Text('سابا ١٣٠', style: TextStyle(fontSize: 32.sp, fontWeight: FontWeight.w900, color: Colors.black)),
          Text('المالك : خالد الحميدات', style: TextStyle(fontSize: 16.sp, fontWeight: FontWeight.w600, color: Colors.black87)),
        ],
      ),
    );
  }
}