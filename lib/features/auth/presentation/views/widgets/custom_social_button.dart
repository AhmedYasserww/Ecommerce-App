import 'package:ecommerce_app/core/utils/app_text_styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
class CustomSocialButton extends StatelessWidget {
  const CustomSocialButton({super.key, required this.text, required this.onPressed, required this.imagePath});
  final String text;
  final void Function() onPressed;
  final String imagePath;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      child: TextButton(
        style: TextButton.styleFrom(
          backgroundColor: Colors.white,
          shape:RoundedRectangleBorder(
            side: const BorderSide(color:  Color(0xffDDDFDF),width: 1),
            borderRadius:BorderRadius.circular(16),
          ),
        ),
          onPressed: onPressed,
        child: ListTile(
          visualDensity: const VisualDensity(
            vertical: VisualDensity.minimumDensity
          ),
          title: Text(text,
            textAlign: TextAlign.center,
            style: AppTextStyles.semiBold16.copyWith(color: const Color(0xff0C0D0D)),),
          leading: SvgPicture.asset(imagePath),
        ),

      ),
    );
  }
}
