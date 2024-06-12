import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:roadside_assitance/models/data_response_model.dart';
import 'package:roadside_assitance/request_data_cubit/get_data_states.dart';
import 'package:roadside_assitance/services/Api.dart';
// import 'package:roadside_assitance/widgets/custom_service_card.dart';

class getDataCubit extends Cubit <getDataStates> {
  getDataCubit(): super(initialState());

  
  getResponse({required String token})async{
      try {
  response_model ResponseData = await GetData().getData(token);
  emit(dataLoadedState(responseModel: ResponseData));
} catch (e) {
  emit(failureState());
}
  }
}