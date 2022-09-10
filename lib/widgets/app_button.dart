// ignore_for_file: must_be_immutable

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_app/widgets/app_text.dart';

class AppButton extends StatelessWidget {
  final Color color;
  String? text;
  IconData? icon;
  final Color backgroundColor;
  double size;
  final Color borderColor;
  bool? isIcon;

  AppButton({
    Key? key,
    this.text = 'button',
    this.icon,
    this.isIcon = false,
    required this.size,
    required this.color,
    required this.backgroundColor,
    required this.borderColor}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      height: size,
      width: size,
      decoration: BoxDecoration(
        border: Border.all(
          color: borderColor,
          width: 1.0,
        ),
        color: backgroundColor,
        borderRadius: BorderRadius.circular(15),
      ),
      child: isIcon == true? Icon(
        icon,
        color: color,) :
      AppText(
          text: text!,
          color: color),
    );
  }
}
