import 'package:flutter/material.dart';


class HeaderInfo extends StatelessWidget {
  final String date;
  final String image;
  final String name;
  HeaderInfo({this.date, this.image, this.name});
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 100,
      padding: EdgeInsets.all(10),
      child: Row(
        children: [
          Icon(Icons.person_outline_rounded),
          CircleAvatar(
            backgroundColor: Colors.transparent,
            backgroundImage: NetworkImage(image),
            radius: 20,
          ),
          SizedBox(width: 10,),
          Expanded(child: Text(name,softWrap: false,overflow: TextOverflow.ellipsis,)),
          Text(date,style: TextStyle(fontSize: 12),),
        ],
      ),
      decoration: BoxDecoration(
          color: Colors.deepOrange,
          borderRadius: BorderRadius.circular(8)
      ),
    );
  }
}
