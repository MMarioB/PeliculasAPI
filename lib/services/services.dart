import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:pelisapp/models/movie_detail_model.dart';
import 'package:pelisapp/models/movie_models.dart';
import 'package:http/http.dart' as http;

part 'movies_services.dart';

abstract class Services {
  void init();
  void dispose();
}

class ServiceResult<T> {
  @required
  bool status;

  T data;
  String message;

  ServiceResult({this.data, this.message, this.status});
}
