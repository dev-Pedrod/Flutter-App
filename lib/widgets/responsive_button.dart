// ignore_for_file: must_be_immutable

import 'package:flutter/material.dart';
import 'package:flutter_app/misc/colors.dart';
import 'package:flutter_app/widgets/app_text.dart';

class ResponsiveButton extends StatelessWidget {
  bool? isResponsive;
  double? width; 

  ResponsiveButton({
    super.key,
    this.isResponsive,
    this.width = 120
  });

  @override
  Widget build(BuildContext context) {
    return Flexible(
      child: Container(
        width: isResponsive==true? double.maxFinite : width ,
        height: 60,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          color: AppColors.mainColor,
        ),
        child: Row(
          mainAxisAlignment: isResponsive==true? MainAxisAlignment.spaceEvenly : MainAxisAlignment.center,
          children: [
            isResponsive==true? AppText(text: "Book Trip Now!", color: Colors.white) : const SizedBox(),
            Image.asset("img/button-one.png"),
          ]),
      ),
    );
  }
}