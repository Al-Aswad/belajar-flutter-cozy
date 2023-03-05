import 'package:cozy_kost/theme.dart';
import 'package:cozy_kost/widgets/bottom_navbar_item.dart';
import 'package:flutter/material.dart';

class BottomNavbar extends StatefulWidget {
  const BottomNavbar({super.key});

  @override
  State<BottomNavbar> createState() => _BottomNavbarState();
}

class _BottomNavbarState extends State<BottomNavbar> {
  bool home = true;
  bool message = false;
  bool card = false;
  bool love = false;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 65,
      // width full
      width: MediaQuery.of(context).size.width - (3 * edge),
      // width: MediaQuery.of(context).size.width - (2 * edge),
      margin: EdgeInsets.symmetric(
        horizontal: edge,
      ),
      decoration: BoxDecoration(
        color: Color(0xffF6F7F8),
        borderRadius: BorderRadius.circular(23),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          InkWell(
            onTap: () {
              // set state active
              print('clicked');
              setState(() {
                home = true;
                message = false;
                card = false;
                love = false;
              });
            },
            child: BottomNavbarItem(
              imageUrl: 'assets/icons/icon_home.png',
              isActive: home,
            ),
          ),
          InkWell(
            onTap: () {
              // set state active
              print('clicked');
              setState(() {
                home = false;
                message = true;
                card = false;
                love = false;
              });
            },
            child: BottomNavbarItem(
              imageUrl: 'assets/icons/icon_mail.png',
              isActive: message,
            ),
          ),
          InkWell(
            onTap: () {
              // set state active
              print('clicked');
              setState(() {
                home = false;
                message = false;
                card = true;
                love = false;
              });
            },
            child: BottomNavbarItem(
              imageUrl: 'assets/icons/icon_card.png',
              isActive: card,
            ),
          ),
          InkWell(
            onTap: () {
              // set state active
              print('clicked');
              setState(() {
                home = false;
                message = false;
                card = false;
                love = true;
              });
            },
            child: BottomNavbarItem(
              imageUrl: 'assets/icons/icon_love.png',
              isActive: love,
            ),
          ),
        ],
      ),
    );
  }
}
