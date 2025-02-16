import 'package:flutter/material.dart';

import '../../../../../Core/widgets/custom_text_form_field_widget.dart';
class PasswordField extends StatelessWidget {
  final TextEditingController passwordController;
  final bool visible;
  final VoidCallback toggleVisibility;

  const PasswordField({
    super.key,
    required this.passwordController,
    required this.visible,
    required this.toggleVisibility,
  });

  @override
  Widget build(BuildContext context) {
    return CustomTextField(
      hintText: "كلمة المرور",
      controller: passwordController,
      obscureText: visible,
      validator: (value) => value == null || value.isEmpty ? 'Field is required' : null,
      suffixIcon: IconButton(
        onPressed: toggleVisibility,
        icon: Icon(visible ? Icons.visibility_off : Icons.visibility,color: const Color(0xffC9CECF),),
      ),

    );
  }
}