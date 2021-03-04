
import 'package:e7twa2/chat/view.dart';
import 'package:flutter/material.dart';


class ChatsCard extends StatelessWidget {
  final String name;
  final String image;
  final String date;
   ChatsCard({ this.name, this.image, this.date}) ;
  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    return GestureDetector(
      onTap:()=> Navigator.push(context, MaterialPageRoute(builder: (_)=>ChatView(date: date,name: name,))),
      child: Container(
        margin: EdgeInsets.symmetric(horizontal: 15),
        padding: EdgeInsets.symmetric(horizontal: 20),
        height: height*.12,
        width: double.infinity,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(15),
            color: Colors.yellow
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(
              children: [
                CircleAvatar(
                  maxRadius: 33,
                  backgroundColor: Colors.deepOrange,
                  child:CircleAvatar(
                    maxRadius: 32,
                  ),
                ),
                SizedBox(width: 15,),
                Text(name,style: TextStyle(color:Colors.black,fontSize: 18, fontFamily: "dinnextl bold",),),



              ],
            ),
            Icon(Icons.keyboard_arrow_right
              ,size:30,),
          ],
        ),
      ),
    );
  }
}
