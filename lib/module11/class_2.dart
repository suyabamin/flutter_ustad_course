import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_application_1/module_8/class_3.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class ResPKG extends StatelessWidget {
  const ResPKG({super.key});

  @override
  Widget build(BuildContext context) {
    final orientation = MediaQuery.of(context).orientation;

    final content = orientation == Orientation.landscape
        ? Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                width: 200.r,
                height: 100.r,
                color: Colors.blue,
              ),
              Row(
                children: [
                  Container(
                    width: 0.5.sw,
                    height: 200.h,
                    color: Colors.teal,
                    child: Text(
                      'my actual width${0.6.sw} my actual hight:${200.h}',
                    ),
                  ),
                  Container(
                    constraints: BoxConstraints(
                      maxHeight: 250,
                      maxWidth: 200,
                    ).hw,
                    color: Colors.deepOrange,
                    child: const Text('hello'),
                  ),
                ],
              ),
              const SizedBox(height: 20),
              Container(
                height: 150.h,
                width: 200.w,
                color: Colors.green,
              ),
              const SizedBox(height: 20),
              Container(
                height: 200,
                width: 200,
                color: Colors.red,
              ),
              Text(
                'hello test',
                style: TextStyle(
                  fontSize: 25.sp,
                ),
              ),
              const Text('hello test res'),
            ],
          )
        : Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                width: 200.r,
                height: 100.r,
                color: Colors.blue,
              ),
              const SizedBox(height: 20),
              Container(
                height: 150.h,
                width: 200.w,
                color: Colors.green,
              ),
              const SizedBox(height: 20),
              Container(
                height: 200,
                width: 200,
                color: Colors.red,
              ),
              Text(
                'hello test',
                style: TextStyle(
                  fontSize: 25.sp,
                ),
              ),
              const Text('hello test res'),
            ],
          );

    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.green,
      ),
      body: Center(
        child: SingleChildScrollView(
          child: content,
        ),
      ),
    );
  }
}