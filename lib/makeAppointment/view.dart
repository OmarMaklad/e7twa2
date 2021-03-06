import 'package:e7twa2/confirmAppointment/view.dart';
import 'package:e7twa2/fiendDoctor/data/controller.dart';
import 'package:e7twa2/fiendDoctor/data/model.dart';
import 'package:e7twa2/vaccinesAlarm/widgets/drop_menu.dart';
import 'package:e7twa2/widgets/customTextFeild.dart';
import 'package:e7twa2/widgets/custom_app_bar.dart';
import 'package:e7twa2/widgets/gradient_bg.dart';
import 'package:e7twa2/widgets/loading.dart';
import 'package:e7twa2/widgets/smallButton.dart';
import 'package:flutter/material.dart';

import 'controller.dart';

class MakeAppointmentView extends StatefulWidget {
  @override
  _MakeAppointmentViewState createState() => _MakeAppointmentViewState();
}

class _MakeAppointmentViewState extends State<MakeAppointmentView> {
  TextEditingController location = TextEditingController(text:  'Saudi Arabia');
  TextEditingController date = TextEditingController(text:  DateTime.now().year.toString() + '-' + DateTime.now().month.toString().padLeft(2,'0') + '-' + DateTime.now().day.toString().padLeft(2,'0'));
  TextEditingController time = TextEditingController(text: TimeOfDay.now().hour.toString().padLeft(2,'0') + ':'+TimeOfDay.now().minute.toString().padLeft(2,'0'));
  bool isLoading = false;
  bool pageLoading = true;
  DoctorModel _doctorModel;
  var doc;
  getDoctors()async{
    _doctorModel = await AllDocController().getAllDoc();
    setState(()=> pageLoading = false);
  }

  @override
  void initState() {
    getDoctors();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: appBar(context),
      body: GradientBackground(
        padding: EdgeInsets.all(20),
        child: pageLoading ? Loading() : ListView(
          children: [
            Text('Create new appointment',style: TextStyle(fontWeight: FontWeight.w900),),
            SizedBox(height: 20,),
            CustomTextField(
              hint: 'Location',
              controller: location,
              hPadding: 0,
            ),
            DropMenu(
              hint: 'Padiatrician Name',
              valuesAreModels: true,
              items: _doctorModel.data,
              onChanged: (v)=> setState(()=> doc = v),
              value: doc,
            ),
            CustomTextField(
              hPadding: 0,
              read: true,
              onTap: ()async{
                final picked = await showDatePicker(context: context,
                    initialDate: DateTime.now(), firstDate: DateTime.now(), lastDate: DateTime.now().add(Duration(days: 7)));
                if(picked != null){
                  setState(() {
                    date.text = picked.year.toString() + '-' + picked.month.toString().padLeft(2,'0') + '-' + picked.day.toString().padLeft(2,'0');
                  });
                }
              },
              hint: 'Date',
              controller: date,
            ),
            CustomTextField(
              hPadding: 0,
              read: true,
              onTap: ()async{
                final picked = await showTimePicker(context: context,initialTime: TimeOfDay.now());
                if(picked != null){
                  setState(() {
                    time.text = picked.hour.toString() + ':' + picked.minute.toString().padLeft(2,'0');
                  });
                }
              },
              hint: 'Time',
              controller: time,
            ),
            SizedBox(height: 20,),
            isLoading ? Loading() : Row(
              children: [
                Expanded(
                  child: SmallButton(
                    title: 'Cancel',
                    onPressed: ()=> Navigator.pop(context),
                    color: Colors.redAccent,
                  ),
                ),
                Expanded(
                  child: SmallButton(
                    title: 'Confirm',
                    onPressed: ()async{
                      setState(()=> isLoading = true);
                      int id = await MakeAppointmentController().create(
                        id: doc.id,
                        time: time.text,
                        date: date.text,
                        address: location.text
                      );
                      // AndroidAlarmManager.oneShotAt(DateTime.parse(date.text).add(Duration(
                      //   hours: timeOfDay.hour,
                      //   minutes: timeOfDay.minute,
                      // )), id,x);
                      Navigator.pushAndRemoveUntil(context, MaterialPageRoute(builder: (context) => ConfirmAppointmentView(
                        id: id,
                        date: date.text,
                        location: location.text,
                        docName: doc.userName,
                        time: time.text,
                      ),),(_)=> false);
                    },
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
