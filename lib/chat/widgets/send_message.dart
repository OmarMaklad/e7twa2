import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'customTextFeild.dart';

TextEditingController _messageController = TextEditingController();

class SendMessage extends StatefulWidget {
  // final Function afterSendingMessage;
  // final String productId;
  // final String customerId;
  // SendMessage({this.afterSendingMessage, this.productId, this.customerId});

  @override
  _SendMessageState createState() => _SendMessageState();
}

class _SendMessageState extends State<SendMessage> {
  bool _isLoading = false;
  @override
  void dispose() {
    _isLoading = false;
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 10),
      child: Row(
        children: [
          Expanded(
            child: CustomTextField(
              hint: "message",
            ),
          ),
          SizedBox(width: 10  ,),
          _isLoading ? CupertinoActivityIndicator() : Container(
            padding: EdgeInsets.all(13),
            child: InkWell(
              child: Icon(Icons.send,color: Colors.white,),
              onTap: ()async{
                if(_messageController.text != null && _messageController.text.isNotEmpty){
                  setState(()=> _isLoading = true);
                  // await ChatController().sendMessage(
                  //   message: _messageController.text,
                  //   productId: widget.productId,
                  //   customerId: widget.customerId,
                  // );
                  // widget.afterSendingMessage();
                  setState(()=> _isLoading = false);
                  _messageController.clear();
                }
              },
            ),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(5),
              color: Colors.deepOrange,
            ),
          ),
        ],
      ),
    );
  }
}
