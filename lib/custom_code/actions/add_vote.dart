// Automatic FlutterFlow imports
import '/backend/supabase/supabase.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'index.dart'; // Imports other custom actions
import '/flutter_flow/custom_functions.dart'; // Imports custom functions
import 'package:flutter/material.dart';
// Begin custom action code
// DO NOT REMOVE OR MODIFY THE CODE ABOVE!

import 'package:web3dart/crypto.dart';

import 'package:http/http.dart'
    as http; //You can also import the browser version
import 'package:web3dart/web3dart.dart';

Future addVote(
  String voterPrivKey,
  String electionID,
  String candidateWalletID,
  String contractAddress,
  dynamic contractAbi,
) async {
  // Add your function code here!
  var apiUrl = "https://chain.e-lection.babico.name.tr"; //Replace with your API
  var httpClient = http.Client();
  var ethClient = Web3Client(apiUrl, httpClient);

  var contractInstance = DeployedContract(
      ContractAbi.fromJson(jsonEncode(contractAbi), "ElectionContract"),
      EthereumAddress.fromHex(contractAddress));

  Credentials userPriv = EthPrivateKey.fromHex(voterPrivKey);

  var gasEstimate = await ethClient.estimateGas(
      sender: userPriv.address,
      to: EthereumAddress.fromHex(contractAddress),
      data: contractInstance.function("vote").encodeCall(
          [electionID, EthereumAddress.fromHex(candidateWalletID)]));
  var rawTx = Transaction(
      from: userPriv.address,
      to: EthereumAddress.fromHex(contractAddress),
      data: contractInstance
          .function("vote")
          .encodeCall([electionID, EthereumAddress.fromHex(candidateWalletID)]),
      maxGas: gasEstimate.toInt(),
      gasPrice: EtherAmount.zero());

  String _txR = await ethClient.sendTransaction(userPriv, rawTx, chainId: 1337);

  print("$_txR, print1");

  TransactionReceipt? txR = await ethClient.getTransactionReceipt(_txR);
  print("$txR, print2");
}
