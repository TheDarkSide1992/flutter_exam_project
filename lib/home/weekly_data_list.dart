import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:flutter_exam_project/home/current_room_data.dart';
import 'package:flutter_exam_project/models/SimpleDataDTO.dart';
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
            child: Container(
              margin: new EdgeInsets.all(15.0),
              padding: EdgeInsets.all(30.0),
              decoration: BoxDecoration(
                  color: Theme.of(context).colorScheme.primary,
                  border: Border.all(
                    color: Theme.of(context).colorScheme.inversePrimary,
                  ),
                  borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(40),
                      topRight: Radius.circular(40),
                      bottomRight: Radius.circular(40),
                      bottomLeft: Radius.circular(40))),
              child: Row(
                children: <Widget>[
                  const SizedBox(
                    height: 200.0,
                    width: 200.0,
                    child: Stack(
                      fit: StackFit.expand,
                      children: <Widget>[
                        Icon(
                          Icons.ad_units_rounded,
                          size: 100,
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
                            '$roomName',
                            style: TextStyle(
                                fontStyle: FontStyle.normal,
                                fontSize: 24,
                                color: Theme.of(context)
                                    .colorScheme
                                    .inversePrimary),
                          ),
                          Text(
                            '$date',
                            style: TextStyle(
                                fontStyle: FontStyle.normal,
                                fontSize: 16,
                                color: Theme.of(context)
                                    .colorScheme
                                    .inversePrimary),
                          ),
                        ],
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(16.0),
                    child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          Text(
                            'Temperature $temp C',
                            style: TextStyle(
                                fontStyle: FontStyle.normal,
                                fontSize: 16,
                                color: Theme.of(context)
                                    .colorScheme
                                    .inversePrimary),
                          ),
                          Text(
                            'Humidity $hum',
                            style: TextStyle(
                                fontStyle: FontStyle.normal,
                                fontSize: 16,
                                color: Theme.of(context)
                                    .colorScheme
                                    .inversePrimary),
                          ),
                          Text(
                            'Air-quality $aq',
                            style: TextStyle(
                                fontStyle: FontStyle.normal,
                                fontSize: 16,
                                color: Theme.of(context)
                                    .colorScheme
                                    .inversePrimary),
                          ),
                        ]),
                  ),
                ],
              ),
            ).animate().slideX(delay: 600.ms, begin: -1),
          );
        },
        childCount: Server.getSimpleDataList().length,
      ),
    );
  }
}
