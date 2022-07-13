import 'package:equatable/equatable.dart';
import 'package:meta/meta.dart';

class AttendanceLog{
  final String date;
  final String time;
  final String clockType;
  AttendanceLog({required this.date, required this.time, required this.clockType});

  factory AttendanceLog.fromJson(Map<String, dynamic> json){
      final date = json['date'];
      final time = json['time'];
      final clockType = json['clockType'];

      return AttendanceLog(date: date, time: time, clockType: clockType);
  }
}

