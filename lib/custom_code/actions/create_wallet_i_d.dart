// Automatic FlutterFlow imports
import '/backend/supabase/supabase.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'index.dart'; // Imports other custom actions
import '/flutter_flow/custom_functions.dart'; // Imports custom functions
import 'package:flutter/material.dart';
// Begin custom action code
// DO NOT REMOVE OR MODIFY THE CODE ABOVE!

import 'dart:math'; //used for the random number generator
import 'package:web3dart/web3dart.dart';

Future<String> createWalletID(String privateKey) async {
  // Add your function code here!
  var credentials = EthPrivateKey.fromHex(privateKey);
  var address = credentials.address;

  return "$address";
}
