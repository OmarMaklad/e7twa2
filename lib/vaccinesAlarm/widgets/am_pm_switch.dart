import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class AmPmSwitch extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Expanded(
      flex: 2,
      child: Container(
        height: 55,
        padding: EdgeInsets.all(5),
        child: Stack(
          children: [
            Positioned(
              left: 0,
              top: 0,
              bottom: 0,
              right: 55,
              child: Container(
                // height: 100,
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(15)
                ),
              ),
            ),
            Center(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Text('AM'),
                  Text('PM'),
                ],
              ),
            ),
          ],
        ),
        decoration: BoxDecoration(
          color: Colors.white30,
          borderRadius: BorderRadius.circular(20)
        ),
      ),
    );
  }
}
