import 'dart:math';

import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'package:flutter/material.dart';
import 'package:flutter_polygon/flutter_polygon.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:quiz_app_vs_code/model/Data_Model.dart';

import '../Data/Questions_list.dart';
import '../screans/Question_Screan.dart';
import '../utils/navigator.dart';

Color getRandomColor() {
  Random random = Random();
  int r = random.nextInt(256);
  int g = random.nextInt(256);
  int b = random.nextInt(256);
  return Color.fromARGB(255, r, g, b);
}

LinearGradient getRandomGradient(Color baseColor) {
  Color lighterColor = baseColor.withOpacity(0.5);
  return LinearGradient(
    colors: [baseColor, lighterColor],
  );
}

class RoundedHexagon extends StatefulWidget {
  final int index;
  final Levels levels;
  final int score;
  IconData? iconData ;
 final List questionsList ;
  LinearGradient randomGradient = getRandomGradient(getRandomColor());


  RoundedHexagon({required this.index, required this.levels,required this.score,required this.questionsList});

  @override
  State<RoundedHexagon> createState() => _RoundedHexagonState();
}

class _RoundedHexagonState extends State<RoundedHexagon> {

bool isOpening=true;

  double rating = 0.0;
  @override
  void initState() {

    rating = widget.score.toDouble();


    super.initState();
  }

  opening(){

    if (isOpening){
        navigateToScreen(context, QuestionScrean(levels: widget.levels, number: widget.index, question: widget.questionsList!));

    }
    else{

   return null;
    }
  }
  @override
  Widget build(BuildContext context) {
    if (widget.index>0) {
      if ( questionsData['levels'][widget.index -1]['Score']  <= 1 ) {
        isOpening = false;

        widget.iconData=Icons.lock;
        widget.randomGradient= getRandomGradient(Colors.grey.withOpacity(0.5));
        print(questionsData['levels'][widget.index -1]['Score']);
        print( rating );
      }

    }
    else if (widget.index>1){
      isOpening = true;
    }






    return Column(
      children: [

        RatingBar.builder(
ignoreGestures: true,

          initialRating:widget.score.toDouble(),
maxRating:3,
          direction: Axis.horizontal,
          allowHalfRating: true,
          itemCount: 3,
          itemSize: 40.h,

          itemBuilder: (context, index)
          {
            IconData iconData = Icons.star;
            Color color = Colors.amber;

            if (index == 2) {
              // Customize the icon and color for the third item
              return Container(

                width: 50.w,
                height: 50.h,
                child: Stack(

                  children: [
                    Positioned(


                      top: 17,left: 1,child: Icon(
                      iconData,
                      color: color,
                      size: 41.h,
                    ),
                    ),
                  ],
                ),
              );

            }
            if (index == 1) {
            // Customize the icon and color for the third item
              return Container(

                width: 50.w,
                height: 50.h,
                child: Stack(

                  children: [
                    Positioned(


                      left:5,child: Icon(
                        iconData,
                        color: color,
                      size: 41.h,
                      ),
                    ),
                  ],
                ),
              );

          }
            if (index == 0) {
              // Customize the icon and color for the third item
              return Container(

                width: 50.w,
                height: 50.h,
                child: Stack(

                  children: [
                    Positioned(

                      top: 17,
                      left: 9,child: Icon(
                      iconData,
                      color: color,
                      size: 41.h,
                    ),
                    ),
                  ],
                ),
              );

            }
          return Container(
            width: 70.w,
            height: 70.h,
            child: Icon(
              iconData,
              color: color,
              size: 39,
            ),
          );
          },
          onRatingUpdate: (newRating) {


            setState(() {
            //  rating = newRating;
              newRating=rating;

         //     print(rating);
            });
          },
        ),



        Stack (
          alignment: Alignment.center,
          children: [
            GestureDetector(


   onTap: opening,
              child: ClipPath(
                clipper: PolygonClipper(
                  PolygonPathSpecs(
                    sides: 5,
                    rotate: 0,
                    borderRadiusAngle: 5,
                  ),
                ),
                child: Container(
                    width: 100.w,
                    height: 100.h,
                    decoration: BoxDecoration(
                      gradient:widget.randomGradient,
                    ),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Text("Level",
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 20.sp,
                              fontWeight: FontWeight.bold,
                            )),
                        Text("${widget.index+1}",
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 20.sp,
                              fontWeight: FontWeight.bold,
                            )),
                      ],
                    )),
              ),
            ),
            Center(child: Icon (widget.iconData,color: Color(0xFFFBBE29),)),
          ],
        ),


      ],
    );
  }
}
