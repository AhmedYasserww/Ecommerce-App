
import 'package:ecommerce_app/core/utils/app_color.dart';
import 'package:flutter/material.dart';
class CustomButton extends StatelessWidget {
  const CustomButton({super.key,
    required this.text,
    this.onPressed,
  });
  final String text;
  final void Function()? onPressed;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
     // height: 48,
      child: TextButton(
        style: TextButton.styleFrom(
          backgroundColor: AppColors.primaryColor,
            shape:RoundedRectangleBorder(
          borderRadius:BorderRadius.circular(15),
        )),
          onPressed:onPressed,
          child:Text(text,style: const TextStyle(color: Colors.white),)),
    );
  }
}
