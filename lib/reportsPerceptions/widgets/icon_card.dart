import 'package:flutter/material.dart';

class IconCard extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      child: Container(
        margin: EdgeInsets.symmetric(vertical: 50),
        padding: EdgeInsets.symmetric(horizontal: 10,vertical: 15),
        child: Column(
          children: [
            Icon(Icons.ad_units,size: 30,),
            SizedBox(height: 10,),
            Text('View Reports',style: TextStyle(fontSize: 12),),
          ],
        ),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          color: Colors.white60
        ),
      ),
      onTap: (){},
    );
  }
}
