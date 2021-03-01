import 'package:e7twa2/constants.dart';
import 'package:e7twa2/widgets/customButton.dart';
import 'package:e7twa2/widgets/customTextFeild.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class VaCode extends StatefulWidget {
  @override
  _VaCodeState createState() => _VaCodeState();
}

class _VaCodeState extends State<VaCode> {
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
                SizedBox(height:height*.9,child: Image.asset("assets/images/logo.png")),
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
                      Text("Verification",style: TextStyle(fontSize:24,fontWeight: FontWeight.bold)),
                      SizedBox(height: 10,),
                      Container(
                          width: height*.3,
                          child: Text("Enter the verification code we just send you in you email",
                              textAlign: TextAlign.center,
                              style: TextStyle(fontSize:16,fontWeight: FontWeight.w600,color:Colors.grey))),
                    ],
                  ),
                ),
                CustomTextField(
                  hint: "code",
                  dIcon: "assets/images/code.png",
                ),
                SizedBox(height: height*.02,),
                CustomButton(onPressed: (){

                }, title: "Done",color: kPrimaryColor,)

              ],

            ),
          ),
        ],
      ),
    );
  }
}
