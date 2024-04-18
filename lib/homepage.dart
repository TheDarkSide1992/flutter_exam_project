import 'package:flutter/material.dart';
import 'package:flutter_exam_project/current_room_data.dart';

class RoomOverviewApp extends StatelessWidget {
  const RoomOverviewApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData.dark(),
      scrollBehavior: const ConstantScrollBehavior(),
      title: 'Room Overview',
      home: CurrentRoomData(),
    );
    throw UnimplementedError();
  }
}



class ConstantScrollBehavior extends ScrollBehavior {
  const ConstantScrollBehavior();}
