import 'package:flutter/material.dart';

import '../app_drawer.dart';

class AccountPage extends StatelessWidget {
  const AccountPage({super.key});

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
            const Text('Tour at the Account page'),
          ],
        ),
      ),
    );
  }
}
