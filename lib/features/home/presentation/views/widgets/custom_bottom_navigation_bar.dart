import 'package:ecommerce_app/features/home/domain/entites/bottom_navigation_bar_entity.dart';
import 'package:ecommerce_app/features/home/presentation/views/widgets/navigation_bar_item.dart';
import 'package:flutter/material.dart';
class CustomBottomNavigationBar extends StatefulWidget {
  const CustomBottomNavigationBar({super.key});

  @override
  State<CustomBottomNavigationBar> createState() => _CustomBottomNavigationBarState();
}

class _CustomBottomNavigationBarState extends State<CustomBottomNavigationBar> {
  int selectedIndex = 0;
  @override
  Widget build(BuildContext context) {
    return    Container(
      height: 70,
      decoration: const BoxDecoration(
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(30),
          topRight: Radius.circular(30),
        ),
          color: Colors.white,
          boxShadow: [
          BoxShadow(
          color: Color(0x19000000),
      blurRadius: 7,
      offset: Offset(0, -2),
      spreadRadius: 0,
    )
  ]
    ),child: Row(
      children:bottomNavigationBarItems.asMap().entries.map((e)
      {
        var index = e.key;
        var item = e.value;
        return Expanded(
          flex: selectedIndex == index ? 3: 2,
          child: GestureDetector(
            onTap: (){
              setState(() {
                selectedIndex = index;
              });
            },
            child: NavigationBarItem(
              isActive:selectedIndex == index,
              navigationBarEntity: item,

            ),
          ),
        );
      }
      ).toList(),
    )

    );
  }
}



