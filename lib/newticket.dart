import 'package:flutter/material.dart';
import 'package:mimacall/main.dart';
import 'package:mimacall/saveticket.dart';

class CreateTicket extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      appBar: PreferredSize(
          preferredSize: Size.fromHeight(50.0),
          child: AppBar(
            title: Image.asset('assets/image/logo.png', fit: BoxFit.fill),

            backgroundColor: Colors.red,// ...
          )
      ),
      body: SingleChildScrollView(
        child: new Container (
          padding: const EdgeInsets.all(30.0),
          color: Colors.white,
          child: new Container(
            child: new Center(
              child: new Column(
              children : [
                new Padding(padding: EdgeInsets.only(top: 0.0)),
                new Padding(padding: EdgeInsets.only(top: 50.0)),

                new TextFormField(
                  decoration: InputDecoration(
                    labelText: 'Nome cliente'
                  ),
                ), //TextFormField Nome cliente

                new TextFormField(
                  decoration: InputDecoration(
                      labelText: 'Numero cliente'
                  ),
                ), //TextFormField Numero cliente

                new TextFormField(
                  decoration: InputDecoration(
                      labelText: 'Matricola'
                  ),
                ), //TextFormField Matricola

                new TextFormField(
                  decoration: InputDecoration(
                      labelText: 'Telefono'
                  ),
                ), //TextFormField Telefono

                new TextField(
                  decoration: InputDecoration(
                    border: InputBorder.none,
                    hintText: 'Problem',
                  ),
                  maxLines: null,
                  keyboardType: TextInputType.multiline,
                ), //TextField Problem

                new RaisedButton(
                  color: Colors.redAccent,
                  textColor: Colors.white,
                  disabledColor: Colors.grey,
                  disabledTextColor: Colors.black,
                  padding: EdgeInsets.all(8.0),
                  splashColor: Colors.blueAccent,
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => ChoiceView()),
                    );
                  },
                  child: Text(
                    "Save",
                    style: TextStyle(fontSize: 20.0),
                  ),
                ), //Button Save
                new RaisedButton(
                  color: Colors.redAccent,
                  textColor: Colors.white,
                  disabledColor: Colors.grey,
                  disabledTextColor: Colors.black,
                  padding: EdgeInsets.all(8.0),
                  splashColor: Colors.blueAccent,
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => CreateTicket()),
                    );
                  },
                  child: Text(
                    "Another ticket",
                    style: TextStyle(fontSize: 20.0),
                  ),
                ), //Button Another ticket


                ],
              ),
            ),
          ),
        ),
      ),
    );


  }
}
