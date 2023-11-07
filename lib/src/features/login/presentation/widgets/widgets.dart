import 'package:etooplay/src/core/utils/app_colors.dart';
import 'package:flutter/material.dart';

final loginScreenAppBar = AppBar();

var loginScreenBody = Column(
  crossAxisAlignment: CrossAxisAlignment.end,
  mainAxisSize: MainAxisSize.max,
  children: [
    Text(
      'تسجيل الدخول',
      style: TextStyle(
        fontSize: 30,
        color: AppColors.primary,
      ),
    ),
    // TextFormField(),
  ],
);
