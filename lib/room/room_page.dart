import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_exam_project/models/SimpleDataDTO.dart';
import 'package:flutter_exam_project/room/room_temperature.dart';
import 'package:flutter_exam_project/utils/data_source.dart';

class RoomPage extends StatelessWidget{
  const RoomPage(this.roomId, {super.key});

  final SimpleDataDTO roomId;


  @override
  Widget build(BuildContext context){
    return Scaffold(

      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: Text(roomId.roomName!),
      ),
      body: const RoomDataView(),

      /**FutureBuilder<RoomTempChartData>(
        future: context.read<DataSource>().getSimpleData(roomId),
        builder: (context, snapshot){
          if(!snapshot.hasData) return const CircularProgressIndicator();
        },

      ),*/
    );
  }
}

class RoomDataView extends StatefulWidget{
  const RoomDataView({super.key});

  @override
  State<RoomDataView> createState() => _RoomDataView();
}

class _RoomDataView extends State<RoomDataView>
    with TickerProviderStateMixin {
  late PageController _pageViewController;
  late TabController _tabController;
  int _currentPageIndex = 0;

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

  @override
  Widget build(BuildContext context) {
    theme: Theme.of(context);
    return Stack(
        alignment: Alignment.bottomCenter,
        children: <Widget>[
        PageView(
        controller: _pageViewController,
        onPageChanged: _handlePageViewChanged,
        children: [
          Center(
            child: RoomTemperature(),
          ),
          Center(
            child: Text('Humidity Page', style: TextStyle(color: Colors.purple, fontSize: 24)),
          ),
          Center(
            child: Text('Air-quality Page', style: TextStyle(color: Colors.purple, fontSize: 24)),
          ),
          Center(
            child: Text('Control page', style: TextStyle(color: Colors.purple, fontSize: 24)),
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