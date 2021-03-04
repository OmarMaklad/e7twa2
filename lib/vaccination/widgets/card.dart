import 'package:e7twa2/constants.dart';
import 'package:flutter/material.dart';

class VaccinationCard extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(vertical: 15),
      padding: EdgeInsets.all(15),
      child: Row(
        children: [
          Icon(Icons.notifications,color: kRoundColor,size: 30,),
          SizedBox(width: 10,),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text('IPV',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 15),),
              Text('20/2/2020',style: TextStyle(fontSize: 12),),
            ],
          ),
        ],
      ),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(15),
        color: Colors.white54
      ),
    );
  }
}
