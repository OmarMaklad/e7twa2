import 'package:dio/dio.dart';
import 'package:e7twa2/network/network.dart';
import 'package:e7twa2/shared_preferences.dart';

class MakeAppointmentController {

  NetWork _netWork = NetWork();

  Future<int> create({int id,String date,String time,String address})async{
    final token = SharedHelper.getToken();
    final response = await _netWork.postData(
      headers: {
        "Authorization":
        // "Bearer $token",
        //TODO:
        "Bearer TQPzTToNNw3cq64q6vzdAOt4YWH6ZfpecW2INxHjcd4iXk70hyrBQ64PUismWw8Ij13f7ay7q7rvc8MjrJGlk9GcrA0UE8UKlnXD",
      },
      url: 'makeappointment',
      formData: FormData.fromMap({
        'padiatrician_id': id,
        'address': address,
        'date': date,
        'time': time,
      })
    );
    return response['data']['id'];
  }

}