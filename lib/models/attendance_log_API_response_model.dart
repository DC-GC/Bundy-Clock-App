import 'package:bundy_clock/models/attendance_log_model.dart';
import 'package:equatable/equatable.dart';
import 'package:meta/meta.dart';

class AttendanceLogAPIResponse{
  final List<AttendanceLog> attendanceLogs;
  final bool lastPage;

  AttendanceLogAPIResponse({required this.attendanceLogs, required this.lastPage});

  factory AttendanceLogAPIResponse.fromJson(Map<String, dynamic> json){
    final attendanceLogList = ([] as List <AttendanceLog>) ;
    final lastPage = json['nextpage'] != null;

    //must convert the API response to List<AttendanceLog> first 

    return AttendanceLogAPIResponse(attendanceLogs: attendanceLogList, lastPage: lastPage);

  }
}