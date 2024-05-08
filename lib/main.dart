import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_exam_project/bloc/account/profile_bloc.dart';
import 'package:flutter_exam_project/bloc/device/device_cubit.dart';
import 'package:flutter_exam_project/log_in/log_in_page.dart';
import 'package:flutter_exam_project/utils/broadcast_ws_channel.dart';
import 'package:provider/provider.dart';

import 'app_drawer.dart';
import 'bloc_observer.dart';
import 'utils/data_source.dart';

void main() {
  // Configure logging for bloc
  Bloc.observer = LoggerBlocObserver();

  final url = "ws://localhost:8181";

  runApp(
    MultiBlocProvider(
      providers: [
        BlocProvider<ProfileBloc>(
          create: (BuildContext context) => ProfileBloc(BroadcastWsChannel(Uri.parse(url)))
        ),
        BlocProvider<DeviceCubit>(
          create: (BuildContext context) => DeviceCubit(FakeDataSource()) //TODO Make it use bloc
        ),
        Provider<DataSource>(create: (context) => FakeDataSource()) //TODO Remowe the need for a datasource
      ],
      child: const MyApp(),
    ),
  );
}

class MyApp extends StatelessWidget {
  static final ValueNotifier<ThemeMode> themeNotifier =
      ValueNotifier(ThemeMode.system);

  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ValueListenableBuilder<ThemeMode>(
      valueListenable: themeNotifier,
      builder: (context, themeMode, child) => MaterialApp(
        theme: ThemeData.light(),
        darkTheme: ThemeData.dark(),
        themeMode: themeMode,
        home: LoginPage(),
      ),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;

  void _incrementCounter() {
    setState(() {
      _counter++;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: Text(widget.title),
      ),
      drawer: const AppDrawer(),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            const Text(
              'You have pushed the button this many times:',
            ),
            Text(
              '$_counter',
              style: Theme.of(context).textTheme.headlineMedium,
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: _incrementCounter,
        tooltip: 'Increment',
        child: const Icon(Icons.add),
      ),
    );
  }
}
