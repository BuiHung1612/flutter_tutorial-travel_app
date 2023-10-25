import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:travel_app/cubit/app_cubits.dart';
import 'package:travel_app/misc/app_colors.dart';
import 'package:travel_app/widgets/app_large_text.dart';
import 'package:travel_app/widgets/app_text.dart';
import 'package:travel_app/widgets/responsive_button.dart';

class WelcomePage extends StatefulWidget {
  const WelcomePage({super.key});

  @override
  State<WelcomePage> createState() => _WelcomePageState();
}

class _WelcomePageState extends State<WelcomePage> {
  List images = [
    "assets/images/intro1.jpg",
    "assets/images/intro2.jpeg",
    "assets/images/intro3.jpeg",
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: PageView.builder(
            scrollDirection: Axis.vertical,
            itemCount: images.length,
            itemBuilder: (_, index) {
              return Container(
                width: double.maxFinite,
                height: double.maxFinite,
                decoration: BoxDecoration(
                    image: DecorationImage(
                        image: AssetImage(images[index]), fit: BoxFit.cover)),
                child: Container(
                    margin:
                        const EdgeInsets.only(top: 150, left: 20, right: 20),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            AppLargeText(text: "Trips"),
                            AppText(
                              text: "Mountain",
                              size: 30,
                            ),
                            const SizedBox(
                              height: 20,
                            ),
                            SizedBox(
                              width: 250,
                              child: AppText(
                                text:
                                    "Mountain hikes give you an incredible sense of freedom along with endurance tests",
                                color: AppColors.textColor2,
                                size: 14,
                              ),
                            ),
                            const SizedBox(
                              height: 40,
                            ),
                            GestureDetector(
                              onTap: () {
                                BlocProvider.of<AppCubits>(context).getData();
                              },
                              child: Container(
                                width: 200,
                                child: Row(
                                  children: [
                                    ResponsiveButton(
                                      width: 120,
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ],
                        ),
                        Column(
                            children: List.generate(3, (indexDot) {
                          return Container(
                            margin: const EdgeInsets.symmetric(vertical: 2.0),
                            width: 8,
                            height: index == indexDot ? 20 : 8,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(8),
                                color: index != indexDot
                                    ? AppColors.mainColor.withOpacity(0.3)
                                    : AppColors.mainColor),
                          );
                        }))
                      ],
                    )),
              );
            }));
  }
}
