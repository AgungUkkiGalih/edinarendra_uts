import 'package:flutter/material.dart';
import 'kuatarus.dart';

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Kuat Arus"),
        backgroundColor: Colors.black,
      ),
      body: Center(
        child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: OutlinedButton(onPressed: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context) {
                    return KuatArus();
                  }));
                }, child: Text("Hitung  Kuat Arus", style: TextStyle(fontSize: 30))),
              )
            ],
          ),
      ),
    );
  }
}