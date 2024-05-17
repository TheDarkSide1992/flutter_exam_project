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
      currentPowerIcon = Icons.block;
    } else if (isOn) {
      deviceStatus = "Window is Open";
      currentPowerIcon = Icons.air;
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
                SizedBox(height: 50),
                Text('Controller page',
                    style: TextStyle(color: Colors.purple, fontSize: 24)),
                SizedBox(height: 25),
                SizedBox(
                  height: 200.0,
                  width: 180.0,
                  child: Column(
                    children: <Widget>[
                      Text(
                        '${deviceStatus}',
                        style: TextStyle(
                            fontStyle: FontStyle.normal,
                            fontSize: 18,
                            color: Theme.of(context).colorScheme.primary),
                      ),
                    SizedBox(height: 15),
                      Icon(
                        currentPowerIcon,
                        size: 145,
                        color: Theme.of(context).colorScheme.inversePrimary,
                      ),
                    ],
                  ),
                ),
                SizedBox(height: 65),
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
                        color: Theme.of(context).colorScheme.primary,
                        border: Border.all(
                          color: Theme.of(context).colorScheme.inversePrimary,
                        ),
                        borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(15),
                            topRight: Radius.circular(15),
                            bottomRight: Radius.circular(15),
                            bottomLeft: Radius.circular(15))),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Text(
                          'Change Status',
                          style: TextStyle(
                              fontStyle: FontStyle.normal,
                              fontSize: 12,
                              color:
                                  Theme.of(context).colorScheme.inversePrimary),
                        ),
                        Icon(
                          Icons.power_settings_new,
                          size: 25,
                          color: Theme.of(context).colorScheme.inversePrimary,
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
