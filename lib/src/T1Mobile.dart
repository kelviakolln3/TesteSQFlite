// ignore_for_file: file_names
import 'package:flutter/material.dart';
import 'package:teste_sqlite/src/AppThemes.dart';
import 'package:teste_sqlite/src/Templates/HomePage.dart';

class T1Mobile extends StatefulWidget {
  const T1Mobile({Key? key}) : super(key: key);

  @override
  State<T1Mobile> createState() => _T1MobileState();
}

class _T1MobileState extends State<T1Mobile> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'T1Mobile',
      theme: AppThemes.lightTheme,
      debugShowCheckedModeBanner: false,
      home: const HomePage(),
    );
  }
}