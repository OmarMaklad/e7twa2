import 'package:e7twa2/widgets/customButton.dart';
import 'package:e7twa2/widgets/customTextFeild.dart';
import 'package:e7twa2/widgets/mediaButton.dart';
import 'package:e7twa2/widgets/smallButton.dart';
import 'package:flutter/material.dart';

import '../constants.dart';

class DoctorProfile extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    return Scaffold(
      backgroundColor: Colors.purpleAccent,
      body:Stack(
        children: [
          Container(
            height: height*1,
            width: double.infinity,
            decoration: BoxDecoration(
                image: DecorationImage(
                    image: AssetImage("assets/images/backG.png",),
                    fit: BoxFit.fill
                )
            ),
          ),
          Container(
            height: height*.12,
            color: Colors.white,
            padding: EdgeInsets.symmetric(horizontal: 15),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                GestureDetector(
                  onTap: (){
                    Navigator.pop(context);
                  },
                  child: Padding(
                    padding:EdgeInsets.only(top:30),
                    child: SizedBox(height:height*.03,child: Image.asset("assets/images/back.png")),
                  ),
                ),
                Image.asset("assets/images/logo.png"),
                Padding(
                  padding:EdgeInsets.only(top:30),
                  child: SizedBox(height:height*.03,child: Image.asset("assets/images/flag.png")),
                ),                 ],
            ),
          ),
          Padding(
            padding:  EdgeInsets.only(top: height*.1),
            child: ListView(
              children: [

                Padding(
                  padding:  EdgeInsets.symmetric(horizontal: 30,vertical: 20),
                  child: Text("Doctor Profile",style: TextStyle(fontSize:24,fontWeight: FontWeight.bold)),
                ),
                Container(
                    height: height*.1,
                    child: Image.asset("assets/images/doc.png",fit: BoxFit.contain,)),
                Text("Omar Ayman",textAlign: TextAlign.center,
                    style: TextStyle(fontSize:18,fontWeight: FontWeight.bold)),


                SizedBox(height: height*.02,),
                CustomTextField(
                  hint: "location",
                  dIcon: "assets/images/user.png",
                ),
                CustomTextField(
                  hint: "phone",
                  dIcon: "assets/images/phone.png",
                ),
                CustomTextField(
                  hint: "email",
                  dIcon: "assets/images/email.png",
                ),
                CustomTextField(
                  hint: "spicialization",
                  dIcon:"assets/images/hed.png",
                ),

                SizedBox(height: height*.02,),

                SizedBox(height: height*.02,),

                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    MediaButton(onPressed: (){}, title: "GG",color:Colors.yellow,),
                    MediaButton(onPressed: (){}, title: "gg",color:Colors.blue),
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    MediaButton(onPressed: (){}, title: "gg",color:Colors.deepPurple,),
                    MediaButton(onPressed: (){}, title: "gg",color:Colors.green),
                  ],
                ),


              ],

            ),
          ),
        ],
      ),
    );
  }
}
