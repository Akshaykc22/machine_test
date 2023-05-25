import 'package:flutter/material.dart';

import 'app.dart';
import 'injector.dart' as dl;

void main() async {
  dl.setup();
  runApp(const MyApp());
}
