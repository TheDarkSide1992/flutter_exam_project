import 'package:flutter/material.dart';
import 'package:flutter_exam_project/models/SimpleDataDTO.dart';

import '../account/account_page.dart';
import '../room/room_page.dart';

class DeviceCard extends StatelessWidget {
  const DeviceCard(this.device, {super.key});

  final SimpleDataDTO device;

  @override
  Widget build(BuildContext context) {

    return GestureDetector(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(
              builder: (context) =>
                  RoomPage(device)), //TODO Change this to relevant widget
        );
      },
      child: Container(
        margin: new EdgeInsets.all(5.0),
        padding: EdgeInsets.all(15.0),
        decoration: BoxDecoration(
            color: Theme.of(context).colorScheme.primary,
            border: Border.all(
              color: Theme.of(context).colorScheme.inversePrimary,
            ),
            borderRadius: BorderRadius.only(
                topLeft: Radius.circular(10),
                topRight: Radius.circular(10),
                bottomRight: Radius.circular(10),
                bottomLeft: Radius.circular(10))),
        child: Row(
          children: <Widget>[
             SizedBox(
              height: 90.0,
              width: 90.0,
              child: Stack(
                fit: StackFit.expand,
                children: <Widget>[
                  Icon(
                    Icons.ad_units_rounded,
                    size: 80,
                    color: Theme.of(context).colorScheme.inversePrimary,
                  ),
                ],
              ),
            ),
            Expanded(
              child: Padding(
                padding: const EdgeInsets.all(5.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Text(
                      '${device.roomName}',
                      style: TextStyle(
                          fontStyle: FontStyle.normal,
                          fontSize: 18,
                          color: Theme.of(context).colorScheme.inversePrimary),
                    ),
                    Text(
                      '${device.date}',
                      style: TextStyle(
                          fontStyle: FontStyle.normal,
                          fontSize: 14,
                          color: Theme.of(context).colorScheme.inversePrimary),
                    ),
                  ],
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(5.0),
              child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Text(
                      'Temperature : ${device.temp} C',
                      style: TextStyle(
                          fontStyle: FontStyle.normal,
                          fontSize: 14,
                          color: Theme.of(context).colorScheme.inversePrimary),
                    ),
                    Text(
                      'Humidity : ${device.hum} %',
                      style: TextStyle(
                          fontStyle: FontStyle.normal,
                          fontSize: 14,
                          color: Theme.of(context).colorScheme.inversePrimary),
                    ),
                    Text(
                      'Air-quality : ${device.airquality} ppm',
                      style: TextStyle(
                          fontStyle: FontStyle.normal,
                          fontSize: 14,
                          color: Theme.of(context).colorScheme.inversePrimary),
                    ),
                  ]),
            ),
          ],
        ),
      ),
    );
  }
}
