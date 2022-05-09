import 'package:flutter/material.dart';

import 'constants.dart';

class customAppBar extends StatelessWidget {
  const customAppBar({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Container(
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(20),
          ),
          //Icon dashboard
          child: Builder(
            builder: (context) => IconButton(
              icon: Icon(Icons.dashboard),
              onPressed: () {
                Scaffold.of(context).openDrawer();
              },
            ),
          ),
        ),
        Column(
          children: [
            Text('Umair'),
            Text(
              'Lahore,PKR',
              style: TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.w500,
              ),
            ),
          ],
        ),
        //Avatar Profile
        CircleAvatar(
          backgroundColor: kPrimaryColor,
        ),
      ],
    );
  }
}
