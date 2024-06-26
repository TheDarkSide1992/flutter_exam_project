import 'package:flutter/material.dart';
import 'package:flutter_exam_project/models/profile_model.dart';


@immutable
abstract class ProfileState {}

class ProfileInitial extends ProfileState {}

class LoggedProfile extends ProfileState{
  LoggedProfile({
    required this.loggedProfile,
  });

  final Profile loggedProfile;
}

class LoggedOut extends ProfileState {}

class Autherror extends ProfileState{}