import 'package:flutter/material.dart';
import 'package:travel_app/misc/app_colors.dart';
import 'package:travel_app/widgets/app_large_text.dart';
import 'package:travel_app/widgets/app_text.dart';
import 'package:travel_app/widgets/responsive_button.dart';

import '../widgets/app_button.dart';

class DetailPage extends StatefulWidget {
  const DetailPage({super.key});

  @override
  State<DetailPage> createState() => _DetailPageState();
}

class _DetailPageState extends State<DetailPage> {
  int selectedButton = 0;
  bool isSelectedHeart = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SizedBox(
        width: double.maxFinite,
        height: double.maxFinite,
        child: Stack(
          children: [
            Positioned(
                child: Container(
              height: 350,
              decoration: const BoxDecoration(
                  image: DecorationImage(
                      image: AssetImage('assets/images/intro2.jpeg'),
                      fit: BoxFit.cover)),
            )),
            Positioned(
                left: 20,
                top: 50,
                child: Row(
                  children: [
                    IconButton(
                      onPressed: () {},
                      icon: const Icon(Icons.menu),
                      color: Colors.white,
                    )
                  ],
                )),
            Positioned(
                top: 320,
                child: Container(
                  padding: const EdgeInsets.all(20),
                  width: MediaQuery.of(context).size.width,
                  height: 500,
                  decoration: const BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.only(
                          topRight: Radius.circular(30),
                          topLeft: Radius.circular(30))),
                  child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            AppLargeText(
                              text: "Yosemite",
                              color: Colors.black87,
                              fontWeight: FontWeight.w500,
                              size: 26,
                            ),
                            AppLargeText(
                              text: "\$ 250",
                              fontWeight: FontWeight.w500,
                              color: AppColors.textColor1,
                              size: 26,
                            )
                          ],
                        ),
                        const SizedBox(
                          height: 10,
                        ),
                        Row(
                          children: [
                            const Icon(
                              Icons.location_on,
                              color: AppColors.mainColor,
                            ),
                            const SizedBox(
                              width: 6,
                            ),
                            AppText(text: "USA, California")
                          ],
                        ),
                        const SizedBox(
                          height: 10,
                        ),
                        Row(
                          children: [
                            Wrap(
                                children: List.generate(5, (index) {
                              return Icon(
                                Icons.star,
                                color: index > 3
                                    ? AppColors.textColor2
                                    : AppColors.starColor,
                              );
                            })),
                            const SizedBox(
                              width: 4,
                            ),
                            AppText(
                              text: "(4.0)",
                              color: AppColors.textColor2,
                            )
                          ],
                        ),
                        const SizedBox(
                          height: 20,
                        ),
                        AppLargeText(
                          text: "People",
                          size: 20,
                          color: Colors.black87,
                        ),
                        const SizedBox(
                          height: 4,
                        ),
                        AppText(text: "Number of people in your group"),
                        const SizedBox(
                          height: 10,
                        ),
                        Wrap(
                          children: List.generate(5, (index) {
                            return InkWell(
                              onTap: () {
                                setState(() {
                                  selectedButton = index;
                                });
                              },
                              child: Container(
                                margin: const EdgeInsets.only(right: 10),
                                child: AppButton(
                                  onPress: () {},
                                  color: selectedButton == index
                                      ? Colors.white
                                      : Colors.black,
                                  backgroundColor: selectedButton == index
                                      ? Colors.black87
                                      : AppColors.buttonBackground,
                                  borderColor: selectedButton == index
                                      ? Colors.black87
                                      : AppColors.buttonBackground,
                                  size: 50,
                                  isIcon: false,
                                  text: (index + 1).toString(),
                                ),
                              ),
                            );
                          }),
                        ),
                        const SizedBox(
                          height: 10,
                        ),
                        AppLargeText(
                          text: "Description",
                          size: 20,
                          color: Colors.black87,
                        ),
                        const SizedBox(
                          height: 6,
                        ),
                        AppText(
                          text:
                              "You must go for a travel. Travelling helps get rid of pressure. Go to the mountains to see the nature. ",
                          color: AppColors.mainTextColor,
                        ),
                      ]),
                )),
            Positioned(
                bottom: 20,
                left: 20,
                right: 20,
                child: Row(
                  children: [
                    AppButton(
                      onPress: () {
                        setState(() {
                          isSelectedHeart = !isSelectedHeart;
                        });
                      },
                      backgroundColor: Colors.white,
                      borderColor: AppColors.textColor2,
                      size: 60,
                      isIcon: true,
                      icon: isSelectedHeart
                          ? Icons.favorite
                          : Icons.favorite_border_outlined,
                      color:
                          isSelectedHeart ? Colors.red : AppColors.textColor2,
                    ),
                    const SizedBox(
                      width: 20,
                    ),
                    ResponsiveButton(
                      text: "Book Trip Now",
                    )
                  ],
                ))
          ],
        ),
      ),
    );
  }
}
