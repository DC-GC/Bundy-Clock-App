import 'package:bundy_clock/bloc/attendance_logs_bloc.dart';
import 'package:bundy_clock/bloc/attendance_logs_state.dart';
import 'package:bundy_clock/models/attendance_log_API_response_model.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class InitialPage extends StatelessWidget {
  const InitialPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(
        title: Text('My Attendance'),
        backgroundColor: Colors.purple[300],),
      body: BlocBuilder<AttendanceLogBloc, AttendanceLogState>(
        builder: (context, state) {
          if(state is AttendanceLogLoadingState){
            return const Center(child: CircularProgressIndicator(), );
          }else if(state is AttendanceLogSuccessfulState){
            return Padding(
              padding: const EdgeInsets.all(10),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                
                children: [
                  Row(
                    children: [
                      Expanded(
                        child:ListView.builder(
                        itemCount: state.attendanceLogs.length,
                        shrinkWrap: true,
                        itemBuilder: (context, index){
                          if(index<state.attendanceLogs.length){
                            return ListTile(title: Text(state.attendanceLogs[index].date,));

                          }else{
                            return const Padding(padding: EdgeInsets.symmetric(vertical: 24),
                            child: Center(child: CircularProgressIndicator()));
                          }
                        }, 
                        
                      ), 
                      
                      ),

                      Expanded(
                        child:ListView.builder(
                        itemCount: state.attendanceLogs.length,
                        shrinkWrap: true,
                        itemBuilder: (context, index){
                          if(index<state.attendanceLogs.length){
                            return ListTile(
                              title: Text(state.attendanceLogs[index].clockType,
                              style: TextStyle(color:state.attendanceLogs[index].clockType == 'IN'?Colors.blue:Colors.orange ),));

                          }else{
                            return const Padding(padding: EdgeInsets.symmetric(vertical: 24),
                            child: Center(child: CircularProgressIndicator()));
                          }
                        }, 
                        
                      ), 
                      
                      ),
                      Expanded(
                        child:ListView.builder(
                        itemCount: state.attendanceLogs.length,
                        shrinkWrap: true,
                        itemBuilder: (context, index){
                          if(index<state.attendanceLogs.length){
                            return ListTile(title: Text(state.attendanceLogs[index].time,));

                          }else{
                            return const Padding(padding: EdgeInsets.symmetric(vertical: 24),
                            child: Center(child: CircularProgressIndicator()));
                          }
                        }, 
                        
                      ), 
                      
                      ),
                    ],
                  ),
                  
                  
                ],
              ),);
          }else if(state is AttendanceLogLoadFailedState){
            return Center(
              child: Text(state.error.toString()),
            );
          }else {
            return Container();
          }

        },
      ),
    );
    
  }
}