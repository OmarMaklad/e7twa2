import 'package:e7twa2/constants.dart';
import 'package:e7twa2/vaCode/view.dart';
import 'package:e7twa2/widgets/customButton.dart';
import 'package:e7twa2/widgets/customTextFeild.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ForgetPassword extends StatefulWidget {
  @override
  _ForgetPasswordState createState() => _ForgetPasswordState();
}

class _ForgetPasswordState extends State<ForgetPassword> {
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
                Padding(
                  padding:EdgeInsets.only(top:10),
                  child: SizedBox(height:height*.9,child: Image.asset("assets/images/logo.png")),
                ),
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

                SizedBox(
                  height: height*.3,
                    child: Image.asset("assets/images/code.png")),
                Padding(
                  padding: const EdgeInsets.symmetric(vertical:20),
                  child: Column(
                    children: [
                      Text("Forget Password",style: TextStyle(fontSize:24,fontWeight: FontWeight.bold)),
                      SizedBox(height: 10,),
                      Container(
                        width: height*.3,
                          child: Text("Enter Your Email to associate with you account",
                              textAlign: TextAlign.center,
                              style: TextStyle(fontSize:16,fontWeight: FontWeight.w600,color:Colors.grey))),
                    ],
                  ),
                ),
                CustomTextField(
                  hint: "email",
                  dIcon: "assets/images/email.png",
                ),
                SizedBox(height: height*.02,),
                CustomButton(onPressed: (){
                  Navigator.push(context, MaterialPageRoute(builder: (_)=>VaCode()));
                }, title: "Send",color: kPrimaryColor,)

              ],

            ),
          ),
        ],
      ),
    );
  }
}
