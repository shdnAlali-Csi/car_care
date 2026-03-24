
import 'package:car_care/core/theme/app_colors.dart';
import 'package:car_care/features/vehicle/presentation/widgets/AddVehicle/SaveVehicleButton.dart';
import 'package:car_care/features/vehicle/presentation/widgets/AddVehicle/VehicleImageWidget.dart';
import 'package:car_care/features/vehicle/presentation/widgets/AddVehicle/VehicleTextField.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class AddVehicleBody extends StatelessWidget {
  const AddVehicleBody({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      padding: EdgeInsets.symmetric(horizontal: 24.w),
      child: Column(
        children: [
          const VehicleImageWidget(),
          VehicleTextField(
            hintText: 'عداد الكيلومترات',
            iconWidget: Container(
              padding: EdgeInsets.symmetric(horizontal: 4.w, vertical: 1.h),
              decoration: BoxDecoration(
                border: Border.all(color: AppColors.primary, width: 1.5),
                borderRadius: BorderRadius.circular(2.r),
              ),
              child: Text(
                '1..',
                style: TextStyle(
                  color: AppColors.primary,
                  fontWeight: FontWeight.bold,
                  fontSize: 12.sp,
                ),
              ),
            ),
          ),
          SizedBox(height: 12.h),
          VehicleTextField(
            hintText: 'اللوحة',
            iconWidget: Row(
              mainAxisSize: MainAxisSize.min,
              children: [
                Icon(Icons.sort_by_alpha, color: AppColors.primary, size: 28.sp),
              ],
            ),
          ),
          SizedBox(height: 12.h),
          const VehicleTextField(
            hintText: 'الماركة',
            iconWidget: Icon(
              Icons.local_offer_outlined,
              color: AppColors.primary,
              size: 28,
            ),
          ),
          SizedBox(height: 12.h),
          const VehicleTextField(
            hintText: 'الموديل',
            iconWidget: Icon(
              Icons.directions_car_filled_outlined,
              color: AppColors.primary,
              size: 28,
            ),
          ),
          SizedBox(height: 12.h),
          const VehicleTextField(
            hintText: 'السنة',
            iconWidget: Icon(
              Icons.calendar_month_outlined,
              color: AppColors.primary,
              size: 28,
            ),
          ),
          SizedBox(height: 16.h),
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Text(
                'تم حفظ التعديلات',
                style: TextStyle(
                  color: const Color(0xFF7DB37D),
                  fontSize: 14.sp,
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(width: 8.w),
              Icon(
                Icons.check_box,
                color: const Color(0xFF7DB37D),
                size: 24.sp,
              ),
            ],
          ),
          SizedBox(height: 14.h),
          const SaveVehicleButton(),
          SizedBox(height: 32.h),
        ],
      ),
    );
  }
}