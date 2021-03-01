import 'package:e7twa2/constants.dart';
import 'package:e7twa2/forgetPassword/view.dart';
import 'package:e7twa2/home/view.dart';
import 'package:e7twa2/widgets/customButton.dart';
import 'package:e7twa2/widgets/customTextFeild.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class SignIn extends StatefulWidget {
  @override
  _SignInState createState() => _SignInState();
}

class _SignInState extends State<SignIn> {
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

               Padding(
                 padding:  EdgeInsets.symmetric(horizontal: 30,vertical: 20),
                 child: Text("Welcome!",style: TextStyle(fontSize:24,fontWeight: FontWeight.bold)),
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
                           child: Text("Doctor",style: TextStyle(fontSize:16,fontWeight: FontWeight.bold)),
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
               SizedBox(height: height*.05,),
               CustomTextField(
                 hint: "usrName",
                 dIcon: "assets/images/user.png",
               ),
               CustomTextField(
                 hint: "usrName",
                 dIcon: "assets/images/pas.png",
               ),
               GestureDetector(
                 onTap: (){
                   Navigator.push(context, MaterialPageRoute(builder: (_)=>ForgetPassword()));
                 },
                 child: Padding(
                   padding:  EdgeInsets.symmetric(horizontal: 30,vertical: 10),
                   child: Text("Forget password?",textAlign: TextAlign.right,
                       style:
                   TextStyle(fontSize:14,fontWeight: FontWeight.w600,color: Colors.purpleAccent,)),
                 ),
               ),
               SizedBox(height: height*.05,),
               CustomButton(onPressed: (){
                 Navigator.push(context,MaterialPageRoute(builder: (_)=>HomeView()));
               }, title: "SignIn",color: kPrimaryColor,)

             ],

           ),
         ),
       ],
     ),
    );
  }
}
