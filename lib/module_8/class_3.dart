import 'package:flutter/material.dart';

class container extends StatelessWidget {
  const container({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
       appBar: AppBar(
        title: Text('container'),
        backgroundColor: Colors.blue,

       ),

       body:Center( 
         child:Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          SizedBox(
            height: 20,
          ),
          Container(
            width: 150,
            height: 150,
           
            decoration: BoxDecoration(
              // color: Colors.teal,
              gradient: LinearGradient(
                
                colors: [Colors.red,Colors.red],
                begin: Alignment.center,
                end: Alignment.bottomRight,
                ),
               borderRadius: BorderRadius.circular(10),
               boxShadow: [
                BoxShadow(
                  color: Colors.black,
                  blurRadius: 8,
                  offset: Offset(5, 10)
                ),
               
          /*     BoxShadow(
                  color: Colors.red,
                  blurRadius: 8,
                  offset: Offset(5, 0)
                )   */
               
               
               
               ],
            ),
          
              child:Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Icon(Icons.phone,size: 50,color:Colors.white,),
                  Text('phone',
                  style: TextStyle(
                    fontSize: 25,
                    color:Colors.white,
                  ),
                  ),
                ],
              ),
          ),
        ],
       )
       )
    );
  }
}