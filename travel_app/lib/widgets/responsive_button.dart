import 'package:flutter/material.dart';
import 'package:travel_app/misc/app_colors.dart';

class ResponsiveButton extends StatelessWidget {
  double? width;
  String? text;
  ResponsiveButton({super.key, this.width, this.text});

  @override
  Widget build(BuildContext context) {
    return Flexible(
      child: Container(
        width: width,
        height: 60,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
            color: AppColors.mainColor),
        child: Row(
          mainAxisAlignment: text != null
              ? MainAxisAlignment.spaceAround
              : MainAxisAlignment.center,
          children: [
            text != null
                ? Text(
                    text!,
                    style: const TextStyle(color: Colors.white, fontSize: 18),
                  )
                : const SizedBox(),
            const Icon(
              Icons.trending_neutral,
              color: Colors.white,
            )
          ],
        ),
      ),
    );
  }
}
