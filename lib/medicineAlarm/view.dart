import 'package:e7twa2/vaccinesAlarm/widgets/am_pm_switch.dart';
import 'package:e7twa2/vaccinesAlarm/widgets/small_text_field.dart';
import 'package:e7twa2/widgets/customTextFeild.dart';
import 'package:e7twa2/widgets/custom_app_bar.dart';
import 'package:e7twa2/widgets/gradient_bg.dart';
import 'package:e7twa2/widgets/smallButton.dart';
import 'package:flutter/material.dart';

import '../constants.dart';

class MedicineAlarmView extends StatelessWidget {
  TextEditingController hours = TextEditingController(text: '00');
  TextEditingController minutes = TextEditingController(text: '00');
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: appBar(context),
      body: GradientBackground(
        child: ListView(
          padding: EdgeInsets.all(20),
          children: [
            Text('Vaccines alarm',style: TextStyle(fontWeight: FontWeight.bold),),
            Icon(Icons.alarm,color: kRoundColor,size: 150,),
            CustomTextField(
              hint: 'Start',
              hPadding: 0,
            ),
            CustomTextField(
              hint: 'Start',
              hPadding: 0,
            ),
            CustomTextField(
              hint: 'Start',
              hPadding: 0,
            ),
            SizedBox(height: 15,),
            Row(
              children: [
                Expanded(child: SmallTextField(controller: hours,)),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 10),
                  child: Text(':',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20),),
                ),
                Expanded(child: SmallTextField(
                  controller: minutes,
                )),
                SizedBox(width: 20,),
                AmPmSwitch(),
              ],
            ),
            SizedBox(height: 20,),
            Row(
              children: [
                Expanded(
                  child: SmallButton(
                    title: 'Cancel',
                    onPressed: (){},
                    color: Colors.redAccent,
                  ),
                ),
                Expanded(
                  child: SmallButton(
                    title: 'Add Alarm',
                    onPressed: (){},
                    color: Colors.lightBlueAccent,
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}