import 'package:flutter/material.dart';
import 'package:flutter_exam_project/home/current_room_data.dart';
import 'package:flutter_exam_project/models/models.dart';
import 'package:flutter_exam_project/server.dart';

class WeeklyDataList extends StatelessWidget {
  final SimpleDataDTO simpleDataDTO;

  const WeeklyDataList({super.key, required this.simpleDataDTO});


  @override
  Widget build(BuildContext context) {
    final DateTime currentDate = DateTime.now();
    final TextTheme textTheme = Theme.of(context).textTheme;

    return SliverList(
      delegate: SliverChildBuilderDelegate(
            (context, index) {
              final SimpleData simpleData = Server.getSimpleDataByID(index);
          final roomName = simpleData.roomName;
          final date = simpleData.dateTime;
          final temp = simpleData.temp;
          final hum = simpleData.hum;
          final aq = simpleData.airquality;
          final roomID = simpleData.id;

          return GestureDetector(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => CurrentRoomData()),
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
                            '$roomName'
                            '$date',
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
                      //'${SimpleData.highTemp} | ${SimpleData.lowTemp} F',
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