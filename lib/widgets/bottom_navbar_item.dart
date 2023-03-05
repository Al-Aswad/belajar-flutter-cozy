import 'package:flutter/material.dart';

class BottomNavbarItem extends StatelessWidget {
  String imageUrl;
  bool isActive;

  BottomNavbarItem({required this.imageUrl, this.isActive = false});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Spacer(),
        isActive
            ? Image.asset(
                imageUrl,
                width: 26,
                color: Color(0xff6F35A5),
              )
            : Image.asset(
                imageUrl,
                width: 26,
              ),
        Spacer(),
        isActive
            ? Container(
                width: 30,
                height: 4,
                decoration: BoxDecoration(
                  color: const Color(0xff6F35A5),
                  borderRadius: BorderRadius.circular(1000),
                ),
              )
            : Container(
                width: 30,
                height: 4,
              )
      ],
    );
  }
}
