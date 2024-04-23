import 'package:flutter/material.dart';
import 'package:flutter_exam_project/home/current_room_data.dart';
import 'package:flutter_exam_project/models/models.dart';

class WeeklyDataList extends StatelessWidget {
  final SimpleDataDTO simpleData;

  const WeeklyDataList({super.key, required this.simpleData})


  @override
  Widget build(BuildContext context) {
    final DateTime currentDate = DateTime.now();
    final TextTheme textTheme = Theme.of(context).textTheme;

    return SliverList(
      delegate: SliverChildBuilderDelegate(
            (context, index) {
          final roomName = simpleData.roomName;
          final date = simpleData.dateTime;
          final temp = simpleData.temp;
          final hum = simpleData.hum;
          final aq = simpleData.airquality;

          return GestureDetector(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => CurrentRoomData(roomName)),
              );
            },
            child: Card(
              child: Row(
                children: <Widget>[
                  SizedBox(
                    height: 200.0,
                    width: 200.0,
                    child: Stack(
                      fit: StackFit.expand,
                      children: <Widget>[

                        Center(
                          child: Text(
                            "${date?.day} / ${date?.month}",
                            //dailyForecast.getDate(currentDate.day).toString(),
                            style: textTheme.displayMedium,
                          ),
                        ),
                      ],
                    ),
                  ),
                  Expanded(
                    child: Padding(
                      padding: const EdgeInsets.all(20.0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          Text(
                            //dailyForecast.getWeekday(currentDate.weekday),
                            date.toString(),
                            style: textTheme.headlineMedium,
                          ),
                        ],
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(16.0),
                    child: Text(
                          'Temperature $temp C'
                          'Humidity $hum'
                          'Air-quality $aq',
                      //'${dailyForecast.highTemp} | ${dailyForecast.lowTemp} F',
                      style: textTheme.titleMedium,
                    ),
                  ),
                ],
              ),
            ),
          );
        },
        childCount: 7,
      ),
    );
  }
}