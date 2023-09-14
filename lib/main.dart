import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:quiz_app_vs_code/scs/My_App.dart';

void main() async {
    await ScreenUtil.ensureScreenSize();
  runApp( MyApp());
}

