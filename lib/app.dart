

import 'package:flutter/material.dart';

import 'package:flutter_application_1/module_8/class_1_input_output.dart';
import 'package:flutter_application_1/module_8/class_2.dart';
import 'package:flutter_application_1/module_8/class_3.dart';
import 'package:flutter_application_1/module_8/class_3_greed_v.dart';
import 'package:flutter_application_1/module_9/them_test.dart';

class MyApp extends StatelessWidget{
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(

       debugShowCheckedModeBanner: false,
       theme: ThemeData(
        primaryColor: Colors.deepOrange,
        primarySwatch: Colors.teal,
        brightness: Brightness.dark,
        //scaffoldBackgroundColor: Colors.grey.shade500 ,
        elevatedButtonTheme: ElevatedButtonThemeData(
        style: ElevatedButton.styleFrom(
            
            backgroundColor: Colors.orange,
            foregroundColor: Colors.blue,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(10)
            )

        ),
        ),

        inputDecorationTheme: InputDecorationTheme(
           border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(10),
           ),

            enabledBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(20),
              borderSide: BorderSide(color: Colors.green,width: 2),
            ),
          
         focusedBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(20),
              borderSide: BorderSide(color: Colors.deepOrangeAccent,width: 2),

            ),
            hintStyle: TextStyle(
              color: Colors.grey
            ),

        ),

           textTheme: TextTheme(
                     headlineLarge: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold
                     )
           )

       ),
       darkTheme: ThemeData.dark().copyWith(
        primaryColor: Colors.purple,
        elevatedButtonTheme: ElevatedButtonThemeData(
        style: ElevatedButton.styleFrom(
            
            backgroundColor: Colors.purpleAccent,
            foregroundColor: Colors.white,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(10)
            )

        ),
        ),
       ),

   /*   theme: ThemeData(
        brightness: Brightness.dark
      ),   */

     // darkTheme: ThemeData.dark(),
     themeMode: ThemeMode.system,
      title: 'sunny',
      home:ThemTest(),
      
      //GridV(),
     // GridV(),
     // LoginPage(),
      //Flutterinput(),
      //Buttongrp(),
      
   ///Home() ,


    );
  }
}