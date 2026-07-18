import 'package:flutter/material.dart';

class Home2 extends StatelessWidget {
  const Home2({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child:Column(
          mainAxisAlignment: MainAxisAlignment.center,
        children: [ Text('home 2',
        style: TextStyle(
          color: Colors.redAccent,
        ),
        ),
       
       ElevatedButton(onPressed: (){
        Navigator.pop(context);
       }, child: Text('Back')),
       

         
        
        ],
      ),
      
      ),
    );
  }
}