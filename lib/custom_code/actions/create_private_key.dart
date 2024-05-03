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

Future<String> createPrivateKey(
  String id,
  String password,
  String degisken,
) async {
  // Add your function code here!
  var output = AccumulatorSink<Digest>();
  var input = sha256.startChunkedConversion(output);
  input.add(utf8.encode(id));
  input.add(utf8.encode(password)); // call `add` for every chunk of input data
  input.add(utf8.encode(degisken));
  input.close();

  var digest = output.events.single;

  return "$digest";
}
