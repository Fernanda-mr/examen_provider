import 'package:flutter/material.dart';

//para usar el provider y notificar a los widgets del cambio 
//aggregamos with changenotifier para notificar el cambio 
class PrincesInfo with ChangeNotifier{
//al ingresar el guion bajo es porque sera privado
  String _prince = 'Aurora';
Color colorBase = Colors.purple;

   get prince {
    return _prince;
  }

  set prince(String nombre){
    this._prince=nombre;
    this.colorBase = (nombre=='Cenicienta') ? Colors.indigo: Colors.purple;

    //notificara a todos los usuarios el cambio
    notifyListeners();
  }
}
