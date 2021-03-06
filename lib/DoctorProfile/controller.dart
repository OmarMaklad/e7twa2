import 'package:dio/dio.dart';
import 'package:e7twa2/DoctorProfile/model.dart';
import 'package:e7twa2/network/network.dart';
import 'package:e7twa2/shared_preferences.dart';
class DoctorProfileController {
  NetWork _netWork = NetWork();

  DoctorProfileModel _doctorProfileModel = DoctorProfileModel();

  Future<DoctorProfileModel> getDoctorProfile(int id)async{
    final token = SharedHelper.getToken();
    final response = await _netWork.postData(
      headers: {
        //TODO:
        'Authorization': 'Bearer TQPzTToNNw3cq64q6vzdAOt4YWH6ZfpecW2INxHjcd4iXk70hyrBQ64PUismWw8Ij13f7ay7q7rvc8MjrJGlk9GcrA0UE8UKlnXD'
      },
      url: 'showdoctorprofile',
      formData: FormData.fromMap({
        'padiatrician_id': id
      }),
    );
    print(response);
    _doctorProfileModel = DoctorProfileModel.fromJson(response);
    return _doctorProfileModel;
  }

  Future<void> startChat()async{
    final formData = FormData.fromMap({
      'sender_id': 2,
      'receiver_id': 4,
      'massage': 'Hello'
    });
    final response = await _netWork.postData(url: 'addConversation',formData: formData);
    print(response);
    //TODO
    // return ;
  }

}