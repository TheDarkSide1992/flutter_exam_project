import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_exam_project/utils/constants.dart';

import '../app_drawer.dart';
import '../cubit/device/device_cubit.dart';
import '../cubit/device/device_state.dart';
import 'device_card.dart';

class RoomOverviewApp extends StatefulWidget {
  const RoomOverviewApp({super.key});

  @override
  State<RoomOverviewApp> createState() => _RoomOverviewAppState();
}

class _RoomOverviewAppState extends State<RoomOverviewApp> {
  @override
  initState() {
    super.initState();
    context.read<DeviceCubit>().getDeviceData();
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: true,
      theme: Theme.of(context),
      scrollBehavior: const ConstantScrollBehavior(),
      title: 'Room Overview',
      home: Scaffold(
          appBar: AppBar(
            backgroundColor: Theme.of(context).colorScheme.inversePrimary,
            title: Text('HOME'),
          ),
          drawer: const AppDrawer(),
          body: BlocConsumer<DeviceCubit, DeviceState>(
              listener: (context, state) {
            if (state is DeviceSigOut || state is DataError) {
              context.showErrorSnackBar(message: "An error occurred");
            }
          }, builder: (context, state) {
            if (state is! DevicDataLoaded) {
              return const CircularProgressIndicator();
            }
            if (state is DataError) {
              return Text("Something bad");
            }
            final devices = state.simpleDataLoadList;
            builder:
            return CustomScrollView(slivers: <Widget>[
              for (final device in devices!)
                SliverToBoxAdapter(
                  child: DeviceCard(device)
                      .animate()
                      .slideX(delay: 600.ms, begin: -1),
                ),
            ]);
          })),
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
