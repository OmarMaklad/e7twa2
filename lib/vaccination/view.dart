import 'package:e7twa2/vaccination/widgets/card.dart';
import 'package:e7twa2/vaccinesAlarm/view.dart';
import 'package:e7twa2/widgets/custom_app_bar.dart';
import 'package:e7twa2/widgets/gradient_bg.dart';
import 'package:e7twa2/widgets/smallButton.dart';
import 'package:flutter/material.dart';

class VaccinationView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: appBar(context),
      body: GradientBackground(
        child: ListView(
          padding: EdgeInsets.all(20),
          children: [
            Text('Vaccination',style: TextStyle(
              fontWeight: FontWeight.w900,fontSize: 20
            ),),
            SizedBox(height: 20,),
            Text('Previous Vaccines'),
            VaccinationCard(),
            Text('Upcoming Vaccines'),
            VaccinationCard(),
            Align(
              alignment: Alignment.centerRight,
              child: SmallButton(onPressed: ()=> Navigator.push(context, MaterialPageRoute(builder: (context) => VaccinesAlarmView(),)), title: 'Add Alarm',color: Colors.lightBlueAccent,)
            )
          ],
        ),
      ),
    );
  }
}