import 'package:e7twa2/network/network.dart';
import 'package:e7twa2/shared_preferences.dart';
import 'package:e7twa2/userAppointments/model.dart';

class UserAppointmentsController {

  NetWork _netWork = NetWork();
  UserAppointmentsModel _userAppointmentsModel = UserAppointmentsModel();
  Future<UserAppointmentsModel> getMyAppointments()async{
    final token = SharedHelper.getToken();
    final response = await _netWork.getData(
      url: 'myappointments',
      //TODO
      headers: {"Authorization":'Bearer TQPzTToNNw3cq64q6vzdAOt4YWH6ZfpecW2INxHjcd4iXk70hyrBQ64PUismWw8Ij13f7ay7q7rvc8MjrJGlk9GcrA0UE8UKlnXD'}
    );
    _userAppointmentsModel = UserAppointmentsModel.fromJson(response);
    return _userAppointmentsModel;
  }

}