import 'package:flutter/material.dart';

class LocationPickerWidget extends StatefulWidget {
  LocationPickerWidget({Key key}) : super(key: key);

  @override
  _LocationPickerWidgetState createState() => _LocationPickerWidgetState();
}

/// This is the private State class that goes with MyStatefulWidget.
class _LocationPickerWidgetState extends State<LocationPickerWidget> {
  final _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Form(
      key: _formKey,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          TextFormField(
            autofocus: false,
            decoration: const InputDecoration(
              contentPadding: EdgeInsets.fromLTRB(20.0, 10.0, 20.0, 10.0),
              border: OutlineInputBorder(),
              hintText: 'Enter your Location',
              suffixIcon: Icon(Icons.location_pin),
            ),
            onTap: () async {
              // placeholder for our places search later
            },
            onEditingComplete: () {
              // Validate will return true if the form is valid, or false if
              // the form is invalid.
              if (_formKey.currentState.validate()) {
                // Process data.
              }
            },
            validator: (value) {
              if (value.isEmpty) {
                return 'Please enter Location';
              }
              return null;
            },
          ),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 6.0),
          )
        ],
      ),
    );
  }
}
