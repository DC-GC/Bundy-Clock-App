import 'package:bundy_clock/models/attendance_log_model.dart';

abstract class AttendanceLogEvent{}

class AttendanceLogAPIRequest extends AttendanceLogEvent{
  // final List<AttendanceLog> attendanceLogs;
  // AttendanceLogAPIRequest({required this.attendanceLogs});

  AttendanceLogAPIRequest();

}