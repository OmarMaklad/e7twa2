import 'dart:async';
import 'package:e7twa2/chat/controller.dart';
import 'package:flutter/material.dart';
import 'model.dart';
import 'widgets/header_info.dart';
import 'widgets/message_bubble.dart';
import 'widgets/send_message.dart';

class ChatView extends StatefulWidget {
  @override
  _ChatViewState createState() => _ChatViewState();
}

class _ChatViewState extends State<ChatView> {
  ChatModel _chatModel;
  ChatController _chatController;
  bool _isLoading = true;
  Timer timer;

  @override
  void initState() {
    getMessages(loading: true);
    timer = Timer.periodic(Duration(seconds:15), (timer)=> getMessages());
    super.initState();
  }

  Future<void> getMessages({bool loading = false})async{
    _chatModel = await ChatController().getMessage();
    if(loading)
      _isLoading = false;
    rebuild();
  }

  @override
  void dispose() {
    timer.cancel();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white24,
      body: Column(
        children: [
          HeaderInfo(
            name: "omar",
            image: "",
            date: "2/12",
            // date: widget.messageModel.dateAdded,
            // image: widget.messageModel.profileImage,
            // name: widget.messageModel.author,
          ),
          _isLoading?Text("hhh"):Expanded(
            child: ListView.builder(
              reverse: true,
              padding: EdgeInsets.all(10),
              itemCount: _chatModel.data.length,
              itemBuilder: (_,index){
                var message = 12.2;
                return MessageBubble(
                   message:_chatModel.data[index].massage,
                  date: _chatModel.data[index].createdAt,
                  isMe:_chatModel.data[index].sender.id==15?true:false,
                );
              },
            ),
          ),
          SendMessage(),
        ],
      ),
    );
  }
  void rebuild()async=> this.mounted ? setState((){}) : null;
}