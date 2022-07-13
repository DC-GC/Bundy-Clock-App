import 'dart:html';

import 'package:bundy_clock/bloc/attendance_logs_events.dart';
import 'package:bundy_clock/bloc/attendance_logs_state.dart';
import 'package:bundy_clock/datasource/attendance_logs_datasource.dart';
import 'package:flutter_bloc/flutter_bloc.dart';


class AttendanceLogBloc extends Bloc<AttendanceLogEvent, AttendanceLogState>{
  AttendanceLogBloc() : super(AttendanceLogInitialState()){
    on<AttendanceLogAPIRequest>(_attendanceLogAPIRequest);
  }


  @override
  void _attendanceLogAPIRequest(AttendanceLogAPIRequest event, Emitter<AttendanceLogState> emit)async{
    emit(AttendanceLogLoadingState());
    try{
      final attendanceLogAPIResponse = await LogsDatasource().getLogs();
      emit(AttendanceLogSuccessfulState(attendanceLogs: attendanceLogAPIResponse.attendanceLogs , finalPage: true));
    }on Error catch(e){
      print(e);
      emit(AttendanceLogLoadFailedState(error: e));
    }

  }

}