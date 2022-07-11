import 'package:equatable/equatable.dart';
import 'package:meta/meta.dart';

class AttendanceLog{
  final String date;
  final String time;
  final String clockType;
  AttendanceLog({required this.date, required this.time, required this.clockType});
}

