import 'package:ecommerce_app/core/utils/app_images.dart';
import 'package:ecommerce_app/core/utils/app_text_styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
class SearchTextField extends StatelessWidget {
  const SearchTextField({super.key});

  @override
  Widget build(BuildContext context) {
    return  Container(
      decoration: ShapeDecoration(
        color: Colors.white,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(4)),
        shadows: const [
          BoxShadow(
            color: Color(0x0A000000),
            blurRadius: 9,
            offset: Offset(0, 2),
            spreadRadius: 0,
          )
        ],
      ),
      child: TextField(
        keyboardType: TextInputType.text,
        decoration: InputDecoration(
          hintText: "ابحث عن.......",
          hintStyle: AppTextStyles.regular13.copyWith(color: const Color(0xFF949D9E)),
          filled: true,
          fillColor:  Colors.white,
          border: buildBorder(),
          enabledBorder: buildBorder(),
          focusedBorder: buildBorder(),
          prefixIcon:SizedBox(
            width: 20,
            child: Center(child: SvgPicture.asset(AppImages.searchIcon)),
          ),
          suffixIcon: SizedBox(
            width: 20,
              child: Center(child: SvgPicture.asset(AppImages.filterIcon))),
      )
      ),
    );
  }
  OutlineInputBorder buildBorder([color]){
    return OutlineInputBorder(
      borderRadius: BorderRadius.circular(4),
      borderSide: const BorderSide(color: Colors.white,width: 1),
    );
  }
}
