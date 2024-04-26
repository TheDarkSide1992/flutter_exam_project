import 'package:flutter/material.dart';
import 'package:flutter_exam_project/home/current_room_data.dart';

class RoomOverviewApp extends StatelessWidget {
  const RoomOverviewApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: Theme.of(context),
      scrollBehavior: const ConstantScrollBehavior(),
      title: 'Room Overview',
      home: CurrentRoomData(),
    );
    throw UnimplementedError();
  }
}

class ConstantScrollBehavior extends ScrollBehavior {
  const ConstantScrollBehavior();

  @override
  Widget buildScrollbar(
          BuildContext context, Widget child, ScrollableDetails details) =>
      child;

  @override
  Widget buildOverscrollIndicator(
          BuildContext context, Widget child, ScrollableDetails details) =>
      child;

  @override
  ScrollPhysics getScrollPhysics(BuildContext context) =>
      const BouncingScrollPhysics(parent: AlwaysScrollableScrollPhysics());
}
