import 'package:e7twa2/medicineAlarm/view.dart';
import 'package:e7twa2/vaccination/widgets/card.dart';
import 'package:e7twa2/widgets/custom_app_bar.dart';
import 'package:e7twa2/widgets/gradient_bg.dart';
import 'package:e7twa2/widgets/smallButton.dart';
import 'package:flutter/material.dart';

class PerceptionsView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: appBar(context),
      body: GradientBackground(
        child: ListView(
          padding: EdgeInsets.all(20),
          children: [
            Text('Perceptions',style: TextStyle(
                fontWeight: FontWeight.w900,fontSize: 20
            ),),
            SizedBox(height: 20,),
            VaccinationCard(),
            VaccinationCard(),
            Align(
                alignment: Alignment.centerRight,
                child: SmallButton(onPressed: ()=> Navigator.push(context, MaterialPageRoute(builder: (context) => MedicineAlarmView(),)), title: 'Add Alarm',color: Colors.lightBlueAccent,)
            )
          ],
        ),
      ),
    );
  }
}
