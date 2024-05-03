// Automatic FlutterFlow imports
import '/backend/supabase/supabase.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'index.dart'; // Imports other custom actions
import '/flutter_flow/custom_functions.dart'; // Imports custom functions
import 'package:flutter/material.dart';
// Begin custom action code
// DO NOT REMOVE OR MODIFY THE CODE ABOVE!

import 'dart:convert';
import 'package:convert/convert.dart';
import 'package:crypto/crypto.dart';

Future<String> hashingIDPassword(
  String hashlencek,
  String degisken,
) async {
  // Add your function code here!
  var output = AccumulatorSink<Digest>();
  var input = sha256.startChunkedConversion(output);
  input.add(utf8.encode(hashlencek));
  input.add(utf8.encode(degisken)); // call `add` for every chunk of input data
  input.close();

  var digest = output.events.single;

  return "$digest";
}
