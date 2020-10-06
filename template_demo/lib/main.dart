import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'My App',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: Scaffold(
        appBar: AppBar(title: Text('My App')),
        body: BodyWidget(),
      ),
    );
  }
}

class BodyWidget extends StatefulWidget {
  @override
  _State createState() => _State();

}

class _State extends State<BodyWidget> {
  String _userName = "UNKNOWN";
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        Text('Welcome ' + _userName),
        TextField(
          decoration: InputDecoration(
            border: OutlineInputBorder(),
            hintText: 'Enter your name'
          ),
          onChanged: (String value) {
            setState(() {
              _userName = value;
            });
            print('Username: ' + _userName);
          },
        ),
        RaisedButton(
          child: Text('Save Username'),
          onPressed: () async {
            print('Saving username: ' + _userName);
          },
        )
      ],
    );
  }
}
