import 'package:e7twa2/allChats/view.dart';
import 'package:e7twa2/reportsPerceptions/view.dart';
import 'package:flutter/material.dart';

import 'fiendDoctor/view.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: FiendDoctor(),
    );
  }
}