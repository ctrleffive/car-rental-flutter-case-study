import 'package:flutter/material.dart';

class SearchData {
  String _location;
  DateTime _startDate;
  DateTime _endDate;
  TimeOfDay _startTime;
  TimeOfDay _endTime;

  set location(String value) => this._location = value;
}