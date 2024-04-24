import 'package:flutter/material.dart';

import '../app_drawer.dart';

class AccountPage extends StatelessWidget {
  AccountPage({super.key});

  var firstName = "First Name";
  var lastName = "Last Name";
  var mail = "Mail@Mail.mail";
  var numberOfDevices = 0;

  //TODO implement api call refrence to get data. or pull from account state

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: Text('Account'),
      ),
      drawer: const AppDrawer(),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Icon(Icons.account_circle),
            SizedBox(height: 30),
            Title(color: Colors.purple, child: Text('Account')),
            SizedBox(height: 30),
            Text('First name : $firstName  ,  Last Name: $lastName'),
            Text('Mail : $mail'),
            Text('Current number of devices : $numberOfDevices')
          ],
        ),
      ),
    );
  }
}
