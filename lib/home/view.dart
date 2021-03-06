import 'package:e7twa2/allChats/view.dart';
import 'package:e7twa2/appointmentsSchedule/view.dart';
import 'package:e7twa2/constants.dart';
import 'package:e7twa2/fiendDoctor/view.dart';
import 'package:e7twa2/perceptions/view.dart';
import 'package:e7twa2/profile/data/controller.dart';
import 'package:e7twa2/profile/data/model.dart';
import 'package:e7twa2/profile/view.dart';
import 'package:e7twa2/reportsPerceptions/view.dart';
import 'package:e7twa2/vaccination/view.dart';
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';

class HomeView extends StatefulWidget {

  @override
  _HomeViewState createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> {
  ProfileController _profileController = ProfileController();
  ProfileModel _profileModel=ProfileModel();
  bool loading = true;
  void _getProfile ()async{
    _profileModel = await _profileController.getProfile();
    setState(() {
      loading= false;
    });
  }

  @override
  void initState() {
    _getProfile();
    super.initState();
  }
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
                    Navigator.push(context,MaterialPageRoute(builder: (context) => AllChats(),));
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
                loading? Center(
                  child: SpinKitChasingDots(
                    size: 40,
                    color: kPrimaryColor,
                  ),
                ):Container(
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
                             Text(_profileModel.data.babyName, style: TextStyle(fontSize:14,fontWeight: FontWeight.bold,)),
                             Text(_profileModel.data.dateOfBirth, style: TextStyle(fontSize:14,fontWeight: FontWeight.w600,)),
                            ],
                          ),
                          Column(
                            children: [
                              Container(
                                height: height*.1,
                                  child: Image.asset("assets/images/bb.png",fit: BoxFit.cover,)),
                             Text("Last changed", style: TextStyle(fontSize:14,fontWeight: FontWeight.w600,)),
                            ],
                          ),
                          Column(
                            children: [
                              Container(
                                height: height*.1,
                                  child: Image.asset("assets/images/bb.png",fit: BoxFit.cover,)),

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
                    itemBuilder:(ctx,index)=> _babyItem(
                      content[index][0],
                      content[index][1],
                      content[index][2],
                    ),
                    itemCount: content.length),)
              ],
            ),
          ),

        ],
      ),
    );
  }

  List content = [
    ['Find a doctor','findADoctor',FiendDoctor()],
    ['Vaccinations','vaccinations',VaccinationView()],
    ['Appointments','appointments',AppointmentsScheduleView()],
    ['Perceptions','perceptions',PerceptionsView()],
    ['Reports','reports',ReportsPerceptionsView()],
    ['Articles','articles',Text('data')],
  ];

  Widget _babyItem(String title,String image,Widget page)=> GestureDetector(
    onTap: (){
      Navigator.push(context, MaterialPageRoute(builder: (_)=> page));
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
            Expanded(
              child: Container(
                  // height: height*.1,
                  child: Image.asset("assets/images/$image.png",fit: BoxFit.cover,)),
            ),
            Text(title, style: TextStyle(fontSize:14,fontWeight: FontWeight.w400,)),

          ],
        ),

      ),
    ),
  );
}
