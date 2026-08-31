import 'package:flutter/material.dart';

class Flist extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('List view'),
      ),
      body: ListView.builder(
        itemCount:  20,
        itemBuilder: (context, index){
          //return Text('12 x $index=${index*10}');
          return Card(
          child:  ListTile(
            title: Text('sunny'),
            subtitle: Text('01745762524'),
            leading: Icon(Icons.phone),
            trailing: Icon(Icons.delete,color: Colors.red,),
          ),
          );
        },
        ),
    );
  }
}