import 'package:e7twa2/constants.dart';
import 'package:e7twa2/widgets/customButton.dart';
import 'package:e7twa2/widgets/customTextFeild.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class SignUp extends StatefulWidget {
  @override
  _SignUpState createState() => _SignUpState();
}

class _SignUpState extends State<SignUp> {
  int value=0;
  bool select = true;
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
                  child: Text("Great Your account",style: TextStyle(fontSize:24,fontWeight: FontWeight.bold)),
                ),
                Align(
                  alignment: Alignment.center,
                  child: Stack(
                    children: [
                      GestureDetector(
                        onTap: (){
                          setState(() {
                            select=!select;
                          });
                        },
                        child: Container(
                          padding: EdgeInsets.symmetric(horizontal:30),
                          height:height*.06,
                          width: height*.42,
                          decoration: BoxDecoration(
                              color:  select==true?kAccentColor:Colors.white,
                              borderRadius: BorderRadius.circular(30),
                              border: Border.all(color: Colors.grey,width: 1)
                          ),
                          child: Align(
                            alignment:Alignment.centerRight,
                            child: Text("Dcotor",style: TextStyle(fontSize:16,fontWeight: FontWeight.bold)),
                          ),
                        ),
                      ),
                      GestureDetector(
                        onTap: (){
                          setState(() {
                            select=!select;
                          });
                        },
                        child: Container(
                          padding: EdgeInsets.symmetric(horizontal:30),
                          height:height*.06,
                          width: height*.23,
                          decoration: BoxDecoration(
                              color: select!=true?kAccentColor:Colors.white,
                              borderRadius: BorderRadius.circular(30),
                              border: Border.all(color: Colors.grey,width: 1)
                          ),
                          child: Align(
                            alignment:Alignment.center,
                            child: Text("Parent",style: TextStyle(fontSize:16,fontWeight: FontWeight.bold)),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(height: height*.02,),
                CustomTextField(
                  hint:select==true?"baby Name":"Doctor Name",
                  dIcon: select==true?"assets/images/baby.png":"assets/images/doc.png",
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
                  hint: "password",
                  dIcon: "assets/images/pas.png",
                ),
                CustomTextField(
                  hint: select==true?"date of barth":"spicialization",
                  dIcon: select==true?"assets/images/date.png":"assets/images/hed.png",
                ),
                SizedBox(height: height*.02,),
               select==true? Padding(
                  padding:  EdgeInsets.symmetric(horizontal: 30),
                  child: Row(
                    children: [
                      Row(
                        children: [
                          Radio(
                              value: 1,
                              groupValue:value,
                              onChanged: (val){
                                setState(() {
                                value=val;
                                });
                              }),
                          Image.asset("assets/images/boy.png")
                        ],
                      ),
                      Row(
                        children: [
                          Radio(
                              value: 2,
                              groupValue:value,
                              onChanged: (val){
                                setState(() {
                                  value=val;
                                });
                              }),
                          Image.asset("assets/images/baby.png")
                        ],
                      ),
                    ],
                  ),
                ):SizedBox(),

                SizedBox(height: height*.02,),
                CustomButton(onPressed: (){

                }, title: "Sign Up",color: kPrimaryColor,)

              ],

            ),
          ),
        ],
      ),
    );
  }
}
