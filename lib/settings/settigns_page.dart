import 'package:flutter/material.dart';
import 'package:settings_ui/settings_ui.dart';

import '../app_drawer.dart';
import '../main.dart';

class SettingPage extends StatelessWidget {
  const SettingPage({super.key});
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: Text('Settings'),
      ),
      drawer: const AppDrawer(),
      body: SettingsList(
        sections: [
          SettingsSection(
            title: Text('Background Collor'),
            tiles: <SettingsTile>[
              SettingsTile.navigation(
                onPressed: (value) {
                  MyApp.themeNotifier.value = ThemeMode.system;
                },
                leading: Icon(Icons.invert_colors),
                title: Text('Sytem'),
              ),
              SettingsTile.navigation(
                onPressed: (value) {
                  MyApp.themeNotifier.value = ThemeMode.dark;
                },
                leading: Icon(Icons.dark_mode),
                title: Text('DarkMode'),
              ),
              SettingsTile.navigation(
                onPressed: (value) {
                  MyApp.themeNotifier.value = ThemeMode.light;
                },
                leading: Icon(Icons.light_mode),
                title: Text('lightMode'),
              ),
            ],
          ),

          SettingsSection(
            title: Text('Account'),
            tiles: <SettingsTile>[
              SettingsTile.navigation(
                onPressed: (value) {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => MyApp()),
                  );
                },
                leading: Icon(Icons.logout),
                title: Text('LogOut'),
              ),
            ],
          ),
        ],
      ),
    );
  }
}

