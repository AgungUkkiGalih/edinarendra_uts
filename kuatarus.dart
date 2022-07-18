import 'package:flutter/material.dart';
import 'hasil.dart';

class KuatArus extends StatefulWidget {
  @override
  State<KuatArus> createState() => _KuatArusState();
}

class _KuatArusState extends State<KuatArus> {
  int v = 0;
  int r = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Kuat Arus"),
        backgroundColor : Colors.black
      ),
      body: Center(
        child: Column(
          children: [
            TextField(
              keyboardType: TextInputType.number,
              decoration: InputDecoration(
                hintText: "Input tegangan"
              ),
              onChanged: (txt) {
                setState(() {
                  v = int.tryParse(txt) ?? 0;
                });
              },
            ),
            TextField(
              keyboardType: TextInputType.number,
              decoration: InputDecoration(
                hintText: "Input hambatan"
              ),
              onChanged: (txt) {
                setState(() {
                  r = int.tryParse(txt) ?? 0;
                });
              },
            ),
            OutlinedButton(onPressed: () {
              Navigator.push(context, MaterialPageRoute(builder: (context) => IResult (
                tegangan : v,
                hambatan : r,
              )));
            }, child: Text("Hitung"))
          ],
        )
      ),
    );
  }
}