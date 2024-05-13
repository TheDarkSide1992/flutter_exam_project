import 'package:flutter/material.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_exam_project/app_drawer.dart';
import 'package:syncfusion_flutter_charts/charts.dart';


class RoomTemperature extends StatelessWidget{
  RoomTemperature({super.key});

  var temp = "N/A";


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: Text('Temperature'),
      ),
      drawer: const AppDrawer(),
      body: Center(
        child: Container(
          child: SfCartesianChart(
            primaryXAxis: CategoryAxis(),
            series: <CartesianSeries>[
              LineSeries<ChartData, String>(dataSource: [
                ChartData('07/05', 22),
                ChartData('08/05', 23),
                ChartData('09/05', 25),
                ChartData('10/05', 24),
                ChartData('11/05', 22),
                ChartData('12/05', 25),
                ChartData('13/05', 24)
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