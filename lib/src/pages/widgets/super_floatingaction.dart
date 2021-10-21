//encargado de crear los botones en la pagina home_page
import 'package:provider/provider.dart';
import 'package:examen_provider/src/providers/princes_info.dart';
import 'package:flutter/material.dart';

class SuperFloatingAction extends StatelessWidget {
  const SuperFloatingAction({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
     final princesInfo = Provider.of<PrincesInfo>(context);

    return Column(
      //indicamos donde apareceran los botones, parte inferior derecha
      mainAxisAlignment: MainAxisAlignment.end,
      children: <Widget>[
        //creamos dos botones
        FloatingActionButton(child: Icon(Icons.access_alarm ),
        backgroundColor: Colors.cyan,
        onPressed: () => princesInfo.prince = 'Cenicienta',
        ),
        //separamos poquito los botones
        //SizedBox( height: 10,0 ),
        FloatingActionButton(child: Icon(Icons.account_balance),
        backgroundColor: Colors.indigo,
        onPressed: () => princesInfo.prince = 'Aurora',
        )
      ],
    );
  }
}