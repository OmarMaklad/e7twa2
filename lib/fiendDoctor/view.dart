import 'package:e7twa2/widgets/customTextFeild.dart';
import 'package:flutter/material.dart';
import 'chatsList.dart';

class FiendDoctor extends StatefulWidget {
  @override
  _FiendDoctorState createState() => _FiendDoctorState();
}

class _FiendDoctorState extends State<FiendDoctor> {

  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    return Scaffold(
      backgroundColor: Colors.white,
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
        ),),


        Padding(
          padding:  EdgeInsets.only(top: height*.13),
          child: Column(
            children: [
              Padding(
                padding:  EdgeInsets.symmetric(horizontal: 30,vertical: 20),
                child: Align(
                  alignment: Alignment.centerLeft,
                    child: Text("Fiend Doctor",style: TextStyle(fontSize:24,fontWeight: FontWeight.bold))),
              ),
              CustomTextField(
                hint: "search",
                dIcon: "assets/images/user.png",
              ),
              Expanded(child: AllChatsList()),
            ],
          ),
        ),
        ],
      ),
    );
  }
}
