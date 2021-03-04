import 'package:flutter/material.dart';

class MessageBubble extends StatelessWidget {
  final bool isMe;
  final String message;
  final String date;
  MessageBubble({this.isMe, this.message, this.date});
  @override
  Widget build(BuildContext context) {
    final width = 100.0;
    //sizeFromWidth(context, 5);
    return Container(
      margin: EdgeInsets.only(
        left: isMe ? width : 0.0,
        right: !isMe ? width : 0.0,
        bottom: 10,
      ),
      padding: EdgeInsets.all(10),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(message,
            style: TextStyle(
            color: isMe ? Colors.white : Colors.black,
            fontWeight: FontWeight.w700,
            ),
          ),
          SizedBox(height: 10,),
          Align(
            alignment: Alignment.bottomLeft,
            child: Text(date,style: TextStyle(
              fontWeight: isMe ? FontWeight.w200 : FontWeight.w400,
              color: isMe ? Colors.white : Colors.black,
              fontSize: 12,
            ),
              textDirection: TextDirection.ltr,
            ),
          ),
        ],
      ),
      decoration: BoxDecoration(
        color: isMe ? Colors.deepOrange : Colors.white ,
        borderRadius: BorderRadius.circular(8)
      ),
    );
  }
}