import 'package:flutter/material.dart';

class Buttongrp extends StatelessWidget {
  const Buttongrp({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(

    appBar: AppBar(
      title: Text('button grp'),
      backgroundColor: const Color.fromARGB(255, 39, 23, 112),
    ),


      body:Center(
      
       child:Column(
        children: [
        ElevatedButton(
          style: ElevatedButton.styleFrom(
            backgroundColor: Colors.green,
            foregroundColor: Colors.black,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(100)
            )
          ),
          onPressed: (){},
           child: Text('submit')),

            SizedBox(height: 50,),

           SizedBox (
            height: 50,
            width: 200,      // width: double.infinity,
          child:  ElevatedButton(
          style: ElevatedButton.styleFrom(
            backgroundColor: Colors.green,
            foregroundColor: Colors.black,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(100)
            )
          ),
          onPressed: (){},
           child: Text('submit')),
       ),

            SizedBox(
              height: 50,
            ),

              SizedBox(
                height: 50,
                width: 200,
         child: OutlinedButton(onPressed: (){}, child:Text('outline'))
              ),
       
               TextButton(onPressed: (){
                print('red more');
               }, child: Text('rad more,,,,,,,,,,')),
       
        Icon(Icons.phone_android,size: 50,color: Colors.red,),

         SizedBox(
              height: 50,
            ),
        
      IconButton(onPressed: (){}, icon:Icon(Icons.delete,color: Colors.red,size:50)),
           
           GestureDetector(
            onDoubleTap: (){            // onLongPress
              print('long press');
            },
          child:  Text('thes is text'),),
        
           InkWell(
            onDoubleTap: (){
              print('hello world');
            },
         child:   Text('text2',
           style: TextStyle(
            fontSize: 50,
           ),
           ),  

       )      
        
        ],
      ),

      ),
      floatingActionButton:FloatingActionButton(
        backgroundColor: Colors.redAccent,
        foregroundColor: Colors.black,
        onPressed: (){
          print('click on add');
        },
        child: Icon(Icons.add),
        ) ,
    );
  }
}