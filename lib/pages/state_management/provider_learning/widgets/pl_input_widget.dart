import 'package:flutter/material.dart';

class PlInputWidget extends StatelessWidget {
  const PlInputWidget(
      {Key? key, required this.labelText, required this.onSaved})
      : super(key: key);

  final String labelText;
  final void Function(String?)? onSaved;

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      decoration: InputDecoration(
          fillColor: Colors.white,
          filled: true,
          labelText: labelText,
          border: OutlineInputBorder(borderRadius: BorderRadius.circular(8)),
          floatingLabelBehavior: FloatingLabelBehavior.never),
      initialValue: '',
      validator: (value) {
        if (value != null && value.isEmpty) {
          return '$labelText is required';
        }
        return null;
      },
      onSaved: onSaved,
    );
  }
}
