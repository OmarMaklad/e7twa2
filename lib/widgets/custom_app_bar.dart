import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

appBar(context){
  final height = MediaQuery.of(context).size.height;
  return PreferredSize(child: Container(
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
            child: SizedBox(height:height*.04,child: Image.asset("assets/images/back.png")),
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
  ), preferredSize: Size.fromHeight(height*.12));
}