import 'package:flutter/material.dart';
import 'package:teste_sqlite/src/Helpers/DatabaseHelper.dart';
import 'src/T1Mobile.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await DatabaseHelper.instance.database;
  runApp(const T1Mobile());
}