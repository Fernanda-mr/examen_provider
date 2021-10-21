import 'package:examen_provider/src/pages/widgets/super_floatingaction.dart';
import 'package:examen_provider/src/pages/widgets/super_text.dart';
import 'package:examen_provider/src/providers/princes_info.dart';
import 'package:provider/provider.dart';
import 'package:flutter/material.dart';


class HomePage extends StatelessWidget {
  //const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {

    final princesInfo = Provider.of<PrincesInfo>(context);
    return Scaffold(
      appBar: AppBar(
        title: Text( princesInfo.prince),
      ),
      //centramos los textos 
      body: Center(
        child: SuperText()
      ), 
      floatingActionButton: SuperFloatingAction(),
    );
  }
}