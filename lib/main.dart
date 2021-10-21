import 'package:examen_provider/src/providers/princes_info.dart';
import 'package:flutter/material.dart';
import 'package:examen_provider/src/pages/home_page.dart';
import 'package:provider/provider.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      builder: (context) => PrincesInfo(),
      child: MaterialApp(
        title: 'Material App',
        initialRoute: 'home',
        routes: {
          'home': (context) => HomePage()
        },
      ),
    );
  }
} 