import 'package:flutter/material.dart';

InputDecoration buildInputDecoration(IconData picons, String hinttext) {
  return InputDecoration(
    hintText: hinttext,
    prefixIcon: Icon(
      picons,
      color: Colors.black,
    ),
    focusedBorder: OutlineInputBorder(
      borderRadius: BorderRadius.circular(15.0),
      borderSide: const BorderSide(color: Colors.black, width: 1.5),
    ),
    border: OutlineInputBorder(
      borderRadius: BorderRadius.circular(15.0),
      borderSide: const BorderSide(
        color: Colors.transparent,
        width: 1.5,
      ),
    ),
    enabledBorder: OutlineInputBorder(
      borderRadius: BorderRadius.circular(15.0),
      borderSide: const BorderSide(
        color: Colors.transparent,
        width: 1.5,
      ),
    ),
  );
}
