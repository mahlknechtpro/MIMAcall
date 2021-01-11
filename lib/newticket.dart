import 'package:flutter/material.dart';

class createticket extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
          preferredSize: Size.fromHeight(50.0),
          child: AppBar(
            title: Image.asset('assets/image/logo.png', fit: BoxFit.fill),

            backgroundColor: Colors.red,// ...
          )
      ),
    );
  }
}
