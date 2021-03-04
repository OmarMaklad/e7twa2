import 'package:dio/dio.dart';
import 'package:e7twa2/network/network.dart';
class DoctorProfileController {

  Future<void> startChat()async{
    final formData = FormData.fromMap({
      'sender_id': 2,
      'receiver_id': 4,
      'massage': 'Hello'
    });
    final response = await NetWork().postData(url: 'addConversation',formData: formData);
    print(response);
    // return ;
  }

}