import 'package:flutter/material.dart';
import 'package:flutter_application_1/module11/class_2.dart';
import 'package:flutter_application_1/module11/class_3.dart';
import 'package:flutter_application_1/module11/todo.dart';
import 'package:flutter_application_1/module12/class_1__.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_application_1/home.dart';
import 'package:flutter_application_1/module11/res.dart';
import 'package:flutter_application_1/module_7/class_2_button.dart';
import 'package:flutter_application_1/module_8/Dshboard.dart';
import 'package:flutter_application_1/module_8/class_1_input_output.dart';
import 'package:flutter_application_1/module_8/class_2.dart';
import 'package:flutter_application_1/module_8/class_3.dart';
import 'package:flutter_application_1/module_8/class_3_greed_v.dart';
import 'package:flutter_application_1/module_9/class2list.dart';
import 'package:flutter_application_1/module_9/class_2_stack.dart';
import 'package:flutter_application_1/module_9/class_3.dart';
import 'package:flutter_application_1/module_9/them_test.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(360, 690),
      minTextAdapt: true,
      splitScreenMode: true,

      builder: (_, child) {
        return MaterialApp(
          debugShowCheckedModeBanner: false,

          // Theme
          theme: ThemeData(
            primaryColor: Colors.deepOrange,
            primarySwatch: Colors.teal,
            brightness: Brightness.light,

            elevatedButtonTheme: ElevatedButtonThemeData(
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.orange,
                foregroundColor: Colors.blue,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10),
                ),
              ),
            ),

            inputDecorationTheme: InputDecorationTheme(
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(10),
              ),

              enabledBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(20),
                borderSide: const BorderSide(
                  color: Colors.green,
                  width: 2,
                ),
              ),

              focusedBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(20),
                borderSide: const BorderSide(
                  color: Color.fromARGB(255, 235, 225, 222),
                  width: 2,
                ),
              ),

              hintStyle: const TextStyle(
                color: Colors.grey,
              ),
            ),

            textTheme: const TextTheme(
              headlineLarge: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),

          // Dark Theme
          darkTheme: ThemeData.dark().copyWith(
            primaryColor: const Color.fromARGB(255, 38, 202, 16),

            elevatedButtonTheme: ElevatedButtonThemeData(
              style: ElevatedButton.styleFrom(
                backgroundColor: const Color.fromARGB(255, 241, 135, 14),
                foregroundColor: Colors.white,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10),
                ),
              ),
            ),
          ),

          themeMode: ThemeMode.light,

          title: 'sunny',

         
          initialRoute: 'stclass',

          routes: {
            'home': (context) => Home(),

            'btns': (context) => Buttongrp(),

            'login': (context) => LoginPage(),

            'dashboard': (context) => Dashboard(),

            'Stack': (context) => class2Stack(),

            'OwnWiget': (context) => OwnWiget(),

            'res': (context) => Res(),

            'res_pakg': (context) => ResPKG(),

            'class3': (context) => Class3(),

            'todo': (context) => todo(),

            'stclass': (context) =>stclass(),
          },
        );
      },
    );
  }
}

































































/*import 'package:flutter/material.dart';
import 'package:flutter_application_1/module11/class_2.dart';
import 'package:flutter_application_1/module11/class_3.dart';
import 'package:flutter_application_1/module11/todo.dart';
import 'package:flutter_application_1/module12/class_1__.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_application_1/home.dart';
import 'package:flutter_application_1/module11/res.dart';
import 'package:flutter_application_1/module_7/class_2_button.dart';
import 'package:flutter_application_1/module_8/Dshboard.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_application_1/module_8/class_1_input_output.dart';
import 'package:flutter_application_1/module_8/class_2.dart';
import 'package:flutter_application_1/module_8/class_3.dart';
import 'package:flutter_application_1/module_8/class_3_greed_v.dart';
import 'package:flutter_application_1/module_9/class2list.dart';
import 'package:flutter_application_1/module_9/class_2_stack.dart';
import 'package:flutter_application_1/module_9/class_3.dart';
import 'package:flutter_application_1/module_9/them_test.dart';



class MyApp extends StatelessWidget{
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {

return ScreenUtilInit(
      designSize: const Size(360, 690),
      minTextAdapt: true,
      splitScreenMode: true,
      // Use builder only if you need to use library outside ScreenUtilInit context
      builder: (_ , child) {


    return MaterialApp(

       debugShowCheckedModeBanner: false,
       theme: ThemeData(
        primaryColor: Colors.deepOrange,
        primarySwatch: Colors.teal,
        brightness: Brightness.light,
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
              borderSide: BorderSide(color: const Color.fromARGB(255, 235, 225, 222),width: 2),

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
        primaryColor: const Color.fromARGB(255, 38, 202, 16),
        elevatedButtonTheme: ElevatedButtonThemeData(
        style: ElevatedButton.styleFrom(
            
            backgroundColor: const Color.fromARGB(255, 241, 135, 14),
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
     themeMode: ThemeMode.light,
      title: 'sunny',
      home: const ThemTest(),
       // ThemTest(),
      initialRoute: 'todo',
      //GridV(),
     // GridV(),
      //LoginPage(),
      //Flutterinput(),
      //Buttongrp(),
      
   ///Home() ,
       routes: {
        'home':(context) => Home(),
        'btns': (context)=>Buttongrp(),
        'login':(context) => LoginPage(),
       'dashboard':(context) => Dashboard(),
        'Stack':(context) =>class2Stack(),
        'OwnWiget':(context) => OwnWiget(),
        'res':(context) => Res(),
        'res_pakg':(context) => ResPKG(),
        'class3':(context) => Class3(),
        'todo':(context) => todo(),
        'stclass':(context) =>stclass(),
       },  
       
    );
  
      });
  }
}   */
