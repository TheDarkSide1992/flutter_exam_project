import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_exam_project/cubit/device/device_cubit.dart';
import 'package:flutter_exam_project/cubit/device/device_state.dart';
import 'package:flutter_exam_project/models/SimpleDataDTO.dart';
import 'package:flutter_exam_project/utils/constants.dart';

import '../account/account_page.dart';

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
                  AccountPage()), //TODO Change this to relevant widget
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
                      '${device.roomName}',
                      style: TextStyle(
                          fontStyle: FontStyle.normal,
                          fontSize: 24,
                          color: Theme.of(context).colorScheme.inversePrimary),
                    ),
                    Text(
                      '${device.date}',
                      style: TextStyle(
                          fontStyle: FontStyle.normal,
                          fontSize: 16,
                          color: Theme.of(context).colorScheme.inversePrimary),
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
                      'Temperature ${device.temp} C',
                      style: TextStyle(
                          fontStyle: FontStyle.normal,
                          fontSize: 16,
                          color: Theme.of(context).colorScheme.inversePrimary),
                    ),
                    Text(
                      'Humidity ${device.hum}',
                      style: TextStyle(
                          fontStyle: FontStyle.normal,
                          fontSize: 16,
                          color: Theme.of(context).colorScheme.inversePrimary),
                    ),
                    Text(
                      'Air-quality ${device.airquality}',
                      style: TextStyle(
                          fontStyle: FontStyle.normal,
                          fontSize: 16,
                          color: Theme.of(context).colorScheme.inversePrimary),
                    ),
                  ]),
            ),
          ],
        ),
      ).animate().slideX(delay: 600.ms, begin: -1),
    );
  }
}
