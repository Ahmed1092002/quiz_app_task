import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:quiz_app_vs_code/screans/result_screan.dart';


import '../model/Data_Model.dart';
import '../utils/navigator.dart';

class QuestionScrean extends StatefulWidget {
  final Levels levels;
  final int number;
  final  List question;
  QuestionScrean({required this.levels, required this.number, required this.question});
  @override
  State<QuestionScrean> createState() => _QuestionScreanState();
}

class _QuestionScreanState extends State<QuestionScrean> {
  PageController? _Controller = PageController(initialPage: 0);
  bool isPressed = false;
  Color isTrue = Color(0xFF36E9BB);
  Color isWroung = Colors.red;
  Color Color2 = Color(0xFF6947FE);
  int score = 0;
  int correctAnswer = 0;

  @override
  Widget build(BuildContext context) {
    Color Color1 = Color(0xFF36E9BB);
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: Colors.transparent,
        elevation: 0,
        title: Text(
          "Level ${widget.number+1} ",
          style: TextStyle(
            color: Color1,
            fontWeight: FontWeight.w300,
            fontSize: 28.sp,
          ),
        ),
      ),
      backgroundColor: Color(0xFF1F1147),
      body: Padding(
        padding: EdgeInsets.all(18),
        child: PageView.builder(

          controller: _Controller,
          onPageChanged: (page) {
            setState(() {
              isPressed = false;
            });
          },
          physics: const NeverScrollableScrollPhysics(),
          scrollDirection: Axis.horizontal,
          itemCount: widget.question.length,
          itemBuilder: (context, index) {

            return Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                SizedBox(
                  child: Container(
                    padding: EdgeInsets.all(10),
                    decoration: BoxDecoration(
                      color: Color1,
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: Text(
                      "Question ${index + 1}/10",
                      style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.w300,
                        fontSize: 15.sp,
                      ),
                    ),
                  ),
                ),
                Divider(
                  color: Colors.grey.shade300,
                  height: 20,
                  indent: 10,
                  endIndent: 10,
                  thickness: 5,
                ),
                SizedBox(
                  child: Text(
            "${widget.question[index].question}",

                    style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.w300,
                      fontSize: 25.sp,
                    ),
                  ),
                ),
                Divider(
                  color: Colors.grey.shade300,
                  height: 50,
                  indent: 10,
                  endIndent: 10,
                  thickness: 5,
                ),
                for (int i = 0; i <widget.question[index].answer!.length; i++)

                  Container(
                    width: double.infinity.w,
                    margin: EdgeInsets.only(bottom: 18),
                    child: MaterialButton(
                      onPressed: () {
                        setState(() {
                          isPressed = true;
                        });
                        if (widget.question[index].answer!.values.toList()[i]) {
                          setState(() {
                            Color2 = isTrue;
                            score += 10;
                            correctAnswer += 1;
                          });
                        }
                      },
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.all(Radius.circular(15)),
                      ),
                      padding: EdgeInsets.symmetric(vertical: 18),
                      color: isPressed
                          ? widget.question[index].answer!.values.toList()[i]? isTrue : isWroung
                          : Color2,
                      child: Row(
                        children: [
                          SizedBox(
                            width: 15.w,
                          ),
                          CircleAvatar(
                            backgroundColor: Color(0xFF8568FE),
                            radius: 15,
                            child: Text(
                              "0${i+ 1}",
                              style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.w200,
                                fontSize: 15.sp,
                              ),
                            ),
                          ),
                          SizedBox(
                            width: 20.w,
                          ),
                          Text(
                            widget. question[index].answer!.keys.toList()[i],
                            style: TextStyle(color: Colors.white),
                          ),
                        ],
                      ),
                    ),
                  ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    OutlinedButton(
                      onPressed: () {
                        _Controller!.previousPage(
                          duration: Duration(milliseconds: 500),
                          curve: Curves.easeIn,
                        );
                        setState(() {
                          isPressed = false;
                        });
                      },
                      style:          OutlinedButton.styleFrom(
            backgroundColor: Color2,
            ),
                      child: Text(
                        "Previous Questions",
                        style: TextStyle(color: Colors.white),
                      ),
                    ),
                    OutlinedButton(

                      onPressed: isPressed
                          ? index + 1 == widget.question.length
                          ? () {
                        navigateToScreen(
                          context,
                          ResultScrean(
                            questionsList: widget.question,
                            score: score,
                            answerdQuestion: correctAnswer,
                            length: widget.question.length,
                            index: widget.number,
                            levels: widget.levels,
                          ),
                        );
                      }
                          : () {
                        _Controller!.nextPage(
                          duration: Duration(milliseconds: 200),
                          curve: Curves.easeInOutCubic,
                        );
                        setState(() {
                          isPressed = false;
                        });
                      }
                          : null,
                      style: OutlinedButton.styleFrom(
                        backgroundColor: Color2,
                      ),
                      child: Text(
                        index + 1 == widget.question.length
                            ? "See result"
                            : "Next Questions",
                        style: TextStyle(color: Colors.white),
                      ),
                    ),
                  ],
                )
              ],
            );
          },
        ),
      ),
    );
  }
}