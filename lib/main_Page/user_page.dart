import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../BottomNavBar.dart';
import 'enum.dart';

class UserProfile extends StatefulWidget {

  @override
  State<UserProfile> createState() => _UserProfileState();
}

class _UserProfileState extends State<UserProfile> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Profile"),
      ),
      bottomNavigationBar: BottomNavBar(
        selectingMenu: MenuState.profile,
      ),
    );
  }
}
