import 'package:flutter/material.dart';

class IResult extends StatelessWidget {
  IResult(
    {required this.tegangan, required this.hambatan}
  );
  final int tegangan;
  final int hambatan;

  @override
  Widget build(BuildContext context) {
    double hasil = tegangan / hambatan;
    return Scaffold(
      appBar: AppBar(
        title: Text("Hasil"),
      ),
      body: Center(
        child: Text(hasil.toString(),style: TextStyle(fontSize: 100),),
      ),
    );
  }
}