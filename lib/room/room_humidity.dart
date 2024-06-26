import 'package:flutter/material.dart';
import 'package:syncfusion_flutter_charts/charts.dart';

class RoomHumidity extends StatelessWidget {
  RoomHumidity(this.hum, {super.key});

  final double hum;

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      body: Center(
        child: Container(
          alignment: Alignment.topCenter,
          child: Column(
            children: [
              SizedBox(height: 15),
              Text(
                'Current humidity ${hum} %',
                style: TextStyle(
                    fontStyle: FontStyle.normal,
                    fontSize: 18,
                    color: Theme.of(context).colorScheme.inversePrimary),
              ),
              SizedBox(height: 5),
              Text(
                'Humidity over the latest week',
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
                        ChartData('07/05', 42),
                        ChartData('08/05', 36),
                        ChartData('09/05', 52),
                        ChartData('10/05', 45),
                        ChartData('11/05', 29),
                        ChartData('12/05', 66),
                        ChartData('13/05', 50)
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
    );
  }
}

class ChartData {
  ChartData(this.x, this.y);

  final String x;
  final double? y;
}

//childrn: Text('Current Temperature: ' + temp),
