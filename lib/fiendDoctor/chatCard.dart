import 'package:e7twa2/DoctorProfile/view.dart';
import 'package:e7twa2/constants.dart';
import 'package:flutter/material.dart';


class ChatsCard extends StatelessWidget {
  final String name;
  final String image;
   ChatsCard({ this.name, this.image}) ;
  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    return GestureDetector(
      onTap:()=> Navigator.push(context, MaterialPageRoute(builder: (_)=>DoctorProfile())),
      child: Container(
        margin: EdgeInsets.symmetric(horizontal: 15),
        padding: EdgeInsets.symmetric(horizontal: 20),
        height: height*.12,
        width: double.infinity,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(15),
            color: Colors.white54
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
                    child: Image.network(
                        "https://jeeet.net/public/dash/assets/img/${image}",
                      fit: BoxFit.cover,

                  ),
                  ),
                ),
                SizedBox(width: 15,),
                Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(name,style: TextStyle(color:Colors.black,fontSize: 18, fontFamily: "dinnextl bold",),),
                    Text(name,style: TextStyle(color:Colors.black,fontSize: 14, fontFamily: "dinnextl bold",),),
                  ],
                ),

              ],
            ),
            CircleAvatar(
              backgroundColor: kPrimaryColor,
              maxRadius: 15,
              child: Icon(Icons.keyboard_arrow_right,
                color: Colors.white
                ,size:30,),
            ),
          ],
        ),
      ),
    );
  }
}
