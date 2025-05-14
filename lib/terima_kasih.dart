import 'package:flutter/material.dart';

class TerimaKasih extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final String nama = ModalRoute.of(context)?.settings.arguments as String;

    return Scaffold(
      appBar: AppBar(title: Text('Terima Kasih')),
      body: Center(
        child: AnimatedOpacity(
          opacity: 1.0,
          duration: Duration(seconds: 1),
          child: Text(
            'Terima kasih telah mengisi form, $nama!',
            style: TextStyle(fontSize: 18),
            textAlign: TextAlign.center,
          ),
        ),
      ),
    );
  }
}
