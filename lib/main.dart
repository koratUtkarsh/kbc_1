import 'package:flutter/material.dart';
import 'package:kbc_1/KBC.dart';
import 'package:kbc_1/KBC_1.dart';
import 'package:kbc_1/KBC_2.dart';

void main()
{
  runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      routes: {
        '/':(context)=>Homescreen(),
        'ver':(context)=>loose(),
        'loose':(context)=>loose(),
        'won':(context)=>Wan(),
      },
    ),
  );
}



