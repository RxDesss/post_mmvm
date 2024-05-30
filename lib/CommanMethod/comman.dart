import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';

class Comman {

  static errortoast(errormessage){
     return Fluttertoast.showToast(
        msg: errormessage,
        toastLength: Toast.LENGTH_SHORT,
        gravity: ToastGravity.BOTTOM,
        timeInSecForIosWeb: 2,
        backgroundColor: Colors.red,
        textColor: Colors.white,
        fontSize: 16.0,
      );
  }

 static sucesstoast(sucessmessage){
    return  Fluttertoast.showToast(
        msg: sucessmessage,
        toastLength: Toast.LENGTH_SHORT,
        gravity: ToastGravity.BOTTOM,
        timeInSecForIosWeb: 2,
        backgroundColor: Colors.green,
        textColor: Colors.white,
        fontSize: 16.0,
      );
  }

}