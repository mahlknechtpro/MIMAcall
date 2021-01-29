import 'package:flutter/material.dart';
import 'package:mimacall/newticket.dart';

import 'package:mailer/mailer.dart';
import 'package:mailer/smtp_server.dart';

void main() => runApp(MaterialApp(home: ChoiceView()));

void SendEmail() async {
  String username = 'patmahlknecht95@gmail.com';
  String password = 'pali1995';

  final smtpServer = gmail(username, password);
  // Creating the Gmail server

  // Create our email message.
  final message = Message()
    ..from = Address(username)
    ..recipients.add('patmahlknecht95@gmail.com') //recipent email
    ..ccRecipients.addAll(['mahlknechtpro@gmail.com']) //cc Recipents emails
    ..bccRecipients.add(Address('patmahlknecht95@gmail.com')) //bcc Recipents emails
    ..subject = 'Open ticket' //subject of the email
    ..text = 'This is the plain text.\nThis is line 2 of the text part.'; //body of the email

  try {
    final sendReport = await send(message, smtpServer);
    print('Message sent: ' + sendReport.toString()); //print if the email is sent
  } on MailerException catch (e) {
    print('Message not sent. \n'+ e.toString()); //print if the email is not sent
    // e.toString() will show why the email is not sending
  }
}

class ChoiceView extends StatelessWidget {
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
                                MaterialPageRoute(builder: (context) => CreateTicket()),
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
                            onPressed: SendEmail,
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