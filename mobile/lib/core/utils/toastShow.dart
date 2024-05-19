import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';

void toastShow(BuildContext context) {
    FToast fToast = FToast();
    fToast.init(context);
    fToast.showToast(
        toastDuration: Duration(milliseconds: 1000),
        child: Container(
            padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
            decoration: BoxDecoration(
                color: Colors.grey.shade800,
                borderRadius: BorderRadius.circular(30)),
            child: Text(
              "В разработке",
              style: TextStyle(color: Colors.white),
            )));
  }