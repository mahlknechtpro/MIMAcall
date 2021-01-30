import 'package:mailer/mailer.dart';
import 'package:mailer/smtp_server.dart';

// ignore: non_constant_identifier_names
void SendEmail() async {
  String username = 'patmahlknecht95@gmail.com';
  String password = 'pali1995';

  final smtpServer = gmailSaslXoauth2(username, password);
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