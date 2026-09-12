import 'package:flutter/material.dart';
import 'package:flutter_application_1/module12/example.dart';

class LifeCycle extends StatefulWidget {
  LifeCycle({super.key}){
   print('1 constractor');
  }

  @override
  State<LifeCycle> createState() {
    print('2 create state');
    return _LifeCycleState();
  }
}


class _LifeCycleState extends State<LifeCycle> {
  String name='Demo';
  Color bgColor=Colors.red;
  @override
  void initState() {
    super.initState();
    bgColor=Colors.green;
    name='sunny';
    print('3 init state');
  }

  @override
  void didChangeDependencies() {
    print('4 did change dependecncies');
    super.didChangeDependencies();
    bgColor =Colors.purple;
    name='suyab amin';
  }


  @override
  void deactivate() {
    // TODO: implement deactivate
    print('deactivate');
    super.deactivate();
  }

  @override
  void dispose() {
    // TODO: implement dispose
    print('dispose');
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(

      body:Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          InkWell(
            onTap: (){
              Navigator.push(context, MaterialPageRoute(builder:(context)=>Example()) );
            },
    child: Container(
           height: 200,
           width: 200,
            decoration:  BoxDecoration(
              color: bgColor,
            ),
            child:Center(
              child:  Text('hello this is $name',style: TextStyle(
              fontSize: 30
            ),),
          ),
          )
          )
        ],
      ),
      )
    );
  }
}
