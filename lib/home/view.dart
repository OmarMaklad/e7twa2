import 'package:e7twa2/constants.dart';
import 'package:e7twa2/fiendDoctor/view.dart';
import 'package:e7twa2/profile/view.dart';
import 'package:flutter/material.dart';

class HomeView extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    return Scaffold(
      body: Stack(
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
                    child: SizedBox(height:height*.04,child: Image.asset("assets/images/chat.png")),
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
            padding:  EdgeInsets.only(top: height*.13),
            child: Column(
              children: [
                Container(
                  margin: EdgeInsets.symmetric(horizontal: 30,),
                  height: height*.25,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(30),
                    color: kAccentColor
                  ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Column(
                            children: [
                              Container(
                                height: height*.1,
                                  child: Image.asset("assets/images/baby.png",fit: BoxFit.cover,)),
                             Text("Name", style: TextStyle(fontSize:14,fontWeight: FontWeight.bold,)),
                             Text("3 month", style: TextStyle(fontSize:14,fontWeight: FontWeight.w600,)),
                            ],
                          ),
                          Column(
                            children: [
                              Container(
                                height: height*.1,
                                  child: Image.asset("assets/images/baby.png",fit: BoxFit.cover,)),
                             Text("Name", style: TextStyle(fontSize:14,fontWeight: FontWeight.bold,)),
                             Text("3 month", style: TextStyle(fontSize:14,fontWeight: FontWeight.w600,)),
                            ],
                          ),
                          Column(
                            children: [
                              Container(
                                height: height*.1,
                                  child: Image.asset("assets/images/baby.png",fit: BoxFit.cover,)),
                             Text("Name", style: TextStyle(fontSize:14,fontWeight: FontWeight.bold,)),
                             Text("3 month", style: TextStyle(fontSize:14,fontWeight: FontWeight.w600,)),
                            ],
                          ),


                        ],
                      ),
                      GestureDetector(
                        onTap: (){
                          Navigator.push(context,MaterialPageRoute(builder: (_)=>Profile()));
                        },
                        child: Padding(
                          padding:  EdgeInsets.symmetric(horizontal: 30,vertical: 20),
                          child: Align(
                            alignment: Alignment.centerRight,
                              child: Text("View Profile>>",
                                  style: TextStyle(fontSize:14,fontWeight: FontWeight.bold,color: Colors.blue))),
                        ),
                      ),
                    ],
                  ),

                ),
                Expanded(
                  child: GridView.builder(
                    gridDelegate:SliverGridDelegateWithFixedCrossAxisCount(
                        crossAxisCount: 2,
                        mainAxisSpacing:20,
                        crossAxisSpacing:2,
                        childAspectRatio: 2.1/1.5
                    ),
                    itemBuilder:(ctx,index)=>GestureDetector(
                      onTap: (){
                        Navigator.push(context, MaterialPageRoute(builder: (_)=>FiendDoctor()));
                      },
                      child: Padding(
                        padding: EdgeInsets.symmetric(horizontal:30),
                        child: Container(
                          decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(15)
                          ),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              Container(
                                  height: height*.1,
                                  child: Image.asset("assets/images/baby.png",fit: BoxFit.cover,)),
                              Text("Name", style: TextStyle(fontSize:14,fontWeight: FontWeight.w400,)),

                            ],
                          ),

                        ),
                      ),
                    ),
                    itemCount: 6),)
              ],
            ),
          ),

        ],
      ),
    );
  }
}
