import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';

class ChatNavBar extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Container(
        padding: const EdgeInsets.only(bottom: 20),
        decoration: BoxDecoration(color: Colors.transparent,),

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
                    border: Border.all(color:Color(0xFF168C4B),width: 1)
                ),
                child: Row(
                  children: [
                    Icon(CupertinoIcons.camera, color: Colors.white,),
                    SizedBox(width: 8),

                    // text
                    Expanded(
                      child: Text(
                        "Type a Message ...",
                        style: TextStyle(color: Colors.white,fontSize: 12,fontWeight: FontWeight.w500),
                        overflow: TextOverflow.ellipsis,
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
              padding: const EdgeInsets.all(12),
              decoration: BoxDecoration(
                color: Color(0xFF168C4B),
                borderRadius: BorderRadius.circular(39),
              ),
              child: Icon(Icons.mic,color: Colors.white,),
            ),
          ],
        ),
      ),
    );
  }
}
