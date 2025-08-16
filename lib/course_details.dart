import 'package:flutter/material.dart';
import 'package:flutter_ass2/core/text.dart';
import 'package:flutter_svg/svg.dart';

import 'core/colors.dart';
import 'core/icons.dart';

class CourseDetails extends StatelessWidget {
  const CourseDetails({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Stack(
                children: [
                  Image.asset(
                    'assets/images/Sun.png',
                    width: double.infinity,
                    height: 288.78,
                    fit: BoxFit.cover,
                  ),

                  // Top buttons
                  Positioned(
                    top: 40,
                    left: 20,
                    child: IconButton(onPressed: (){}, icon:CircleAvatar(
                      child: SvgPicture.asset(AppIcon.backIcon),
                    ),)
                  ),
                  Positioned(
                    top: 40,
                    right: 74,
                    child:
                        IconButton(onPressed: (){}, icon: CircleAvatar(
                          child: SvgPicture.asset(AppIcon.likeIcon),
                        ),)

                  ),
                  Positioned(
                    top: 40,
                    right: 20,
                    child: IconButton(onPressed: (){}, icon:CircleAvatar(
                      child: SvgPicture.asset(AppIcon.downloadIcon),
                    ),
                  ),)
                ],
              ),

              Expanded(
                child: Container(
                  padding: const EdgeInsets.all(16),
                  decoration: const BoxDecoration(
                    color: AppColor.primary,
                    borderRadius: BorderRadius.vertical(top: Radius.circular(24)),
                  ),
                  child: SingleChildScrollView(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        // Title
                        Text(
                          "Happy Morning",
                          style: AppTextStyles.grey3FBold34
                        ),

                        const SizedBox(height: 8),
                        Text(
                          "COURSE",
                          style: AppTextStyles.greyA1Regular14
                        ),

                        const SizedBox(height: 8),
                        Text(
                          "Ease the mind into a restful night’s sleep with these deep, ambient tones.",
                          style: AppTextStyles.greyA1light16,
                        ),

                        const SizedBox(height: 12),

                        // ❤️ Favorites + 🎧 Listening
                        Row(

                          children: [
                            SvgPicture.asset(AppIcon.heartIcon),
                            SizedBox(width: 4),
                            Text("24,234 Favorites",style: AppTextStyles.greyA1Regular14,),
                            SizedBox(width:120 ,),
                            SvgPicture.asset(AppIcon.headphonesIcon),
                            SizedBox(width: 4),
                            Text("34,234 Listening",style: AppTextStyles.greyA1Regular14,),
                          ],
                        ),

                        const SizedBox(height: 24),

                        // Pick a narrator
                        Text(
                          "Pick a Narrator",
                          style: AppTextStyles.grey3FBold20,
                        ),
                        const SizedBox(height: 16),
                        Row(
                          children: [
                            Text("MALE VOICE",
                              style: AppTextStyles.blue8ERegular16,),
                            const SizedBox(width: 154),
                            Text("FEMALE VOICE",
                                style: AppTextStyles.greyA1Regular16),
                          ],
                        ),

                        const Divider(height: 32,color: AppColor.greyE4Color,),

                        // Play list items
                        _buildTrackItem("Focus Attention", "10 MIN"),
                        const Divider(height: 32,color: AppColor.blueADColor),
                        _buildTrackItem("Body Scan", "5 MIN"),
                        const Divider(height: 32,color: AppColor.blueADColor,),
                        _buildTrackItem("Making Happiness", "3 MIN"),
                      ],
                    ),
                  ),
                ),
              ),


        ],
      ),
    );
  }

  Widget _buildTrackItem(String title, String duration) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8.0),
      child: Row(
        children: [
          CircleAvatar(
            child: SvgPicture.asset(AppIcon.playBlueIcon),
          ),
          const SizedBox(width: 16),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(title, style: AppTextStyles.grey3FRegular16),
                Text(duration, style: AppTextStyles.greyA1Regular11),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
