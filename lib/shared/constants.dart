import 'package:flutter/material.dart';

const decorationTextField = InputDecoration(
  // To delete borders
  enabledBorder: OutlineInputBorder(
    borderSide: BorderSide.none,
  ),
  focusedBorder: OutlineInputBorder(
    borderSide: BorderSide(color: Colors.grey),
  ),
  //fillColor: Color.fromARGB(255, 48, 48, 48),
  filled: true,
  contentPadding: EdgeInsets.all(8),
);
