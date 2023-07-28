import 'package:carousel_slider/carousel_slider.dart';
import 'package:demo_project/core/constants/theme_constants.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class PostImages extends StatelessWidget {
  PostImages({required this.imgList, super.key});

  final List<String> imgList;
  final RxInt selectedIndex = 0.obs;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 450,
      child: Stack(
        children: [
          CarouselSlider(
            items: imgList.map((img) {
              return Builder(
                builder: (_) {
                  return imageView(img);
                },
              );
            }).toList(),
            options: CarouselOptions(
              initialPage: selectedIndex.value,
              onPageChanged: (val, _) {
                selectedIndex.value = val;
              },
              height: 450,
              autoPlay: true,
              viewportFraction: 1,
              autoPlayInterval: const Duration(seconds: 3),
            ),
          ),
          Positioned(
            bottom: 20,
            right: 0,
            left: 0,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: List.generate(
                imgList.length,
                (index) {
                  return Obx(() {
                    return Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 2.5),
                      child: AnimatedContainer(
                        curve: Curves.easeIn,
                        duration: const Duration(milliseconds: 300),
                        width: 8,
                        height: 8,
                        decoration: BoxDecoration(
                          color: index == selectedIndex.value
                              ? ThemeColors.clrWhite
                              : ThemeColors.clrWhite.withOpacity(0.5),
                          shape: BoxShape.circle,
                        ),
                      ),
                    );
                  });
                },
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget imageView(String image) {
    return Image.network(
      image,
      height: 450,
      loadingBuilder: (_, child, loadingProgress) {
        if (loadingProgress == null) {
          return child;
        }
        return Container(
          padding: const EdgeInsets.all(8),
          alignment: Alignment.center,
          child: const CircularProgressIndicator(color: ThemeColors.clrTeal),
        );
      },
      width: double.maxFinite,
      fit: BoxFit.fill,
    );
  }
}
