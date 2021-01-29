import 'package:flutter/material.dart';
import 'package:mimacall/main.dart';


String dropdownValue = 'None';

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
                    labelText: 'Codice cliente'
                  ),
                ), //TextFormField Codice cliente

                new TextFormField(
                  decoration: InputDecoration(
                      labelText: 'Ragione fiscale'
                  ),
                ), //TextFormField Ragione fiscale

                new TextFormField(
                  decoration: InputDecoration(
                      labelText: 'Nome contatto'
                  ),
                ), //TextFormField Nome contatto

                new TextFormField(
                  decoration: InputDecoration(
                      labelText: 'Telefono'
                  ),
                ), //TextFormField Telefono

                new DropdownButton<String>(
                  hint: Text('None'),
                  items: <String>['RistoQuick', 'Caddy', 'CassaInCloud', 'RQ Light'].map((String value) {
                    return new DropdownMenuItem<String>(
                      value: value,
                      child: new Text(value),
                    );
                  }).toList(),
                  onChanged: (dropdownValueSelected) {
                    debugPrint(dropdownValueSelected);
                  },
                ),

                new TextFormField(
                  decoration: InputDecoration(
                      labelText: 'Modello RT'
                  ),
                ),

                new TextFormField(
                  decoration: InputDecoration(
                      labelText: 'Matricola',
                  ),
                  //controller: ,
                ),

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
                    //saveData("ClientNumber: "+ "/n");
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

/*void saveData(String dataToSave) async {
  /*_write(String text) async {
    final Directory directory = await getApplicationDocumentsDirectory();
    final File file = File('${directory.path}/my_file.txt');
    await file.writeAsString(text);
  }*/

  print('Open Database');

}*/
