import 'package:basics/chat_app_bar.dart';
import 'package:basics/chat_nav_bar.dart';
import 'package:basics/my_message.dart';
import 'package:basics/other_message.dart';
import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';

class ChatScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: ChatAppBar(
        name: "Mohamed Shaban",
        profileImage: "assets/images/mohamed_shaban.jpeg",
      ),
      body: Stack(
        alignment: Alignment.bottomCenter,
        children: [
          SafeArea(
            child: Container(
              height: double.infinity,
              width: double.infinity,
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage("assets/images/background.png"),
                  fit: BoxFit.cover,
                ),
              ),
              padding: EdgeInsets.only(left: 15, right: 15, bottom: 70),
              child: SingleChildScrollView(
                child: Column(
                  children: [
                    SizedBox(height: 33),
                    MyMessage("Hello !"),
                    OtherMessage("Hello !"),
                    MyMessage(
                      "Hey! Have you ever thought about how random moments can sometimes turn into the best memories? It’s like the universe loves to surprise us when we least expect it!",
                    ),
                    MyMessage(
                      "what a Great Content Tp learn Flutter",
                      image: "assets/images/route_image.png",
                    ),
                    OtherMessage("what a Great Content Tp learn Flutter"),
                  ],
                ),
              ),
            ),
          ),
          ChatNavBar(),
        ],
      ),
    );
  }
}
