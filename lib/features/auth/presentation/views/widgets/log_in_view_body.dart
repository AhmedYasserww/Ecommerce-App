import 'package:ecommerce_app/core/utils/app_color.dart';
import 'package:ecommerce_app/core/utils/app_images.dart';
import 'package:ecommerce_app/core/utils/app_text_styles.dart';
import 'package:ecommerce_app/core/widgets/custom_button.dart';
import 'package:ecommerce_app/features/auth/presentation/views/widgets/custom_email_text_field.dart';
import 'package:ecommerce_app/features/auth/presentation/views/widgets/custom_password_text_field.dart';
import 'package:ecommerce_app/features/auth/presentation/views/widgets/custom_social_button.dart';
import 'package:ecommerce_app/features/auth/presentation/views/widgets/do_not_have_an_account_widget.dart';
import 'package:ecommerce_app/features/auth/presentation/views/widgets/or_divider.dart';
import 'package:flutter/material.dart';
class LogInViewBody extends StatefulWidget {
  const LogInViewBody({super.key});

  @override
  State<LogInViewBody> createState() => _LogInViewBodyState();
}

class _LogInViewBodyState extends State<LogInViewBody> {
  bool visible = true;
 late TextEditingController emailController;
 late TextEditingController passwordController;
  void toggleVisibility() {
    setState(() {
      visible = !visible;
    });
  }
  @override
  void initState() {
    emailController = TextEditingController();
    passwordController = TextEditingController();
    super.initState();
  }
  @override
  dispose() {
    emailController.dispose();
    passwordController.dispose();
    super.dispose();
  }
  @override
  Widget build(BuildContext context) {
    return  SingleChildScrollView(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 17),
        child: Column(
          children: [
            const SizedBox(height: 24,),
            EmailField(emailController:emailController),
            const SizedBox(height: 16,),
            PasswordField(
                passwordController: passwordController,
                visible: visible,
                toggleVisibility: toggleVisibility
            ),
            const SizedBox(height: 16,),
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Text("نسيت كلمة المرور؟",style: AppTextStyles.semiBold13.copyWith(color:AppColors.lightPrimaryColor),

                ),
              ],
            ),
            const SizedBox(height: 33,),
            CustomButton(
              onPressed: (){},
              text: "تسجيل الدخول",
            ),
            const SizedBox(height: 33,),
            const DoNotHaveAnAccountWidget(),
            const SizedBox(
              height: 37,
            ),
            const OrDivider(),
            const SizedBox(height: 16,),
            CustomSocialButton(
              onPressed: (){},
              imagePath: AppImages.googleIcon,
              text: "تسجيل بواسطة جوجل",
            ),
            const SizedBox(height: 16,),
            CustomSocialButton(text: "تسجيل بواسطة أبل", onPressed: (){}, imagePath: AppImages.appleIcon),
           const SizedBox(height: 16,),
           CustomSocialButton(text: "تسجيل بواسطة فيسبوك", onPressed: (){}, imagePath: AppImages.faceBookIcon)


          ],
        ),
      ),
    );
  }
}

