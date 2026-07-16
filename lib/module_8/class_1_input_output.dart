import 'package:flutter/material.dart';

class Flutterinput extends StatelessWidget {
  const Flutterinput({super.key});

  @override
  Widget build(BuildContext context) {
    TextEditingController phoneController=TextEditingController();
     TextEditingController passwordController=TextEditingController();
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.blue,
          title: Text('flutter input'),
        ),


            body:  Padding(
              padding: const EdgeInsets.all(10.0),
            
          child:    Column(
            mainAxisAlignment: MainAxisAlignment.start,
              children: [
             
                   Image.network('https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRTkrUafub0z0VF0ZygpEsVjzVwuPB2Q8n9cLSWdVtOpTh0b2Krt9WVlhw&s=10'),

                   Image.asset('assat/sa.png'),
                        

               Padding (
              //  padding: const EdgeInsets.only(left: 10,right: 10),
              padding: const EdgeInsets.symmetric(horizontal: 10,vertical: 10),
              child:   TextField(
                controller: phoneController,
                  keyboardType: TextInputType.phone,  // user controll
                  maxLength: 11,  
                  cursorColor: Colors.deepOrange,                       // user controll
                  decoration:InputDecoration(
                    prefixIcon: Icon(Icons.phone),
                    suffixIcon: Icon(Icons.check_box_outline_blank),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(50),
                     // borderSide: BorderSide(color: Colors.grey),
                      
                    ),
                    enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10),
                      borderSide:BorderSide(color: Colors.grey) 
                    ),
                      filled: true,
                      contentPadding: EdgeInsets.all(20),
                     // fillColor: Colors.grey.shade100,

                    focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10),
                      borderSide: BorderSide(color: Colors.orange)
                    ),
                    hintText: 'enter your phone number',
                    hintStyle: TextStyle(
                      fontSize: 18,
                      color: Colors.greenAccent
                    ),
                    helperText: '017,,,,,,,,,,,,,',
                    helperStyle: TextStyle(
                      color: Colors.redAccent
                    ),
                    labelText: 'phone number',
                    labelStyle: TextStyle(
                      color: Colors.orange,
                      fontSize: 20
                    )
                  ) ,
                ),
                ),
                 


SizedBox(height: 25),

                    TextField(
                      controller: passwordController,
                      obscureText: true,
                  decoration:InputDecoration(
                    prefixIcon: Icon(Icons.lock),
                   suffixIcon: Icon(Icons.remove_red_eye),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(50),
                     // borderSide: BorderSide(color: Colors.grey),
                      
                    ),
                    enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10),
                      borderSide:BorderSide(color: Colors.grey) 
                    ),


                    focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10),
                      borderSide: BorderSide(color: Colors.orange)
                    ),
                    hintText: 'eneter password',
                    hintStyle: TextStyle(
                      fontSize: 18,
                      color: Colors.greenAccent
                    ),
                    
                    labelText: 'password',
                    labelStyle: TextStyle(
                      color: Colors.orange,
                      fontSize: 20
                    )
                  ) ,
                ),
            
            SizedBox(
              width:double.infinity,
         child:    ElevatedButton(onPressed: (){
          print(
            phoneController.text
          );
          print(
            passwordController.text
          );

          if(passwordController.text.length<6){
            print('password must be minimum 11');
          }
         /* phoneController.clear();
          passwordController.clear();  */
         }, child: Text('sunmit')),
            ),
              ],
            ),
            ),
    );
  }
}