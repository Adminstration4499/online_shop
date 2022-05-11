import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:online_shop/Pages/constants.dart';
import 'package:online_shop/main_Page/enum.dart';
import 'package:online_shop/main_Page/favorite_page.dart';
import 'package:online_shop/main_Page/shopping_card.dart';
import 'package:online_shop/main_Page/user_page.dart';

import 'Pages/home_screen.dart';

class BottomNavBar extends StatelessWidget {
  const BottomNavBar({
    Key? key,
    required this.selectingMenu,
  }) : super(key: key);

  final MenuState selectingMenu;
  final Color inactiveMenu = Colors.grey;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(vertical: 14),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(40),
          topRight: Radius.circular(40),
        ),
        boxShadow: [
          BoxShadow(
            color: Color(0xFFDADADA),
            offset: Offset(0, -15),
            blurRadius: 20,
          ),
        ],
      ),
      child: SafeArea(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            IconButton(
              icon: SvgPicture.asset(
                'assets/icons/home.svg',
                color: MenuState.home == selectingMenu
                    ? kPrimaryColor
                    : inactiveMenu,
              ),
              onPressed: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => HomeScreen()));
              },
            ),
            IconButton(
              icon: SvgPicture.asset(
                'assets/icons/heart.svg',
                color: MenuState.favorie == selectingMenu
                    ? kPrimaryColor
                    : inactiveMenu,
              ),
              onPressed: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => FavoriteScreen()));
              },
            ),
            IconButton(
              icon: SvgPicture.asset('assets/icons/shopping_card.svg',
                color: MenuState.shoppingcard == selectingMenu
                    ? kPrimaryColor
                    : inactiveMenu,),
              onPressed: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => ShoppingCardPage()));
              },
            ),
            IconButton(
              icon: SvgPicture.asset('assets/icons/user.svg',
                color: MenuState.profile == selectingMenu
                    ? kPrimaryColor
                    : inactiveMenu,),
              onPressed: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => UserProfile()));
              },
            )
          ],
        ),
      ),
    );
  }
}
