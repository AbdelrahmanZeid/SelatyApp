import 'package:flutter/material.dart';
import '../../../../core/utils/app_funcation.dart';
import '../../../../core/utils/app_size.dart';
import '../../data/on_boarding_model.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class CustomPageView extends StatefulWidget {
  CustomPageView({super.key, required this.controller});
  int currentIndex = 0;
  PageController controller;

  @override
  State<CustomPageView> createState() => _CustomPageViewState();
}

class _CustomPageViewState extends State<CustomPageView> {
  @override
  void dispose() {
    widget.controller.dispose();
    super.dispose();
  }

  Widget build(BuildContext context) {
    return PageView.builder(
      physics: const BouncingScrollPhysics(),
      onPageChanged: (index) {
        widget.currentIndex = index;
        setState(() {});
        if (widget.currentIndex == 2) {
          Future.delayed(
            const Duration(
              seconds: 3,
            ),
            () => navigation(
              context,
              "/auth",
            ),
          );
        }
      },
      itemBuilder: (context, index) {
        return Padding(
          padding: const EdgeInsets.all(
            8.0,
          ),
          child: ListView(
            children: [
           isPortrait(context)?   SizedBox(
                height: AppSize.getHeight(
                  30,
                ),
              ):SizedBox(
                height: AppSize.getHeight(
                 5,
                ),
              ),
              isPortrait(context)
                  ? Center(
                      child: Image.asset(
                        onBoardingList[index].image,
                        width: double.infinity,
                        // height: AppSize.getHeight(300,),
                      ),
                    )
                  : Center(
                      child: Image.asset(
                        onBoardingList[index].image,
                        width: double.infinity,
                        height: AppSize.getHeight(
                         130,
                        ),
                      ),
                    ),
              SizedBox(
                height: AppSize.getHeight(
                  50,
                ),
              ),
              Align(
                alignment: Alignment.centerRight,
                child: Text(
                  onBoardingList[index].title,
                  style: TextStyle(
                    color: onBoardingList[index].color,
                    fontSize: 25,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              Align(
                alignment: Alignment.centerRight,
                child: Text(
                  onBoardingList[index].subTitle,
                  style: TextStyle(
                    color: onBoardingList[index].color,
                    fontSize: 20,
                  ),
                  textAlign: TextAlign.right,
                ),
              ),
           isPortrait(context)?  SizedBox(
                height: AppSize.getHeight(
                  60,
                ),
              ): SizedBox(
                height: AppSize.getHeight(
                  40,
                ),
              ),
              Row(
                // mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Spacer(),
                  isPortrait(context)
                      ? Container(
                        width: AppSize.getWidth(
                          55,
                        ),
                        height: AppSize.getHeight(
                          50,
                        ),
                        decoration: BoxDecoration(
                          color: onBoardingList[index].color,
                          borderRadius: BorderRadius.circular(
                            360,
                          ),
                        ),
                        child: const Icon(
                          Icons.arrow_right_alt_rounded,
                          color: Colors.white,
                          size: 28,
                        ),
                      )
                      : Container(
                          width: AppSize.getWidth(
                            22,
                          ),
                          height: AppSize.getHeight(
                            48,
                          ),
                          decoration: BoxDecoration(
                            color: onBoardingList[index].color,
                            borderRadius: BorderRadius.circular(
                              450,
                            ),
                          ),
                          child: const Icon(
                            Icons.arrow_right_alt_rounded,
                            color: Colors.white,
                            size: 28,
                          ),
                        ),
                  const Spacer(
                    flex: 8,
                  ),
                  SmoothPageIndicator(
                    controller: widget.controller,
                    axisDirection: Axis.horizontal, // PageController
                    count: 3,
                    effect: WormEffect(
                      dotWidth: 13,
                      dotHeight: 7,
                      dotColor: Colors.grey,
                      activeDotColor: onBoardingList[index].color,
                    ),
                    // your preferred effect
                  ),
                  Spacer(),
                ],
              ),
            ],
          ),
        );
      },
      itemCount: onBoardingList.length,
    );
  }
}
