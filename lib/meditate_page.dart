import 'package:flutter/material.dart';
import 'package:flutter_ass2/core/colors.dart';
import 'package:flutter_ass2/core/icons.dart';
import 'package:flutter_ass2/core/text.dart';
import 'package:flutter_svg/svg.dart';

class MeditatePage extends StatelessWidget {
  const MeditatePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.only(
            top: 56,
            left: 16,
            right: 16,
            bottom: 24,
          ),
          child: SingleChildScrollView(
            // ✅ Makes the whole screen scrollable
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Text(
                  "Meditate",
                  style: AppTextStyles.grey3FBold28,
                  textAlign: TextAlign.center,
                ),
                const SizedBox(height: 8),
                Text(
                  "we can learn how to recognize when our minds are doing their normal everyday acrobatics.",
                  style: AppTextStyles.greyA0Light16,
                  textAlign: TextAlign.center,
                ),
                const SizedBox(height: 16),
                SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      _buildTab(AppIcon.allIcon, "All", true),
                      _buildTab(AppIcon.myIcon, "My", false),
                      _buildTab(AppIcon.anxiousIcon, "Anxious", false),
                      _buildTab(AppIcon.sleepIcon, "Sleep", false),
                      _buildTab(AppIcon.kidsIcon, "Kids", false),
                    ],
                  ),
                ),
                const SizedBox(height: 16),
                Container(
                  width: double.infinity,
                  height: 95,
                  decoration: BoxDecoration(
                    color: AppColor.pinkF1Color,
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: Stack(
                    children: [
                      Image.asset(
                        "assets/images/Mask Group.png",
                        fit: BoxFit.fill,
                        width: double.infinity,
                      ),
                      Padding(
                        padding: const EdgeInsets.all(20),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  "Daily Calm",
                                  style: AppTextStyles.grey3FBold18,
                                ),
                                const SizedBox(height: 4),
                                Text(
                                  "APR 30 . PAUSE PRACTICE",
                                  style: AppTextStyles.grey5ARegular11,
                                ),
                              ],
                            ),
                            SvgPicture.asset(
                              AppIcon.playSolidGreyIcon,
                              height: 40,
                              width: 40,
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(height: 12),
                Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Expanded(
                      // ✅ Fixes width issue
                      child: Column(
                        children: [
                          Container(
                            height: 210,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                            ),
                            child: Stack(
                              alignment: Alignment.bottomCenter,
                              children: [
                                Image.asset(
                                  "assets/images/sky.png",
                                  fit: BoxFit.cover,
                                  width: double.infinity,
                                ),
                                Text(
                                  "7 Days of Calm",
                                  style: AppTextStyles.whiteBold18,
                                ),
                              ],
                            ),
                          ),
                          SizedBox(height: 16),
                          Container(
                            height: 167,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                            ),
                            child: Image.asset(
                              "assets/images/beach.png",
                              fit: BoxFit.cover,
                              width: double.infinity,
                            ),
                          ),
                        ],
                      ),
                    ),
                    const SizedBox(width: 16),
                    Expanded(
                      // ✅ Fixes width issue
                      child: Column(
                        children: [
                          Container(
                            height: 176,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                            ),
                            child: Stack(
                              alignment: Alignment.bottomCenter,
                              children: [
                                Image.asset(
                                  "assets/images/desert.png",
                                  fit: BoxFit.cover,
                                  width: double.infinity,
                                ),
                                Text(
                                  "Anxiety Release",
                                  style: AppTextStyles.whiteFEBold18,
                                ),
                              ],
                            ),
                          ),
                          SizedBox(height: 16),
                          Container(
                            height: 210,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                            ),
                            child: Image.asset(
                              "assets/images/garden.png",
                              fit: BoxFit.cover,
                              width: double.infinity,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: AppColor.primary,
        fixedColor: AppColor.blue8EColor,
        unselectedLabelStyle: AppTextStyles.greyA0Regular14,
        selectedLabelStyle: AppTextStyles.blue8ERegular14,
        type: BottomNavigationBarType.fixed,
        currentIndex: 2,
        items: [
          BottomNavigationBarItem(
            icon: SvgPicture.asset("assets/images/home.svg", height: 20),
            label: "Home",
          ),
          BottomNavigationBarItem(
            icon: SvgPicture.asset("assets/images/sleep2.svg", height: 20),
            label: "Sleep",
          ),
          BottomNavigationBarItem(
            icon: Stack(
              alignment: AlignmentDirectional.center,
              children: [
                SvgPicture.asset("assets/images/background.svg", height: 40),
                SvgPicture.asset("assets/images/meditate.svg", height: 24),
              ],
            ),
            label: "Meditate",
          ),
          BottomNavigationBarItem(
            icon: SvgPicture.asset("assets/images/music.svg", height: 20),
            label: "Music",
          ),
          BottomNavigationBarItem(
            icon: SvgPicture.asset("assets/images/asfar.svg", height: 20),
            label: "Afsar",
          ),
        ],
      ),
    );
  }
}

Widget _buildTab(String iconPath, String text, bool selected) {
  return Padding(
    padding: const EdgeInsets.only(right: 16),
    child: Column(
      children: [
        Stack(
          alignment: AlignmentDirectional.center,
          children: [
            selected
                ? SvgPicture.asset(
                  AppIcon.backgroundBlueIcon,
                  height: 55,
                  width: 55,
                )
                : SvgPicture.asset(
                  AppIcon.backgroundGreyIcon,
                  height: 55,
                  width: 55,
                ),
            SvgPicture.asset(iconPath, height: 20, width: 20),
          ],
        ),
        const SizedBox(height: 8),
        Text(
          text,
          style: TextStyle(
            fontSize: 16,
            color: selected ? AppColor.grey3FColor : AppColor.greyA0Color,
            fontWeight: FontWeight.w400,
          ),
        ),
      ],
    ),
  );
}
