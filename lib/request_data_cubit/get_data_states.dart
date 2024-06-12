// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:roadside_assitance/models/data_response_model.dart';

class getDataStates {}
class initialState  extends getDataStates{}
class dataLoadedState extends getDataStates {
  response_model responseModel;
  dataLoadedState({
    required this.responseModel,
  });
}
class failureState extends getDataStates{}