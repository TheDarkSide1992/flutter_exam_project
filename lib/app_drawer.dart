import 'package:flutter/material.dart';

import 'home/homepage.dart';
import 'main.dart';
import 'settings/settigns_page.dart';


class AppDrawer extends StatelessWidget {
  const AppDrawer({super.key});

  _onMenuTap(BuildContext context, Widget Function({Key? key}) constructor) {
    Navigator.of(context).pushReplacement(
      MaterialPageRoute(builder: (context) => constructor.call()),
    );
  }

  @override
  Widget build(BuildContext context) {
    final textTheme = Theme.of(context).textTheme;
    return Drawer(
      child: ListView(
        padding: EdgeInsets.zero,
        children: [
          DrawerHeader(
            decoration: const BoxDecoration(
              gradient: LinearGradient(
                begin: Alignment.topRight,
                end: Alignment.bottomLeft,
                colors: [Colors.pinkAccent, Colors.blueAccent],
              ),
            ),
            child: Text('Remote_Controller', style: textTheme.titleLarge),
          ),

          //Item paths
          ListTile(
              title: Text('Home'),
              onTap: () => _onMenuTap(context, RoomOverviewApp.new),
              leading: Icon(Icons.home),
          ),
          ListTile(
              title: Text('Acount'),
              onTap: () => _onMenuTap(context, MyApp.new),
              leading: Icon(Icons.account_circle),
          ),
          ListTile(
              title: Text('Settings'),
              onTap: () => _onMenuTap(context, SettingPage.new),
              leading: Icon(Icons.settings),
          ),
        ],
      ),
    );
  }

}