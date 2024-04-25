import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_exam_project/utils/constants.dart';

import '../app_drawer.dart';
import '../cubit/account/profile_cubit.dart';
import '../cubit/account/profile_model.dart';
import '../cubit/account/profile_state.dart';

class AccountPage extends StatelessWidget {
  AccountPage({super.key});

  var id = 0;
  var userName = "N/A";
  var firstName = "N/A";
  var lastName = "N/A";
  var mail = "N/A";
  var city = "N/A";
  var numberOfDevices = 0;

  //TODO implement api call refrence to get data. or pull from account state

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme
            .of(context)
            .colorScheme
            .inversePrimary,
        title: Text('Account'),
      ),
      drawer: const AppDrawer(),
      body:
      BlocConsumer<ProfileCubit, ProfileState>(listener: (context, state) {
        if (state is Autherror ||
            state is ProfileInitial ||
            state is LoggedOut) {
          context.showErrorSnackBar(message: "Ann error acoured");
        }
      }, builder: (context, state) {
        if (state is LoggedProfile) {
          Profile profile = state.loggedProfile;
          id = profile.id;
          userName = profile.username;
          firstName = profile.firstName;
          lastName = profile.lastName;
          mail = profile.email;
          city = profile.city;
        }

        return Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Icon(
                Icons.account_circle,
                size: 85,
              ),
              Text('$userName',
                  style: TextStyle(color: Colors.purple, fontSize: 24)),
              SizedBox(height: 30),
              Text('First name : $firstName  ,  Last Name: $lastName'),
              Text('city : $city'),
              Text('Mail : $mail'),
              Text('Current number of devices : $numberOfDevices')
            ],),
        );
      }),
    );
  }
}
