import 'package:dio/dio.dart';
import 'package:e7twa2/network/network.dart';
import 'package:e7twa2/vaccination/model.dart';

class VaccinesAlarm {

  NetWork _netWork  = NetWork();

  Future<int> addAlarm(String name,String time,String date)async{
    final formData = FormData.fromMap({
      'vaccine':name,
      'time':time,
      'date':date
    });
    final response = await _netWork.postData(url: 'addvaccinealarm',headers: {
      'Authorization':'Bearer TQPzTToNNw3cq64q6vzdAOt4YWH6ZfpecW2INxHjcd4iXk70hyrBQ64PUismWw8Ij13f7ay7q7rvc8MjrJGlk9GcrA0UE8UKlnXD'
    },formData: formData);
    print(response);
    MyVaccineAlarmsModel _model = MyVaccineAlarmsModel.fromJson(response);
    return _model.data.last.id;
  }

}