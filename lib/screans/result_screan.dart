import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:quiz_app_vs_code/componant/levels__buttons.dart';
import 'package:quiz_app_vs_code/screans/Levels.dart';
import 'package:quiz_app_vs_code/screans/Question_Screan.dart';


import '../Data/Questions_list.dart';
import '../model/Data_Model.dart';
import '../utils/navigator.dart';

class ResultScrean extends StatefulWidget {

final int score;
final Levels levels;
final int index;
  final int length;
 final int answerdQuestion;
final List questionsList ;

ResultScrean({required this.score, required this.answerdQuestion,required this.length,required this.index,required this.levels, required this.questionsList}) ;

  @override
  State<ResultScrean> createState() => _ResultScreanState();
}

class _ResultScreanState extends State<ResultScrean> {
  Color gold =Color(0xFFFCC928);
  Color red =Colors.red;
  Color color1 =Color(0xFF1F1147);
  Color color2 = Color(0xFF36E9BB);

  rating ( ){
    int ratingScore=0;
    if (widget.score==100) {
      ratingScore=3 ;
    }  else if (widget.score>=60) {
      ratingScore=2 ;
    }  else if (widget.score>=30) {
      ratingScore=1;
    }
    widget.levels.score = ratingScore;
    questionsData['levels'][widget.index]['Score'] = ratingScore;


  }

  @override
  Widget build(BuildContext context) {
rating();
    return Scaffold(
      backgroundColor: color1,
      appBar: AppBar(
        title: Text(
          'Results',
          style: TextStyle(
              color: Color(0xFF36E9BB),
              fontSize: 30.sp,
              fontWeight: FontWeight.bold),
        ),
        elevation: 0,
        centerTitle: true,
        backgroundColor: Colors.transparent,
      ),
      body: Center(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,


          children: [

            SizedBox(height: 20),
            Text("Total correct answers", style: TextStyle(color: Colors.white,fontWeight: FontWeight.w300,fontSize: 20.sp)),
            SizedBox(height: 20),
            Text("${widget.answerdQuestion} out of ${widget.length} Questions", style: TextStyle(color: color2,fontWeight: FontWeight.w300,fontSize: 20.sp)),
            SizedBox(height: 60),

            Container(
              width: 270.w,
                height: 250.h,
                decoration: BoxDecoration(
borderRadius: BorderRadius.all(Radius.circular(20)),
               gradient: LinearGradient(
                 begin: Alignment.topCenter,
                 end: Alignment.bottomCenter,
                 colors: [
                   Color(0xFF775BF0),
                   Color(0xFF44338A)
                 ]
               ),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.black38,
                        spreadRadius: 10,
                        blurStyle: BlurStyle.normal,
                        blurRadius: 20



                      )
                    ]

                ),

                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Text("Your Final Score is", style: TextStyle(color: Colors.white,fontWeight: FontWeight.w300,fontSize: 28.sp)),
                    Container(
                      decoration: BoxDecoration(

                        shape: BoxShape.circle,
                        boxShadow: [
                          BoxShadow(
                              color: Colors.black38,
                              spreadRadius: 10,
                              blurStyle: BlurStyle.normal,
                              blurRadius: 20

                          )
                        ]

                      ),
                      child: CircleAvatar(
                        radius: 60,

backgroundColor:widget.score>50?gold:red ,

                        child:Text("${widget.score}", style: TextStyle(color: Colors.white,fontWeight: FontWeight.w300,fontSize: 50.sp)),
                      ),
                    )
                  ],
                )),
            SizedBox(height: 20),


           ElevatedButton(onPressed: (){
             navigateToScreen(context, QuestionScrean(levels: widget.levels,number:widget. index,question:widget.questionsList));

           },
              style:ElevatedButton.styleFrom(
                backgroundColor:  Color(0xFF6846FE) ,
                fixedSize: Size(270.w, 50.h),
                shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
              ) ,
              child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Icon(Icons.replay,color: Colors.white,),

                  Text("Try Again", style: TextStyle(color: Colors.white,fontSize: 20.sp,fontWeight: FontWeight.w400))
                ],
              ),
            ),
            SizedBox(height: 20),

            // if (widget.score >=60)
            // ElevatedButton(onPressed: (){
            //   navigateToScreen(context, QuestionScrean(levels: widget.levels,number:widget. index,question:widget.questionsList));
            //
            // },
            //   style:ElevatedButton.styleFrom(
            //     backgroundColor:  Color(0xFF6846FE) ,
            //     fixedSize: Size(270.w, 50.h),
            //     shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
            //   ) ,
            //   child: Row(
            //     mainAxisAlignment: MainAxisAlignment.center,
            //     crossAxisAlignment: CrossAxisAlignment.center,
            //     children: [
            //       Icon(Icons.navigate_next,color: Colors.white,),
            //
            //       Text("Next Level", style: TextStyle(color: Colors.white,fontSize: 20.sp,fontWeight: FontWeight.w400))
            //     ],
            //   ),
            // ),

            SizedBox(height: 20),
            ElevatedButton(onPressed: (){

              navigateToScreen(context, LevelsScrean());

            },
              style:ElevatedButton.styleFrom(
                backgroundColor:  Color(0xFF6846FE) ,
                fixedSize: Size(270.w, 50.h),
                shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
              ) ,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Icon(Icons.arrow_back_ios_sharp,color: Colors.white,),

                  Text("Back to manu", style: TextStyle(color: Colors.white,fontSize: 20.sp,fontWeight: FontWeight.w400))
                ],
              ),
            ),

          ],
        ),
      ),

    );
  }
}
