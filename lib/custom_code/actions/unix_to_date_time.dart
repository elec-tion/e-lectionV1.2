// Automatic FlutterFlow imports
import '/backend/supabase/supabase.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'index.dart'; // Imports other custom actions
import '/flutter_flow/custom_functions.dart'; // Imports custom functions
import 'package:flutter/material.dart';
// Begin custom action code
// DO NOT REMOVE OR MODIFY THE CODE ABOVE!

import 'package:unixtime/unixtime.dart';

Future<String> unixToDateTime(int unixTime) async {
  // Add your function code here!
  DateTime dateTime = unixTime.toUnixTime();
  String sonuc = dateTime.toString();
  sonuc = sonuc.substring(0, (sonuc.length - 7));

  String year = sonuc.substring(0, 4);
  // Ay
  String month = sonuc.substring(5, 7);
  // Gün
  String day = sonuc.substring(8, 10);
  // Saat ve dakika
  String time = sonuc.substring(11);

  return "$day-$month-$year $time";
}
