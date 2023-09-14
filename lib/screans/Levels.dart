import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:quiz_app_vs_code/Data/Questions_list.dart';

import 'package:quiz_app_vs_code/componant/levels__buttons.dart';
import 'package:quiz_app_vs_code/model/Data_Model.dart';
import 'package:quiz_app_vs_code/screans/Question_Screan.dart';
import 'package:quiz_app_vs_code/utils/navigator.dart';

class LevelsScrean extends StatefulWidget {


  @override
  State<LevelsScrean> createState() => _LevelsScreanState();
}

class _LevelsScreanState extends State<LevelsScrean> {
  List? questionsList ;
 DataModel? dataModel;
  @override
  void initState() {
      dataModel=DataModel.fromJson(questionsData);
    
    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Color(0xFF1F1147),
        appBar: AppBar(
          title: Text(
            'Levels',
            style: TextStyle(
                color: Color(0xFF36E9BB),
                fontSize: 30.sp,
                fontWeight: FontWeight.bold),
          ),
          elevation: 0,
          centerTitle: true,
          backgroundColor: Colors.transparent,
        ),
        body: GridView.count(

         shrinkWrap: true, crossAxisCount: 2,
          children: List.generate(dataModel!.levels!.length, (index)
          {

          if (index==0){

          questionsList=questions1;
          }
          else if (index==1){
            questionsList=questions2;
          }
          else if (index==2){
            questionsList=questions3;
          }
         return RoundedHexagon(index: index, levels: dataModel!.levels![index], score: dataModel!.levels![index].score!, questionsList: questionsList! );
            }




        )));
  }
}
