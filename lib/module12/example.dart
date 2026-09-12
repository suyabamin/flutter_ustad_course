import 'package:flutter/material.dart';

class Example extends StatefulWidget {
  const Example({super.key});

  @override
  State<Example> createState() => _ExampleState();
}

class _ExampleState extends State<Example> {
  bool isPasswordShow=true;
  bool isFav=false;




  toggleFav(){
    setState(() {
      isFav=!isFav;
    });
  }

showPassword(){
  setState(() {
    isPasswordShow=!isPasswordShow;
  });
  
}


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child:Column(
          mainAxisAlignment: MainAxisAlignment.center,
        children: [
          TextField(
            obscureText: isPasswordShow,
            decoration: InputDecoration(
              hintText: 'password',
              suffixIcon: IconButton(onPressed:showPassword, 
              
              icon:Icon(
                isPasswordShow ? Icons.remove_red_eye :
                Icons.visibility_off),
              )
            ),
          ),



        IconButton(onPressed: toggleFav ,icon:Icon(
          color: isFav ? Colors.red : Colors.grey,
          isFav? Icons.favorite:
          Icons.favorite_border,
          size:100,
          //color: Colors.red,

          ))



        ],
      ) 
      
      ),
    );
  }
}