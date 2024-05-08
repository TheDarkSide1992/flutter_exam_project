import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_exam_project/bloc/account/profile_state.dart';
import 'package:flutter_exam_project/utils/constants.dart';

import '../app_drawer.dart';
import '../bloc/account/profile_bloc.dart';
import '../models/profile_model.dart';

class AccountPage extends StatelessWidget {
  AccountPage({super.key});

  var realname = "N/A";
  var mail = "N/A";
  var city = "N/A";
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
      body:
          BlocConsumer<ProfileBloc, ProfileState>(listener: (context, state) {
        if (state is Autherror ||
            state is ProfileInitial ||
            state is LoggedOut) {
          context.showErrorSnackBar(message: "An error occurred");
        }
      }, builder: (context, state) {
        if (state is LoggedProfile) {
          Profile profile = state.loggedProfile;
          realname = profile.realname!;
          mail = profile.email!;
          city = profile.city!;
        }

        return Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Icon(
                Icons.account_circle,
                size: 85,
              ),
              Text('$realname',
                  style: TextStyle(color: Colors.purple, fontSize: 24)),
              SizedBox(height: 30),
              Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: <Widget>[
                    Container(
                      margin: new EdgeInsets.all(15.0),
                      padding: EdgeInsets.all(20.0),
                      decoration: BoxDecoration(
                          color: Theme.of(context).colorScheme.primary,
                          border: Border.all(
                            color: Theme.of(context).colorScheme.inversePrimary,
                          ),
                          borderRadius: BorderRadius.only(
                              topLeft: Radius.circular(40),
                              bottomRight: Radius.circular(40))),
                      child: Column(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: <Widget>[
                            Text('city : $city',
                                style: TextStyle(
                                    color: Theme.of(context)
                                        .colorScheme
                                        .inversePrimary)),
                            Text('Mail : $mail',
                                style: TextStyle(
                                    color: Theme.of(context)
                                        .colorScheme
                                        .inversePrimary)),
                            Text('Current number of devices : $numberOfDevices',
                                style: TextStyle(
                                    color: Theme.of(context)
                                        .colorScheme
                                        .inversePrimary)),
                          ]),
                    ),
                  ]),
            ],
          ),
        );
      }),
    );
  }
}
