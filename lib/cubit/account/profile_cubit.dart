import 'dart:async';
import 'package:flutter/material.dart';

import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';

import 'profile_model.dart';
import 'profile_state.dart';

class ProfileCubit extends Cubit<ProfileState> {
  ProfileCubit() : super(ProfileInitial());

  Profile? _profile;

  Future<void> signIn(String email, String password) async {
    if (_profile != null) {
      return;
    }

    _profile = new Profile(id: 1, username: 'My UserName',
        firstName: 'Jason', lastName: 'Object', email: 'IamJsoN@object.dev',
        city: 'API ram City');
    //TODO implement it so it call api to get single profile call datasource


    if (_profile == null) {
      emit(Autherror());
    }

    emit(LoggedProfile(loggedProfile: _profile!));
  }

  Future<void> signOut() async {
    _profile = null;
    emit(LoggedOut());
  }

  Future<Profile?> getProfile() async{
    if(_profile != null) {
      emit(LoggedProfile(loggedProfile: _profile!));
    }
    return null;
  }
}
