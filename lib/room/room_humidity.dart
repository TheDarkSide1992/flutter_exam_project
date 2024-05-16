import 'package:flutter/material.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_exam_project/app_drawer.dart';
import 'package:syncfusion_flutter_charts/charts.dart';


class RoomHumidity extends StatelessWidget{
  RoomHumidity({super.key});

  var hum = "N/A";


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: Text('Humidity'),
      ),
      drawer: const AppDrawer(),
      body: Center(
        child: Container(
            child: SfCartesianChart(
              primaryXAxis: CategoryAxis(),
              series: <CartesianSeries>[
                LineSeries<ChartData, String>(dataSource: [
                  ChartData('07/05', 42),
                  ChartData('08/05', 36),
                  ChartData('09/05', 52),
                  ChartData('10/05', 45),
                  ChartData('11/05', 29),
                  ChartData('12/05', 66),
                  ChartData('13/05', 50)
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