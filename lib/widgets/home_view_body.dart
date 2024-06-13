  import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
  import 'package:font_awesome_flutter/font_awesome_flutter.dart';
  import 'package:roadside_assitance/constants.dart';
  import 'package:roadside_assitance/models/data_response_model.dart';
import 'package:roadside_assitance/request_data_cubit/get_data_cubit.dart';
import 'package:roadside_assitance/request_data_cubit/get_data_states.dart';
import 'package:roadside_assitance/services/Api.dart';
  import 'package:roadside_assitance/views/services_page.dart';
  import 'package:roadside_assitance/widgets/custom_request_service_card.dart';
import 'package:roadside_assitance/widgets/data_loaded.dart';
import 'package:roadside_assitance/widgets/no_data_body.dart';

  class homeViewBody extends StatefulWidget {
     homeViewBody({
      super.key,
    });

  @override
  State<homeViewBody> createState() => _homeViewBodyState();
}

class _homeViewBodyState extends State<homeViewBody> {
// response_model? ResponseData ;

    @override
    Widget build(BuildContext context) {
      return  BlocBuilder<getDataCubit, getDataStates>(
        builder: (context, state) {
          if (state is initialState){
            return noData();
          }else if(state is dataLoadedState){
            
            return DataLoaded(responseModel: state.responseModel,);
          }else{
            return Text('oops there was an error');
          }
        },
      )
      ;
    }
}
