import 'package:flutter/material.dart';
import 'package:flutter_application_1/module_9/widjet/citycard.dart';

class OwnWiget extends StatelessWidget {
  const OwnWiget({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              CityCard(img: 'https://scontent.fdac189-1.fna.fbcdn.net/v/t39.30808-6/447301057_924759319423964_5189035049919055173_n.jpg?stp=dst-jpg_tt6&cstp=mx867x854&ctp=s867x854&_nc_cat=101&ccb=1-7&_nc_sid=6ee11a&_nc_eui2=AeEMYQy2JumxORXqWx9Qj980UW20ms-r2ghRbbSaz6vaCIWrwWVJbxy4wdYTNBu3PzuTmocWkyLzqBEZSOXgDg8g&_nc_ohc=xNCDB51mQBQQ7kNvwGqV5Rq&_nc_oc=AdpfZMY83PDyWOban6YDnMzUUdl-tQ1l02SM3uugagP8n-ADdQb7PlnPmRXQwibgtc0&_nc_zt=23&_nc_ht=scontent.fdac189-1.fna&_nc_gid=Y1FANKcUsDnb3RUNvN7psw&_nc_ss=7b2a8&oh=00_AQIQLkfS-qJp7uOgyhy2SDQ-0cIA0PHLNxAh0Pdr0wYxmw&oe=6A9CB88B',title: 'sunny',retting:'5.*'),
              CityCard(img: 'https://scontent.fdac189-1.fna.fbcdn.net/v/t39.30808-6/470137334_1049969566902938_5254309413211581147_n.jpg?stp=dst-jpg_tt6&cstp=mx1352x640&ctp=s1352x640&_nc_cat=105&ccb=1-7&_nc_sid=cc71e4&_nc_eui2=AeGS_FqSHY47ViludUjWXFp82dmPjKMUvXjZ2Y-MoxS9eLpIa5bd3PNH9dn8X8Wi1eJxjOdxKTWm4WGmbuQ5d8CZ&_nc_ohc=VkDqeKnUOXsQ7kNvwG-IbEr&_nc_oc=AdrYAIUK0afw98pN_hw_X5VRVhx-ViGgTk2hArFe1A9QtZlhLVoAAVFz_qND-1HVDs4&_nc_zt=23&_nc_ht=scontent.fdac189-1.fna&_nc_gid=WXrRLvVllAo-SZT72S_F-Q&_nc_ss=7b2a8&oh=00_AQJ-r2YI3zA5ON-qGMHizo5Eh10C7Q5cbD09rCSZ5hnyig&oe=6A9CD270',title: 'su',retting:'5.*'),
              CityCard(img: 'https://scontent.fdac189-1.fna.fbcdn.net/v/t39.30808-6/447301057_924759319423964_5189035049919055173_n.jpg?stp=dst-jpg_tt6&cstp=mx867x854&ctp=s867x854&_nc_cat=101&ccb=1-7&_nc_sid=6ee11a&_nc_eui2=AeEMYQy2JumxORXqWx9Qj980UW20ms-r2ghRbbSaz6vaCIWrwWVJbxy4wdYTNBu3PzuTmocWkyLzqBEZSOXgDg8g&_nc_ohc=xNCDB51mQBQQ7kNvwGqV5Rq&_nc_oc=AdpfZMY83PDyWOban6YDnMzUUdl-tQ1l02SM3uugagP8n-ADdQb7PlnPmRXQwibgtc0&_nc_zt=23&_nc_ht=scontent.fdac189-1.fna&_nc_gid=Y1FANKcUsDnb3RUNvN7psw&_nc_ss=7b2a8&oh=00_AQIQLkfS-qJp7uOgyhy2SDQ-0cIA0PHLNxAh0Pdr0wYxmw&oe=6A9CB88B',title: 'sunny',retting:'5.*'),
            ],
          ),
        ),
      ),
    );
  }
}