import 'dart:convert';
import 'dart:io';
import 'package:bundy_clock/models/attendance_log_API_response_model.dart';
import 'package:bundy_clock/models/attendance_log_model.dart';
import 'package:http/http.dart';

class LogsDatasource{

  Future <AttendanceLogAPIResponse> getLogs() async{
    final url = "";
    final response = await get(Uri.parse("$url"));
    
    final json = jsonDecode(response.body);
    return AttendanceLogAPIResponse.fromJson(json);

  }

}