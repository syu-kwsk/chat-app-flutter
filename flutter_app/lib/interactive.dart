import 'package:flutter/material.dart';

class FormWidget extends StatefulWidget{
  FormWidget({Key key}) : super(key: key);

  @override
  _FormWidgetState createState() => _FormWidgetState();
}

class _FormWidgetState extends State<FormWidget> {
  final _formKey = GlobalKey<FormState>();
  String _mail="";

  @override
  Widget build(BuildContext context) {
    return Form(
      key: _formKey,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          TextFormField(
            decoration: const InputDecoration(
              hintText: 'Enter your E-mail',
            ),
            validator: (value) {
              if (value.isEmpty) {
                return 'Please enter some text';
              } else {
                return null;
              }
            },
            onSaved: (value) {
              print('$value');
              setState(() {
                _mail = value;
              });

            },
          ),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 16.0),
            child: RaisedButton(
              onPressed: () {
                if (_formKey.currentState.validate()) {
                  _formKey.currentState.save();
                } else {
                  print('Error');
                }
              },
              child: Text('Submit'),
            ),
          ),
          Container(
            child: Text(_mail),
          )
        ],
      )
    );
  }
}