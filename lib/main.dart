import 'package:flutter/material.dart';

void main() => runApp(MaterialApp(home: ChoiceView()));

class ChoiceView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: PreferredSize(
            preferredSize: Size.fromHeight(50.0),
            child: AppBar(
              //title: Image.asset('assets/image/logo.png', fit: BoxFit.fill),

              backgroundColor: Colors.red,// ...
            )
        ),

        drawer: Drawer(
          child: ListView(
            padding: EdgeInsets.zero,
            children: const <Widget>[
              DrawerHeader(
                decoration: BoxDecoration(
                  color: Colors.redAccent,
                ),
                child: Text(
                  'Systec Mima SRL',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 24,
                  ),
                ),
              ),
              ListTile(
                leading: Icon(Icons.attachment),
                title: Text('Documentation'),
              ),
              ListTile(
                leading: Icon(Icons.account_circle),
                title: Text('Profile'),
              ),
              ListTile(
                leading: Icon(Icons.settings),
                title: Text('Settings'),
              ),
            ],
          ),
        ),
        body: Center(
            child: new Container (
              padding: const EdgeInsets.all(30.0),
              color: Colors.white,
              child: new Container(
                  child: new Center(
                    child: new Column(
                        children : [
                          new Padding(padding: EdgeInsets.only(top: 140.0)),
                          new Padding(padding: EdgeInsets.only(top: 50.0)),

                          new FlatButton(
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
                              "New Ticket",
                              style: TextStyle(fontSize: 20.0),
                            ),
                          ),
                          new FlatButton(
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
                              "Send Tickets",
                              style: TextStyle(fontSize: 20.0),
                            ),
                          )
                        ]
                    ),
                  )
              ),
            )
        )
    );
  }
}