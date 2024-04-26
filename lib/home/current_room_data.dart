import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:flutter_exam_project/home/weekly_data_list.dart';
import 'package:flutter_exam_project/models/data_source.dart';

import '../app_drawer.dart';
import '../models/models.dart';

class CurrentRoomData extends StatelessWidget {
  const CurrentRoomData ({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: Text('HOME'),
      ),
      drawer: const AppDrawer(),
      body: FutureBuilder(
        future: context.read<DataSource>().getSimpleData(),
        builder: (context, snapShoot) => CustomScrollView(
          slivers: <Widget>[
            //WeatherSliverAppBar(),
            if (snapShoot.hasData)
              WeeklyDataList(simpleDataDTO: snapShoot.data!)
            else if (snapShoot.hasError)
              _buildError(snapShoot, context)
            else
              _buildSpinner()
          ],
        ),
      ),
    );

  }

  SliverFillRemaining _buildSpinner() {
    return const SliverFillRemaining(
      hasScrollBody: false,
      child: Center(
        child: CircularProgressIndicator.adaptive(),
      ),
    );
  }

  SliverToBoxAdapter _buildError(AsyncSnapshot<SimpleDataDTO> snapshoot, BuildContext context) {
    return SliverToBoxAdapter(
      child: Padding(
        padding: EdgeInsets.all(16),
        child: Text(
          snapshoot.error.toString(),
          style:
          TextStyle(color: Theme.of(context).colorScheme.error),
        ),
      ),
    );
  }
}