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
      foregroundColor: Colors.white,
      leadingWidth: 30,
      leading: Padding(padding: EdgeInsets.only(left: 10),child: IconButton(onPressed: () {}, icon: Icon(CupertinoIcons.back))),
      title: Row(
        spacing: 8,
        children: [
          CircleAvatar(backgroundImage: AssetImage(profileImage)),
          Text(
            name,
            style: TextStyle(
              color: Color(0xFFFFFFFF),
              fontSize: 14,
              fontWeight: FontWeight.w700,
            ),
          ),
        ],
      ),
      actions: [
        IconButton(onPressed: () {}, icon: Icon(CupertinoIcons.phone)),
        IconButton(onPressed: () {}, icon: Icon(CupertinoIcons.video_camera)),
        IconButton(
          onPressed: () {},
          icon: Icon(CupertinoIcons.ellipsis_vertical),
        ),
      ],
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);
}
