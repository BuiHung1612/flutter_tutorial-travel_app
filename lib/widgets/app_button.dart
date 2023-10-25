import 'package:flutter/material.dart';
import 'package:travel_app/widgets/app_large_text.dart';

import '../misc/app_colors.dart';

class AppButton extends StatelessWidget {
  final Color color;
  final Color backgroundColor;
  double size;
  final Color borderColor;
  String? text;
  IconData? icon;
  bool isIcon;
  double textSize;
  void Function() onPress;
  bool? isSelected;
  AppButton(
      {super.key,
      this.color = Colors.black,
      required this.backgroundColor,
      required this.borderColor,
      required this.size,
      this.isIcon = false,
      this.text,
      this.textSize = 16,
      this.icon,
      this.isSelected = false,
      required this.onPress});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onPress,
      child: Container(
        width: size,
        height: size,
        decoration: BoxDecoration(
            border: Border.all(color: borderColor, width: 1),
            borderRadius: BorderRadius.circular(14),
            color: backgroundColor),
        child: isIcon
            ? Center(
                child: Icon(
                  icon,
                  color: color,
                ),
              )
            : Center(
                child: AppLargeText(
                  text: text!,
                  color: color,
                  size: textSize,
                ),
              ),
      ),
    );
  }
}
