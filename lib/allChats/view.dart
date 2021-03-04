import 'package:flutter/material.dart';
import 'chatsList.dart';
import 'controller/controller.dart';
import 'model/AllChatsModel.dart';

class AllChats extends StatefulWidget {
  @override
  _AllChatsState createState() => _AllChatsState();
}

class _AllChatsState extends State<AllChats> {
  AllChatsModel _allChatsModel =AllChatsModel();
  AllChatsController _allChatsController =AllChatsController();
  bool loading= true;

  void _getAllChats()async{
    _allChatsModel =await _allChatsController.getAllChats();
    setState(() {
      loading = false;
    });
  }
  @override
  void initState() {
    _getAllChats();
    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: Text("Message",style: TextStyle(
          fontFamily: "dinnextl bold",
          fontSize:24,),)
      ),
      body:loading?
          Center(
            child:CircularProgressIndicator(),
          ): AllChatsList(allChatsModel: _allChatsModel,),
    );
  }
}
