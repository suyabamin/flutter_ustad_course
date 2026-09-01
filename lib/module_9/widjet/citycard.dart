import 'package:flutter/material.dart';

class CityCard extends StatelessWidget {
  final String img,title,retting; 
  const CityCard({
    super.key,required this.img,required this.title,required this.retting
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsetsGeometry.all(8.0),
    child:Stack(
     children: [
       Container(
         height: 350,
         width: 300,
         decoration: BoxDecoration(
           borderRadius: BorderRadius.circular(12),
           image: DecorationImage(
             image: NetworkImage(
              img)
           )
         ),
       ),
       Container(
    alignment: Alignment.bottomCenter,
           padding: EdgeInsets.all(8),
            decoration:BoxDecoration(
     borderRadius: BorderRadius.circular(12),
         gradient: LinearGradient(
           begin: Alignment.topCenter,
           end: Alignment.bottomCenter,
           colors: [Colors.transparent, Colors.black54],
         )
            ),
           ),
            Positioned( 
     bottom: 20,
     left: 50,
     right: 10,
            child:  Row(
     mainAxisAlignment: MainAxisAlignment.spaceBetween,
       children: [
         Text(title),
    
       Text(retting,
       style: TextStyle(
         color: Colors.white
       ),
       )
    
    
       /*  ElevatedButton(
           style: ElevatedButton.styleFrom(
              backgroundColor: Colors.blueAccent,
              foregroundColor:Colors.orange,
             shape: RoundedRectangleBorder(
               borderRadius: BorderRadiusDirectional.circular(10)
             ),
             padding: EdgeInsets.all(10)
           ),
           onPressed: (){}, child: Text('5.0'))   */
       ],
     )
            )
     ],
    )
    );
  }
}