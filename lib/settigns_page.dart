import 'package:flutter/material.dart';

import 'app_drawer.dart';
import 'main.dart';

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
      body: Center(
        child: Padding(
          padding: EdgeInsets.all(50),
          child: ThemeChanger(),
        ),
      ),
    );
  }
}

class ThemeChanger extends StatelessWidget {
  const ThemeChanger({super.key});

  @override
  Widget build(BuildContext context) {
    final modes = [
      (ThemeMode.system, Icons.invert_colors),
      (ThemeMode.dark, Icons.dark_mode),
      (ThemeMode.light, Icons.light_mode),
    ];
    return DropdownButton(
      value: MyApp.themeNotifier.value,
      items: [
        for (final (mode, icon) in modes)
          DropdownMenuItem(
            value: mode,
            child: Row(
              children: [
                Icon(icon),
                const SizedBox(width: 8),
                Text(mode.name),
              ],
            ),
          ),
      ],
      onChanged: (value) {
        MyApp.themeNotifier.value = value as ThemeMode;
      },
    );
  }
}
