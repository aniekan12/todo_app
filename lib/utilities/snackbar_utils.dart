import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../main.dart';

void showSnackBar({@required String? text, Color? color}) {
  scaffoldKey.currentState!.showSnackBar(
    SnackBar(
      content: Text(text!),
      backgroundColor: color ?? Colors.black,
      duration: Duration(seconds: 3),
      behavior: SnackBarBehavior.floating,
    ),
  );
}

showErrorSnackBar({@required String? text}) {
  showSnackBar(text: text, color: Colors.redAccent);
}
