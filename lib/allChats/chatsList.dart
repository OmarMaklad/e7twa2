import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'chatCard.dart';
import 'model/AllChatsModel.dart';

class AllChatsList extends StatelessWidget {
  final AllChatsModel allChatsModel;
   AllChatsList({ this.allChatsModel}) ;
  @override
  Widget build(BuildContext context) {
    return  Padding(
      padding: EdgeInsets.symmetric(vertical: 20),
      child: ListView.separated(
        itemBuilder:(ctx,index)=>
            ChatsCard(
          name: allChatsModel.data[index].sender.name,
          image: allChatsModel.data[index].sender.image,
        ),
        shrinkWrap: true,
        scrollDirection: Axis.vertical,
        separatorBuilder: (ctx,ind)=>SizedBox(height:10,),
        itemCount:allChatsModel.data.length,
      ),
    );
  }
}
