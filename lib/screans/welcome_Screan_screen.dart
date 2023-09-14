import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:quiz_app_vs_code/screans/Levels.dart';
import 'package:quiz_app_vs_code/utils/navigator.dart';

class WelcomeScrean extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Container(
            decoration: BoxDecoration(
              color: Color(0xFF2A175B),
            ),
            width: ScreenUtil().screenWidth,
            height: ScreenUtil().screenHeight * 0.5,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Image.network(
                  'https://avallonellc.com/wp-content/uploads/2023/03/cropped-FULLCOLOR-1.png',
                  width: ScreenUtil().screenWidth,
                  height: ScreenUtil().screenHeight * 0.3,
                ),
                Text(
                  'Quizzles',
                  style: TextStyle(
                      color: Color(0xFF36E9BB),
                      fontSize: 30.sp,
                      fontWeight: FontWeight.bold),
                )
              ],
            ),
          ),
          Container(
            decoration: BoxDecoration(
              color: Color(0xFF1F1147),
            ),
            width: ScreenUtil().screenWidth,
            height: ScreenUtil().screenHeight * 0.5,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Column(
                  children: [
                    Text(
                      'Lets`s Play!',
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 30.sp,
                          fontWeight: FontWeight.bold),
                    ),
                    Text(
                      'Play now and level up',
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 10.sp,
                          fontWeight: FontWeight.bold),
                    ),
                  ],
                ),
                ElevatedButton(
                    onPressed: () {

                      navigateToScreen(context, LevelsScrean());
                    },
                    style: ElevatedButton.styleFrom(
                        fixedSize: Size(200.w, 35.h),
                        backgroundColor: Color(0xFF6A49FE),
                        shape: RoundedRectangleBorder(
                            borderRadius:
                                BorderRadius.all(Radius.circular(15)))),
                    child: Text(
                      'Play Now',
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 20.sp,
                          fontWeight: FontWeight.bold),
                    ))
              ],
            ),
          ),
        ],
      ),
    );
  }
}
