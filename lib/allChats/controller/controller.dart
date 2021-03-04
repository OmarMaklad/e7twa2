
import 'package:dio/dio.dart';
import 'package:e7twa2/allChats/model/AllChatsModel.dart';
import 'package:e7twa2/network/network.dart';

class AllChatsController {
  AllChatsModel _allChatsModel =AllChatsModel();
  NetWork _netWork = NetWork();
  Future<AllChatsModel> getAllChats() async {
    Map<String, dynamic> _body = {
      "user_id": 15,
    };
    FormData _formData = FormData.fromMap(_body);
    var response =
    await _netWork.postData(url: 'getConversationByUser_id', formData: _formData,);
    print(response);
    if (response !=null) {
      _allChatsModel = AllChatsModel.fromJson(response);
    } else {
      _allChatsModel = AllChatsModel();
    }
    return _allChatsModel;
  }
}