import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

import '../app_drawer.dart';

class RoomControl extends StatefulWidget {
  RoomControl({super.key});

  @override
  State<RoomControl> createState() => _RoomControlState();
}

class _RoomControlState extends State<RoomControl> {
  late String deviceStatus;
  late IconData currentPowerIcon;
  bool isOn = false;

  void _setDisplayStatus() async {
    if (!isOn) {
      deviceStatus = "Window is closed";
      currentPowerIcon = Icons.power_off;
    } else if (isOn) {
      deviceStatus = "Window is Open";
      currentPowerIcon = Icons.power;
    } else {
      deviceStatus = "Error occurred";
      currentPowerIcon = Icons.adb;
    }
  }

  void _getStatus() async {
    isOn = false;
  }

  void _ChangeState() async {
    this.isOn = !this.isOn;
  }

  @override
  Widget build(BuildContext context) {
    _setDisplayStatus();
    return Scaffold(
      body: Center(
        child: Container(
            alignment: Alignment.topCenter,
            child: Column(
              children: [
                SizedBox(height: 15),
                Text('Controller page',
                    style: TextStyle(color: Colors.purple, fontSize: 24)),
                SizedBox(height: 25),

                SizedBox(
                  height: 150.0,
                  width: 150.0,
                  child: Stack(
                    alignment: Alignment.center,
                    fit: StackFit.expand,
                    children: <Widget>[
                      Text(
                        '${deviceStatus}',
                        style: TextStyle(
                            fontStyle: FontStyle.normal,
                            fontSize: 14,
                            color: Theme
                                .of(context)
                                .colorScheme
                                .inversePrimary),
                      ),
                      Icon(
                        currentPowerIcon,
                        size: 145,
                        color: Theme
                            .of(context)
                            .colorScheme
                            .inversePrimary,
                      ),
                    ],
                  ),
                ),
                SizedBox(height: 25),
                new GestureDetector(
                  onTap: () {
                    setState(() {
                      _ChangeState();
                      _setDisplayStatus();
                    });
                  },
                  child: new Container(
                    alignment: Alignment.center,
                    margin: new EdgeInsets.all(5.0),
                    padding: EdgeInsets.all(15.0),
                    decoration: BoxDecoration(
                        color: Theme
                            .of(context)
                            .colorScheme
                            .primary,
                        border: Border.all(
                          color: Theme
                              .of(context)
                              .colorScheme
                              .inversePrimary,
                        ),
                        borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(10),
                            topRight: Radius.circular(10),
                            bottomRight: Radius.circular(10),
                            bottomLeft: Radius.circular(10))),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Text(
                          'Change Stere',
                          style: TextStyle(
                              fontStyle: FontStyle.normal,
                              fontSize: 12,
                              color: Theme
                                  .of(context)
                                  .colorScheme
                                  .inversePrimary),
                        ),
                        Icon(
                          Icons.adb_outlined,
                          size: 25,
                          color: Theme
                              .of(context)
                              .colorScheme
                              .inversePrimary,
                        ),
                      ],
                    ),
                  ),
                )
              ],
            )),
      ),
    );
  }

}
