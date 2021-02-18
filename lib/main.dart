import 'package:flutter/material.dart';
import 'src/Earndu.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';
import 'dart:async';

void main() {
  runApp(
    MaterialApp(
      title: 'Start',
      home: Earndu(),
    ),
  );
}
