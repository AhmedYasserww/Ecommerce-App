import 'package:ecommerce_app/core/widgets/custom_button.dart';
import 'package:ecommerce_app/features/auth/presentation/views/widgets/custom_email_text_field.dart';
import 'package:ecommerce_app/features/auth/presentation/views/widgets/custom_password_text_field.dart';
import 'package:ecommerce_app/features/auth/presentation/views/widgets/custom_name_text_field.dart';
import 'package:ecommerce_app/features/auth/presentation/views/widgets/do_not_have_an_account_widget.dart';
import 'package:ecommerce_app/features/auth/presentation/views/widgets/have_an_account_widget.dart';
import 'package:ecommerce_app/features/auth/presentation/views/widgets/term_and_condition_widget.dart';
import 'package:flutter/material.dart';
class SignUpViewBody extends StatefulWidget {
  const SignUpViewBody({super.key});

  @override
  State<SignUpViewBody> createState() => _SignUpViewBodyState();
}

class _SignUpViewBodyState extends State<SignUpViewBody> {
  bool visible = true;
  late TextEditingController nameController;
  late TextEditingController emailController;
  late TextEditingController passwordController;
  void toggleVisibility() {
    setState(() {
      visible = !visible;
    });
  }
  @override
  void initState() {
    nameController = TextEditingController();
    passwordController = TextEditingController();
    emailController = TextEditingController();
    super.initState();
  }
  @override
  void dispose() {
nameController.dispose();
emailController.dispose();
passwordController.dispose();
    super.dispose();
  }
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16),
        child: Column(
          children: [
            const SizedBox(height: 24,),
        NameField(nameController: nameController),
            const SizedBox(height: 16,),
            EmailField(emailController: emailController),
            const SizedBox(height: 16,),
            PasswordField(
                passwordController: passwordController,
                visible: visible,
                toggleVisibility: toggleVisibility
            ),
           const SizedBox(height: 16,),
            const TermsAndConditionWidget(),
            const SizedBox(height:30 ,),
            CustomButton(
              onPressed: (){},
              text: "إنشاء حساب جديد",
            ),
            SizedBox(height: 26,),
            HaveAnAccountWidget()
          ],
        ),
      ),
    );
  }
}
