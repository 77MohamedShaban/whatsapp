import 'package:flutter/material.dart';

class OtherMessage extends StatelessWidget {
  String text;
  String? image;
  OtherMessage(this.text,{this.image});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.end,
      children: [
        Flexible(
          child: Container(
            margin: EdgeInsets.only(bottom: 16),
            padding: EdgeInsets.all(16),
            decoration: BoxDecoration(
              color: Color(0xFF232D36),
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(16),
                bottomLeft: Radius.circular(16),
                bottomRight: Radius.circular(16),
              ),
            ),
            constraints: BoxConstraints(
              maxWidth: 268,
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  text,
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 16,
                    fontWeight: FontWeight.w500,
                  ),
                ),SizedBox(height: 7,)

                ,if(image!=null)
                Image.asset(image!)
              ],
            ),
          ),
        ),
      ],
    );
  }
}
