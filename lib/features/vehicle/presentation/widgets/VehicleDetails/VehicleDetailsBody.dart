import 'package:car_care/core/extensions/theme_extension.dart';
import 'package:car_care/core/theme/app_colors.dart';
import 'package:car_care/features/vehicle/presentation/widgets/VehicleDetails/QuickActionButton.dart';
import 'package:car_care/features/vehicle/presentation/widgets/VehicleDetails/ServiceRecordTile.dart';
import 'package:car_care/features/vehicle/presentation/widgets/VehicleDetails/VehicleHeaderWidget.dart';
import 'package:car_care/features/vehicle/presentation/widgets/VehicleDetails/VehicleInfoCardWidget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class VehicleDetailsBody extends StatelessWidget {
  const VehicleDetailsBody({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      padding: EdgeInsets.symmetric(horizontal: 20.w, vertical: 10.h),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const VehicleHeaderWidget(),
          SizedBox(height: 10.h),
          Row(
            children: [
              Expanded(
                child: VehicleInfoCardWidget(
                  title: 'عداد الكيلومترات',
                  value: '١٢٠,٠٠٠ كم',
                  icon: Icon(Icons.speed_outlined, color: AppColors.primary, size: 28.sp),
                ),
              ),
              SizedBox(width: 12.w),
              Expanded(
                child: VehicleInfoCardWidget(
                  title: 'رقم لوحة السيارة',
                  value: '٣٢٨٧٩٧',
                  icon: Container(
                    padding: EdgeInsets.symmetric(horizontal: 4.w, vertical: 1.h),
                    decoration: BoxDecoration(
                      border: Border.all(color: AppColors.primary, width: 1.5),
                      borderRadius: BorderRadius.circular(4.r),
                    ),
                    child: Text('1..', style: TextStyle(color: AppColors.primary, fontSize: 12.sp, fontWeight: FontWeight.bold)),
                  ),
                ),
              ),
            ],
          ),
          SizedBox(height: 8.h),
          Text(
            'سجلات الخدمات',
            style: context.textTheme.titleMedium?.copyWith(fontWeight: FontWeight.bold, fontSize: 18.sp),
          ),
          SizedBox(height: 5.h),
          ServiceRecordTile(
            title: 'سجل الصيانة',
            icon: Icons.build_outlined,
            onTap: () {
              // Navigator.push...
            },
          ),
          SizedBox(height: 8.h),
          ServiceRecordTile(
            title: 'سجل الوقود',
            icon: Icons.local_gas_station_outlined,
            onTap: () {
              // Navigator.push...
            },
          ),
          SizedBox(height: 8.h),
          ServiceRecordTile(
            title: 'سجل التنبيهات',
            icon: Icons.notifications_none_outlined,
            onTap: () {
              // Navigator.push...
            },
          ),
          SizedBox(height: 10.h),
          Text(
            'إجراءات سريعة',
            style: context.textTheme.titleMedium?.copyWith(fontWeight: FontWeight.bold, fontSize: 18.sp),
          ),
          SizedBox(height: 8.h),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              QuickActionButton(
                label: 'حذف',
                iconPath: 'assets/images/delete.png',
                color: const Color(0xFFA12323),
                onTap: () {},
              ),
              QuickActionButton(
                label: 'تعديل',
                iconPath: 'assets/images/edit.png',
                color: AppColors.primary,
                onTap: () {},
              ),
              QuickActionButton(
                label: 'صيانة',
                iconPath: 'assets/images/2.png',
                color: AppColors.primary,
                onTap: () {},
              ),
            ],
          ),
        ],
      ),
    );
  }
}