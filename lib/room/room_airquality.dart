import 'package:flutter/material.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_exam_project/app_drawer.dart';
import 'package:syncfusion_flutter_charts/charts.dart';


class RoomAirQuality extends StatelessWidget{
  RoomAirQuality({super.key});

  var aq = "N/A";


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Container(
            child: SfCartesianChart(
              primaryXAxis: CategoryAxis(),
              series: <CartesianSeries>[
                //TODO insert list of data from db
                LineSeries<ChartData, String>(dataSource: [
                  ChartData('07/05', 1.1),
                  ChartData('08/05', 1.8),
                  ChartData('09/05', 2.1),
                  ChartData('10/05', 1.5),
                  ChartData('11/05', 1.76),
                  ChartData('12/05', 1.11),
                  ChartData('13/05', 1.65)
                ],
                    xValueMapper: (ChartData data, _) => data.x,
                    yValueMapper: (ChartData data, _) => data.y
                )
              ],
            )
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