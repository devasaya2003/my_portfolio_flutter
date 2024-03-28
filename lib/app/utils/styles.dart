import 'package:flutter/material.dart';

ButtonStyle borderedButtonStyle = ButtonStyle(
  overlayColor: MaterialStateProperty.all(Colors.grey.shade900),
  backgroundColor: MaterialStateProperty.all(Colors.black),
  shape: MaterialStateProperty.all(
    RoundedRectangleBorder(
      borderRadius: BorderRadius.circular(10),
    ),
  ),
);
