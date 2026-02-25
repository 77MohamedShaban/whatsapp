import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';

class ChatNavBar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.only(bottom: 20),
      decoration: BoxDecoration(color: Colors.transparent),

      child: Row(
        children: [
          // input
          Expanded(
            child: Container(
              margin: const EdgeInsets.only(left: 16, right: 8),
              padding: const EdgeInsets.symmetric(horizontal: 14, vertical: 10),
              decoration: BoxDecoration(
                color: Colors.transparent,
                borderRadius: BorderRadius.circular(39),
                border: Border.all(color: Color(0xFF168C4B), width: 1),
              ),
              child: Row(
                children: [
                  Icon(CupertinoIcons.camera, color: Colors.white),
                  SizedBox(width: 8),

                  // text
                  Expanded(
                    child: TextField(
                      autocorrect: true,
                      cursorColor: Color(0xFF168C4B),
                      cursorRadius: Radius.circular(16),
                      keyboardType: TextInputType.text,
                      textInputAction: TextInputAction.send,
                      style: TextStyle(fontSize: 16,fontWeight: FontWeight.w500,color: Colors.white),
                      decoration: InputDecoration(
                        hintText: "Type a Message ...",
                          hintStyle: TextStyle(fontSize: 14,fontWeight: FontWeight.w500,color: Colors.white),
                        enabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(30)
                        )
                          ,focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(30)
                      )
                      ),

                    ),
                  ),

                  SizedBox(width: 8),
                  Icon(CupertinoIcons.paperplane, color: Colors.white),
                ],
              ),
            ),
          ),

          // mic button
          Container(
            margin: const EdgeInsets.only(right: 16),
            padding: const EdgeInsets.all(6),
            decoration: BoxDecoration(
              color: Color(0xFF168C4B),
              borderRadius: BorderRadius.circular(39),
            ),
            child: IconButton(onPressed: (){}, icon: Icon(Icons.mic, color: Colors.white)),
          ),
        ],
      ),
    );
  }
}
