import 'package:flutter/material.dart';

class stclass extends StatefulWidget {
  const stclass({super.key});

  @override
  State<stclass> createState() => _stclassState();
}

class _stclassState extends State<stclass> {
  int num = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(num.toString(), style: const TextStyle(fontSize: 80, color: Colors.orange)),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  IconButton(
                    onPressed: () {
                      setState(() {
                        num++;
                      });
                     
                    },
                    icon: const Icon(Icons.add),
                  ),
                  IconButton(
                    onPressed: () {
                      setState(() {
                        num--;
                      });
                      print(num);
                    },
                    icon: const Icon(Icons.minimize_sharp),
                  ),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
