import 'package:flutter/material.dart';
import 'package:flutter_application_1/home.dart';
import 'package:flutter_application_1/module_8/Dshboard.dart';
import 'package:flutter_application_1/module_8/home_2.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});
  
 //Key? get _formkey => null;     ///added

  @override
  Widget build(BuildContext context) {
    final _formkey=GlobalKey<FormState>();
    TextEditingController phoneController=TextEditingController();
    TextEditingController passwordController=TextEditingController();
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue,
        title: Text('log in'),

        
      ),
      body: Column(
        children: [
        Image.asset('assat/sa.png',
          height: 250,
          width: 250,
        ),
        Text('log in with phone and password'),
        SizedBox(height: 20,),

         Form(
          key: _formkey,

          child: Padding(
            padding: const EdgeInsets.all(8.0),
          child: Column(
            children: [
              Text('phone number'),
              TextFormField(
                controller: phoneController,
                keyboardType:TextInputType.phone,
                decoration: InputDecoration(
                  hintText: 'phone number',
                  border: OutlineInputBorder(
                    borderRadius:BorderRadius.circular(50),
                  ),
                ),

                validator: (value) {
                  if(value==null||value.isEmpty){
                    return 'please enter phone';
                  }else if(value.length!=11){
                    return 'please enter currect number';
                  }
                  else{
                    return null;
                  }
                },
              ),
            

              SizedBox(height: 30,),
                TextFormField(
                  controller: passwordController,
                  obscureText: true,
                decoration: InputDecoration(
                  hintText: 'Password',
                  border: OutlineInputBorder(
                    borderRadius:BorderRadius.circular(50),
                  ),
                ),

                validator: (value){
                  if(value==null||value.isEmpty){
                    return 'please enter password';
                  }else if (value.length<= 6){
                    return 'passord must be at lest 6 charactor';
                  } else{
                    return null;
                  }
                },

              ),

                 SizedBox(height: 20,),

                 SizedBox(
                  width: 300,
                child:  ElevatedButton(onPressed: (){
                      if(_formkey.currentState!.validate()){


                        Navigator.push(
                          context,
                           MaterialPageRoute(
                            builder: (context)=>Home()));

                           /*  Navigator.pushReplacement(
                          context,
                           MaterialPageRoute(
                            builder: (context)=>Home()));   */

                      /*    ScaffoldMessenger.of(context).showSnackBar(
                            SnackBar(content:Text('login success'))
                        );  */
                      }
                }, child: Text('submit'),),
                 ),
                 SizedBox(height: 10,),
               ElevatedButton(onPressed: (){
                Navigator.push(context, MaterialPageRoute(builder: (context)=>Home2()));
               }, child: Text('home-2')) , 
            
           ElevatedButton(onPressed: (){
                Navigator.push(context, MaterialPageRoute(builder: (context)=>Dashboard(phone: phoneController.text,)));
               }, child: Text('Dashboard')) 
           
            ],
           ),
         ),

         ),
        ],
        ),
    );
  }
}