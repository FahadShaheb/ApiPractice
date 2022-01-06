import 'package:flutter/material.dart';
import 'package:todolist/home_screen.dart';
import 'package:http/http.dart';
import 'package:dio/dio.dart';
import 'package:todolist/userdata.dart';

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    theme: ThemeData(
      primaryColor: Colors.blue,
    ),
    home: const DataFromAPI(),
  ));
}
