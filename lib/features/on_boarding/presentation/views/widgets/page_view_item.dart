import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class PageViewItem extends StatelessWidget {
  const PageViewItem({super.key, required this.title, required this.subtitle, required this.image, required this.backgroundImage});
  final Widget title;
  final String subtitle;
  final String image,backgroundImage ;


  @override
  Widget build(BuildContext context) {
    return  Column(
      children: [
SizedBox(
  width: double.infinity,
  height: MediaQuery.of(context).size.height * 0.5,
  child: Stack(
    children: [
      Positioned.fill(child: SvgPicture.asset(backgroundImage,fit: BoxFit.fill,)),
      Positioned(
        bottom: 0,
        left: 0,
          right: 0,
          child: SvgPicture.asset(image)),
      const Text("تخط")
    ],
  ),
)
      ],
    );
  }
}
