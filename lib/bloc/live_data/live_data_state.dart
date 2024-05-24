import 'package:flutter/material.dart';

import '../../models/SensorModel.dart';

@immutable
abstract class LiveDataState {}

class LiveDataInitial extends LiveDataState {}

class LiveDataLoadedState extends LiveDataState{
  final SensorModel? data;

  LiveDataLoadedState({required this.data});
}

class DataDiscarded extends LiveDataState {}