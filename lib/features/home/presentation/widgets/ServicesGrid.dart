// ignore_for_file: file_names

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class ServicesGrid extends StatelessWidget {
  const ServicesGrid({
    super.key,
    this.onItemPressed,
  });

  final ValueChanged<int>? onItemPressed;

  static final List<_ServiceItemData> _items = [
    const _ServiceItemData(
      title: 'My Vehicles',
      assetPath: 'assets/images/6.png',
    ),
    const _ServiceItemData(
      title: 'Maintenace',
      assetPath: 'assets/images/3.png',
    ),
    const _ServiceItemData(
      title: 'CarWash',
      assetPath: 'assets/images/7.png',
    ),
    const _ServiceItemData(
      title: 'SOS',
      assetPath: 'assets/images/4.png',
    ),
    const _ServiceItemData(
      title: 'Market place',
      assetPath: 'assets/images/8.png',
    ),
    const _ServiceItemData(
      title: 'Fuel',
      assetPath: 'assets/images/5.png',
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      shrinkWrap: true,
      physics: const NeverScrollableScrollPhysics(),
      padding: EdgeInsets.symmetric(horizontal: 3.w, vertical: 12.h),
      itemCount: _items.length,
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2,
        crossAxisSpacing: 13.w, 
        mainAxisSpacing: 12.h, 
        mainAxisExtent: 115.h, 
      ),
      itemBuilder: (context, index) {
        final item = _items[index];
        return _ServiceCard(
          item: item,
          onPressed: () => onItemPressed?.call(index),
        );
      },
    );
  }
}

class _ServiceItemData {
  const _ServiceItemData({
    required this.title,
    required this.assetPath,
  });

  final String title;
  final String assetPath;
}

class _ServiceCard extends StatelessWidget {
  const _ServiceCard({
    required this.item,
    this.onPressed,
  });

  final _ServiceItemData item;
  final VoidCallback? onPressed;
  
  static const Color _cardTop = Color(0xFFFFFFFF); 
  static const Color _cardBottom = Color.fromARGB(255, 168, 167, 167);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      borderRadius: BorderRadius.circular(16.r),
      onTap: onPressed,
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(16.r),
          gradient: const LinearGradient(
            colors: [_cardTop, _cardBottom],
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
            stops: [0.2, 1.0],
          ),
          boxShadow: [
            BoxShadow(
              // ignore: deprecated_member_use
              color: Colors.black.withOpacity(0.1),
              blurRadius: 6.r,
              offset: const Offset(0, 3),
            ),
          ],
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SizedBox(
              width: 75.w,
              height: 55.w,
              child: Image.asset(
                item.assetPath,
                fit: BoxFit.contain,
              ),
            ),
            SizedBox(height: 8.h),
            Text(
              item.title,
              textAlign: TextAlign.center,
              style: TextStyle(
                color: Colors.white,
                fontWeight: FontWeight.bold,
                fontSize: 16.sp,
                shadows: [
                  BoxShadow(
                    // ignore: deprecated_member_use
                    color: Colors.black.withOpacity(0.25),
                    blurRadius: 2,
                    offset: const Offset(0, 1),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}