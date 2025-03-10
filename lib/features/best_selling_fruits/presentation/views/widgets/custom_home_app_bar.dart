import 'package:ecommerce_app/core/utils/app_text_styles.dart';
import 'package:ecommerce_app/core/widgets/notification_widget.dart';
import 'package:flutter/material.dart';

class CustomHomeAppBar extends StatelessWidget implements PreferredSizeWidget {
  const CustomHomeAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return AppBar(
      centerTitle: true,
      backgroundColor: Colors.transparent,
      title: const Text(
        'الأكثر مبيعًا',
        style: AppTextStyles.bold19,
      ),
      leading: Transform.translate(
        offset: const Offset(-16, 0),
        child: Container(
          decoration: const ShapeDecoration(
            color: Colors.white,
            shape: OvalBorder(
              side: BorderSide(width: 1, color: Color(0xFFF1F1F5)),
            ),
          ),
          child: Center(
            child: IconButton(
              onPressed: () {
                Navigator.of(context).pop();
              },
              icon: const Icon(Icons.arrow_back_ios_new),
            ),
          ),
        ),
      ),
      actions: const [
        Padding(
          padding: EdgeInsets.symmetric(horizontal: 16),
          child: NotificationWidget(),
        ),
      ],
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(56);
}
