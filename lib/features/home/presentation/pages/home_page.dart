import 'package:car_care/core/constants/app_assets.dart';
import 'package:car_care/core/extensions/theme_extension.dart';
import 'package:flutter/material.dart';
import 'package:car_care/features/home/presentation/widgets/home_app_bar.dart';
import 'package:car_care/features/home/presentation/widgets/home_body.dart';
import 'package:car_care/features/home/presentation/widgets/home_bottom_nav_bar.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Directionality(
      textDirection: TextDirection.rtl,
      child: Builder(
        builder: (context) {
          return Scaffold(
            backgroundColor: context.colorScheme.surface,
            appBar: const HomeAppBar(),
            body: Stack(
              fit: StackFit.expand,
              children: [
                Image.asset(
                  AppAssets.artboardBackground,
                  fit: BoxFit.cover,
                ),
                const HomeBody(),
              ],
            ),
            bottomNavigationBar: HomeBottomNavBar(
              onItemSelected: (index) {
              
              },
            ),
          );
        },
      ),
    );
  }
}
