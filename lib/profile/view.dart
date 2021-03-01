import 'package:e7twa2/widgets/customButton.dart';
import 'package:e7twa2/widgets/customTextFeild.dart';
import 'package:e7twa2/widgets/smallButton.dart';
import 'package:flutter/material.dart';

import '../constants.dart';

class Profile extends StatelessWidget {
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
                  child: Text("Your Profile",style: TextStyle(fontSize:24,fontWeight: FontWeight.bold)),
                ),
                Container(
                    height: height*.1,
                    child: Image.asset("assets/images/baby.png",fit: BoxFit.contain,)),

                SizedBox(height: height*.02,),
                CustomTextField(
                  hint:"baby Name",
                  dIcon: "assets/images/baby.png",
                ),
                CustomTextField(
                  hint: "usrName",
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
                  hint: "date of barth",
                  dIcon: "assets/images/date.png",
                ),
                CustomTextField(
                  hint: "type of baby",
                  dIcon: "assets/images/pas.png",
                ),
                SizedBox(height: height*.02,),

                SizedBox(height: height*.02,),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                  SmallButton(onPressed:(){}, title: "Update",color: Colors.purpleAccent,),
                  SmallButton(onPressed:(){}, title: "Bills",color: Colors.blue,),
                ],),
                CustomButton(onPressed: (){}, title: "Loge Out",color: kPrimaryColor,)

              ],

            ),
          ),
        ],
      ),
    );
  }
}
