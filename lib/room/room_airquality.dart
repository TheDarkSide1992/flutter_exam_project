import 'package:flutter/material.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_exam_project/app_drawer.dart';
import 'package:flutter_exam_project/utils/constants.dart';
import 'package:syncfusion_flutter_charts/charts.dart';

import '../bloc/live_data/live_data_bloc.dart';
import '../bloc/live_data/live_data_state.dart';

class RoomAirQuality extends StatelessWidget {
  RoomAirQuality({super.key});

  double aq = 0.0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: BlocConsumer<LiveDataBloc, LiveDataState>(
        listener: (context, state) {
      if (state is LiveDataInitial || state is DataDiscarded) {
        context.showErrorSnackBar(message: "Could not get data");
      } else if (state is LiveDataLoadedState) {
        aq = state.data!.CO2!;
      }
    },
    builder: (context, state) => Center(
        child: Container(
          alignment: Alignment.topCenter,
          child: Column(
            children: [
              SizedBox(height: 15,),
              Text(
                'Air Quality ${aq}',
                style: TextStyle(
                    fontStyle: FontStyle.normal,
                    fontSize: 18,
                    color: Theme.of(context).colorScheme.inversePrimary),
              ),
              SizedBox(height: 5,),
              Text(
                'Air Quality over the latest week',
                style: TextStyle(
                    fontStyle: FontStyle.normal,
                    fontSize: 18,
                    color: Theme.of(context).colorScheme.primary),
              ),
              SfCartesianChart(
                primaryXAxis: CategoryAxis(),
                series: <CartesianSeries>[
                  //TODO insert list of data from db
                  LineSeries<ChartData, String>(
                      dataSource: [
                        ChartData('07/05', 1.1),
                        ChartData('08/05', 1.8),
                        ChartData('09/05', 2.1),
                        ChartData('10/05', 1.5),
                        ChartData('11/05', 1.76),
                        ChartData('12/05', 1.11),
                        ChartData('13/05', 1.65)
                      ],
                      xValueMapper: (ChartData data, _) => data.x,
                      yValueMapper: (ChartData data, _) => data.y)
                ],
              ),
              SizedBox(height: 10,),
            ],
          ),
        ),
      ),
      ),
    );
  }
}

class ChartData {
  ChartData(this.x, this.y);

  final String x;
  final double? y;
}

//childrn: Text('Current Temperature: ' + temp),
