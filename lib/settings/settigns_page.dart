import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_exam_project/utils/constants.dart';
import 'package:settings_ui/settings_ui.dart';

import '../app_drawer.dart';
import '../cubit/account/profile_cubit.dart';
import '../cubit/account/profile_state.dart';
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
      body: BlocConsumer<ProfileCubit, ProfileState>(
        listener: (context, state) {
          if (state is LoggedOut) {

            context.showSnackBar(message: "Signing out", backgroundColor: Colors.yellow);

            Navigator.of(context).push(
              MaterialPageRoute(builder: (context) => const MyApp()),
            );
          }
        },
        builder: (context, state) => SettingsList(
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
                    context.read<ProfileCubit>().signOut;
                  },
                  leading: Icon(Icons.logout),
                  title: Text('LogOut'),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
