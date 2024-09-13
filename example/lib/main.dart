import 'package:flutter/material.dart';
import 'dart:async';

import 'package:core_card_io_beta/core_card_io_beta.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  CoreCardIoResponse? card;

  @override
  void initState() {
    super.initState();
  }

  Future<void> scanCard() async {
    if (!mounted) return;

    final card = await CoreCardIo.scanCard(
        hideCardIOLogo: true,
        requireExpiry: true,
        scanExpiry: true,
        suppressManualEntry: true);

    setState(() => this.card = card);
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Plugin example app'),
        ),
        body: Center(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Text('Scanned card: ${card ?? 'none'}'),
              Container(
                height: 8.0,
              ),
              OutlinedButton(onPressed: scanCard, child: Text("Scan card"))
            ],
          ),
        ),
      ),
    );
  }
}
