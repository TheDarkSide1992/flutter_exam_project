
import 'dart:convert';

import 'package:flutter/services.dart';
import 'package:flutter_exam_project/models/SimpleDataDTO.dart';
import 'package:flutter_exam_project/models/profile_model.dart';


abstract class DataSource {
  Future<SimpleDataDTO> getSimpleData();
  Future<Profile> getUserData(String email, String password);

}

class FakeDataSource implements DataSource {
  @override
  Future<SimpleDataDTO> getSimpleData() async {
    final json = await rootBundle.loadString("assets/simple_data.json");
    return SimpleDataDTO.fromJson(jsonDecode(json));
  }

  @override
  Future<Profile> getUserData(String email, String password) async {

    if(identical(email, "IamJsoN@object.dev") || identical(password, "123456")) {
      final json = await rootBundle.loadString("assets/user_data.json");
      return Profile.fromJson(jsonDecode(json));
    } else {
      throw Future.error("No Profile");
    }
  }
  

}
