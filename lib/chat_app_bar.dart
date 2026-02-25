import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ChatAppBar extends StatelessWidget implements PreferredSizeWidget {
  String name;
  String profileImage;

  ChatAppBar({required this.name, this.profileImage = ""});

  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: Color(0xFF168C4B),
      leadingWidth: 95,

      leading: Container(

        padding: EdgeInsets.only(left: 18),
        child: Row(
          children: [
            Container(
                margin: EdgeInsets.only(right: 10),
                child: Icon(CupertinoIcons.back, color: Colors.white, weight: 9.02)),
            CircleAvatar(backgroundImage: AssetImage(profileImage)),
          ],
        ),
      ),
      title: Text(
        name,
        style: TextStyle(
          color: Color(0xFFFFFFFF),
          fontSize: 14,
          fontWeight: FontWeight.w700,
        ),
      ),
      actions: [
        Icon(CupertinoIcons.phone, color: Colors.white),
        SizedBox(width: 16.4),
        Icon(CupertinoIcons.video_camera, color: Colors.white),
        SizedBox(width: 16.4),
        Icon(CupertinoIcons.ellipsis_vertical, color: Colors.white),
      ],
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);
}
