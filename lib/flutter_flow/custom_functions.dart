import 'dart:convert';
import 'dart:math' as math;

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:intl/intl.dart';
import 'package:timeago/timeago.dart' as timeago;
import 'lat_lng.dart';
import 'place.dart';
import 'uploaded_file.dart';
import '/backend/supabase/supabase.dart';

String maskedMail(String mailAddress) {
  // i want to print mail address with some '*'
  String maskedMailAddress = '';
  for (int i = 0; i < mailAddress.length; i++) {
    if (i < 3 || mailAddress[i] == '@') {
      maskedMailAddress += mailAddress[i];
    } else {
      maskedMailAddress += '*';
    }
  }
  return maskedMailAddress;
}

List<String> candidateJoinToElection(String candidateWalletID) {
  List<String> candidateList = [];
  candidateList.add(candidateWalletID);
  return candidateList;
}

List<String>? cityIDGenerator(String countryID) {
  List<String> cityID = [];
  var i;

  for (i = 1; i < 90; i++) {
    if (i < 10) {
      cityID.add('\t' + '$countryID' + '-0' + '$i');
    } else if (i > 9) {
      cityID.add('\t' + '$countryID' + '-' + '$i');
    }
  }

  return cityID;
}

List<String>? neighborhoodIDGenerator(String districtID) {
  List<String> neighborhoodID = [];
  var i;

  for (i = 1; i < 200; i++) {
    if (i < 10) {
      neighborhoodID.add('\t' + '$districtID' + '-0' + '$i');
    } else if (i > 9) {
      neighborhoodID.add('\t' + '$districtID' + '-' + '$i');
    }
  }

  return neighborhoodID;
}

String showDateTime(int dateTime) {
  DateTime date = DateTime.fromMillisecondsSinceEpoch(dateTime * 1000);
  String sonuc = date.toString();
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

String getStringBasedOnTime() {
  var hour = DateTime.now().hour;
  if (hour < 12) {
    return 'Morning!';
  }
  if (hour < 17) {
    return 'Good Afternoon!';
  }
  return 'Good Evening!';
}

List<String>? districtIDGenerator(String cityID) {
  List<String> districtID = [];
  var i;

  for (i = 1; i < 50; i++) {
    if (i < 10) {
      districtID.add('\t' + '$cityID' + '-0' + '$i');
    } else if (i > 9) {
      districtID.add('\t' + '$cityID' + '-' + '$i');
    }
  }

  return districtID;
}
