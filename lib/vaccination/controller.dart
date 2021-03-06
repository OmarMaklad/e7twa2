import 'package:e7twa2/network/network.dart';
import 'package:e7twa2/shared_preferences.dart';
import 'package:e7twa2/vaccination/model.dart';

class MyVaccinesController {

  MyVaccineAlarmsModel _myVaccineAlarmsModel = MyVaccineAlarmsModel();
  NetWork _netWork = NetWork();

  Future<MyVaccineAlarmsModel> getVaccines()async{
    final token = await SharedHelper.getToken();
    final response = await _netWork.getData(url: 'myvaccinealarms',headers: {
      'Authorization':
          // 'Bearer TQPzTToNNw3cq64q6vzdAOt4YWH6ZfpecW2INxHjcd4iXk70hyrBQ64PUismWw8Ij13f7ay7q7rvc8MjrJGlk9GcrA0UE8UKlnXD'
      'Bearer $token'
    });
    _myVaccineAlarmsModel = MyVaccineAlarmsModel.fromJson(response);
    _myVaccineAlarmsModel.data.removeWhere((element) => element.id == 5);
    return _myVaccineAlarmsModel;
  }

}