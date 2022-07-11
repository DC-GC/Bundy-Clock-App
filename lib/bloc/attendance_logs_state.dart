

import 'package:bundy_clock/models/attendance_log_model.dart';

abstract class AttendanceLogState{}

class AttendanceLogInitialState extends AttendanceLogState{}

class AttendanceLogLoadingState extends AttendanceLogState{}

class AttendanceLogLoadFailedState extends AttendanceLogState{
  final Error error;
  AttendanceLogLoadFailedState({required this.error});
}

class AttendanceLogSuccessfulState extends AttendanceLogState{
  final List<AttendanceLog> attendanceLogs;
  final bool finalPage;
  AttendanceLogSuccessfulState({required this.attendanceLogs, required this.finalPage});
}