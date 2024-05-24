import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_exam_project/models/BasicRoomStatus.dart';
import 'package:flutter_exam_project/models/SensorModel.dart';
import 'package:flutter_exam_project/room/room_airquality.dart';
import 'package:flutter_exam_project/room/room_control.dart';
import 'package:flutter_exam_project/room/room_humidity.dart';
import 'package:flutter_exam_project/room/room_temperature.dart';
import 'package:flutter_exam_project/utils/constants.dart';

import '../bloc/device/device_bloc.dart';
import '../bloc/device/device_state.dart';
import '../bloc/live_data/live_data_bloc.dart';
import '../bloc/live_data/live_data_state.dart';

class RoomPage extends StatelessWidget {
  const RoomPage(
    this.device, {
    super.key,
  });

  final BasicRoomStatus device;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: Text(device.roomName!),
      ),
      body: BlocConsumer<DeviceBloc, DeviceState>(
        listener: (context, state) {
          if (state is DataError || state is DeviceSigOut) {
            context.showErrorSnackBar(message: "Could not get device data");
          } else if (state is DetailedRoom) {
            this.device.roomId = state.roomId;
            this.device.roomName = state.name;
          }
        },
        builder: (context, state) => RoomDataView(device),
      ),

      /**FutureBuilder<RoomTempChartData>(
          future: context.read<DataSource>().getSimpleData(roomId),
          builder: (context, snapshot){
          if(!snapshot.hasData) return const CircularProgressIndicator();
          },

          ),*/
    );
  }
}

class RoomDataView extends StatefulWidget {
  RoomDataView(BasicRoomStatus device, {super.key}) {
    this.device = device;
  }

  late BasicRoomStatus device;

  @override
  State<RoomDataView> createState() => _RoomDataView(this.device);
}

class _RoomDataView extends State<RoomDataView> with TickerProviderStateMixin {
  late PageController _pageViewController;
  late TabController _tabController;
  int _currentPageIndex = 0;
  late BasicRoomStatus device;
  static late SensorModel data = new SensorModel(sensorId: "-1", temperature: 0.0, humidity: 0.0, co2: 0.0);


  _RoomDataView(device) {
    this.device = device;
  }

  @override
  void initState() {
    super.initState();
    _pageViewController = PageController();
    _tabController = TabController(length: 4, vsync: this);
  }

  @override
  void dispose() {
    super.dispose();
    _pageViewController.dispose();
    _tabController.dispose();
  }

  void _getDetailedRoom() {
    context.read<DeviceBloc>().getDetailedRoom(device.roomId!);
  }

  @override
  Widget build(BuildContext context) {
    _getDetailedRoom();
      return Scaffold(
      body: BlocConsumer<LiveDataBloc, LiveDataState>(
        listener: (context, state) {
      if (state is LiveDataInitial || state is DataDiscarded) {
        context.showErrorSnackBar(message: "Could not get data");
      } else if (state is LiveDataLoadedState) {
        data = state.data!;
      }
    },
    builder: (context, state) => Center(
          child: Stack(
            alignment: Alignment.bottomCenter,
            children: <Widget>[
              PageView(
                controller: _pageViewController,
                onPageChanged: _handlePageViewChanged,
                children: [
                  Center(
                    child: RoomTemperature(data.temperature!),
                  ),
                  Center(
                    child: RoomHumidity(data.humidity!),
                  ),
                  Center(
                    child: RoomAirQuality(data.co2!),
                  ),
                  Center(
                    child: RoomControl(this.device),
                  ),
                ],
              ),
              PageIndicator(
                tabController: _tabController,
                currentPageIndex: _currentPageIndex,
                onUpdateCurrentPageIndex: _updateCurrentPageIndex,
                isOnDesktopAndWeb: _isOnDesktopAndWeb,
              ),
            ],
          ),
        ),
      ),
    );
  }

  void _handlePageViewChanged(int currentPageIndex) {
    if (!_isOnDesktopAndWeb) {
      return;
    }
    _tabController.index = currentPageIndex;
    setState(() {
      _currentPageIndex = currentPageIndex;
    });
  }

  void _updateCurrentPageIndex(int index) {
    _tabController.index = index;
    _pageViewController.animateToPage(
      index,
      duration: const Duration(milliseconds: 400),
      curve: Curves.easeInOut,
    );
  }

  bool get _isOnDesktopAndWeb {
    if (kIsWeb) {
      return true;
    }
    switch (defaultTargetPlatform) {
      case TargetPlatform.macOS:
      case TargetPlatform.linux:
      case TargetPlatform.windows:
        return true;
      case TargetPlatform.android:
      case TargetPlatform.iOS:
      case TargetPlatform.fuchsia:
        return false;
    }
  }
}

/// Page indicator for desktop and web platforms.
///
/// On Desktop and Web, drag gesture for horizontal scrolling in a PageView is disabled by default.
/// You can defined a custom scroll behavior to activate drag gestures,
/// see https://docs.flutter.dev/release/breaking-changes/default-scroll-behavior-drag.
///
/// In this sample, we use a TabPageSelector to navigate between pages,
/// in order to build natural behavior similar to other desktop applications.
class PageIndicator extends StatelessWidget {
  const PageIndicator({
    super.key,
    required this.tabController,
    required this.currentPageIndex,
    required this.onUpdateCurrentPageIndex,
    required this.isOnDesktopAndWeb,
  });

  final int currentPageIndex;
  final TabController tabController;
  final void Function(int) onUpdateCurrentPageIndex;
  final bool isOnDesktopAndWeb;

  @override
  Widget build(BuildContext context) {
    if (!isOnDesktopAndWeb) {
      return const SizedBox.shrink();
    }
    final ColorScheme colorScheme = Theme.of(context).colorScheme;

    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          IconButton(
            splashRadius: 16.0,
            padding: EdgeInsets.zero,
            onPressed: () {
              if (currentPageIndex == 0) {
                return;
              }
              onUpdateCurrentPageIndex(currentPageIndex - 1);
            },
            icon: const Icon(
              Icons.arrow_left_rounded,
              size: 32.0,
            ),
          ),
          TabPageSelector(
            controller: tabController,
            color: colorScheme.background,
            selectedColor: colorScheme.primary,
          ),
          IconButton(
            splashRadius: 16.0,
            padding: EdgeInsets.zero,
            onPressed: () {
              if (currentPageIndex == 3) {
                return;
              }
              onUpdateCurrentPageIndex(currentPageIndex + 1);
            },
            icon: const Icon(
              Icons.arrow_right_rounded,
              size: 32.0,
            ),
          ),
        ],
      ),
    );
  }
}
