
import 'package:ecommerce_app/core/utils/app_color.dart';
import 'package:flutter/material.dart';
class CustomTextField extends StatelessWidget {
   const CustomTextField({
     super.key,
     this.onSaved,this.onChange,
     this.validator, this.prefixIcon,this.suffixIcon,
     this.obscureText =false,
     this.controller,
    this.hintText,
     this.keyboardType});


   final void Function(String?)? onSaved;
   final void Function(String?)? onChange;
   final String? Function(String?)? validator;
   final Widget? prefixIcon;
  final Widget? suffixIcon;
  final bool obscureText ;
  final TextEditingController? controller;
   final String? hintText;
   final TextInputType? keyboardType;
  @override
  Widget build(BuildContext context) {

      return TextFormField(

        keyboardType: keyboardType,
        controller: controller ,
        obscureText:obscureText,
        onSaved:onSaved ,
        onChanged: onChange,
        validator: validator,
          decoration:InputDecoration(
            fillColor:const Color(0xffF9FAFA) ,
              filled: true,
            prefixIcon:prefixIcon ,
            prefixIconColor: Colors.black.withOpacity(.7),
            hintText:hintText ,
            suffixIcon: suffixIcon,

              hintStyle: TextStyle(fontSize: 13,
                  fontWeight: FontWeight.w700,
                color:  Color(0xff949D9E)
              ),
      enabledBorder: buildBorder(),
           focusedBorder: buildBorder(AppColors.primaryColor),
            errorBorder: buildBorder(Colors.red),
            focusedErrorBorder: buildBorder(Colors.red),
            border: const OutlineInputBorder()

          )
      );

  }
   OutlineInputBorder buildBorder([color]){
    return OutlineInputBorder(
      borderRadius: BorderRadius.circular(4),
      borderSide: BorderSide(color: color ?? const Color(0xffE6E9EA),width: 1),
    );
   }
}
