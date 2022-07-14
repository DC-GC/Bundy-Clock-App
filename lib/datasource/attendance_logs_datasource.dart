import 'dart:convert';
import 'dart:io';
import 'package:bundy_clock/models/attendance_log_API_response_model.dart';
import 'package:bundy_clock/models/attendance_log_model.dart';
import 'package:flutter/services.dart';
import 'package:http/http.dart';

class LogsDatasource{

  Future <AttendanceLogAPIResponse> getLogs() async{
    final String response = await rootBundle.loadString('assets/input_data.json');
    
    final json =await jsonDecode(response);
    return AttendanceLogAPIResponse.fromJson(json);

  }

}