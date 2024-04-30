import 'dart:async';

import 'package:flutter_bloc/flutter_bloc.dart';

import '../../models/profile_model.dart';
import '../../utils/data_source.dart';
import 'profile_state.dart';

class ProfileCubit extends Cubit<ProfileState> {
  ProfileCubit(this.dataSource) : super(ProfileInitial());

  final DataSource dataSource;

  Profile? _profile;

  Future<void> signIn(String email, String password) async {
    if (_profile != null) {
      return;
    }
    _profile = await dataSource.getUserData(email, password) as Profile;


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
