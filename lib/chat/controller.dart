import 'package:dio/dio.dart';
import 'package:e7twa2/network/network.dart';
import 'model.dart';


class ChatController {
  ChatModel _chatModel =ChatModel();
  NetWork _netWork = NetWork();
  Future<ChatModel> getMessage() async {
    Map<String, dynamic> _body = {
      "conversation_id": 1,
    };
    FormData _formData = FormData.fromMap(_body);
    var response =
    await _netWork.postData(url: 'getConversationById', formData: _formData,);
    print(response);
    if (response !=null) {
      _chatModel = ChatModel.fromJson(response);
    } else {
      _chatModel = ChatModel();
    }
    return _chatModel;
  }
}