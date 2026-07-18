import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

class ThemTest extends StatelessWidget {
  const ThemTest({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor:Colors.blueAccent,
        title: Text('theme'),
        
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text('test text',
             style:  Theme.of(context).textTheme.headlineLarge,
          
          ),
          SizedBox(height: 10,),
          TextField(),

           TextField(

           ),

          ElevatedButton(onPressed: (){}, child: Text('test button'))
        ],
      ) ,
    );
  }
}