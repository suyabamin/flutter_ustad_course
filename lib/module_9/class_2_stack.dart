import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_application_1/module_8/class_3.dart';
class class2Stack extends StatelessWidget{
  const class2Stack({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Stack'),
      ),
      body:Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
             
              
       
       
       

          Stack(
          children: [
            Container(
              color: Colors.red,
              height:200,
              width:200,
            ),


            Container(
              color: Colors.green,
              height:150,
              width:180,
            ),
           Positioned(
            bottom: 50,
            left: 10,
            right: 10,
           child: Container(
              color: Colors.purpleAccent,
              height:100,
              width:150,
            )
           )
          ],
          ),
        SizedBox(height: 10,),
        Stack(
         children: [
          CircleAvatar(
            radius: 70,
            backgroundImage: NetworkImage('https://scontent.fdac189-1.fna.fbcdn.net/v/t39.30808-6/447301057_924759319423964_5189035049919055173_n.jpg?stp=dst-jpg_tt6&cstp=mx867x854&ctp=s867x854&_nc_cat=101&ccb=1-7&_nc_sid=6ee11a&_nc_eui2=AeEMYQy2JumxORXqWx9Qj980UW20ms-r2ghRbbSaz6vaCIWrwWVJbxy4wdYTNBu3PzuTmocWkyLzqBEZSOXgDg8g&_nc_ohc=xNCDB51mQBQQ7kNvwGqV5Rq&_nc_oc=AdpfZMY83PDyWOban6YDnMzUUdl-tQ1l02SM3uugagP8n-ADdQb7PlnPmRXQwibgtc0&_nc_zt=23&_nc_ht=scontent.fdac189-1.fna&_nc_gid=TOIyJMpYAoRfoy5MxgwW-g&_nc_ss=7b2a8&oh=00_AQJGILhIkmh9vSvOPMUCVrmGtxVthw1L1IpXuXHbtMENYA&oe=6A9C480B'),
          ),
         
         Positioned(
          bottom:15,
          right: 5,
         child: Container(
            width: 20,
            height: 20,
            decoration: BoxDecoration(
              color: Colors.green,
              shape: BoxShape.circle,
              border: Border.all(color:Colors.white,width: 1 )
            ),
          ),
         ),
         ],
        ),
       
    
       
        ],
      ),
      )
    );
  }
}

