import 'package:examen_provider/src/providers/princes_info.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class SuperText extends StatelessWidget {
  const SuperText({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    //final princesInfo = Provider.of<PrincesInfo>(context);
    return Column(
      //centramos los textos
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
      Consumer<PrincesInfo>(
        builder: (context, princesInfo, _ )=>
         Text(princesInfo.prince, style: TextStyle(color: princesInfo.colorBase)),
         ) 
      ],
    );
  }
}