import 'package:flutter/material.dart';
import 'package:flutter_application_1/module_8/class_3.dart';

class todo extends StatefulWidget {
  const todo({super.key});

  @override
  State<todo> createState() => _todoState();
}

class _todoState extends State<todo> {
  TextEditingController taskcontroller=TextEditingController();
  List<String>tasks=[];


  addTask(){
    final task=taskcontroller.text;
    if(task.isNotEmpty){
      setState(() {
      tasks.add(taskcontroller.text);
      taskcontroller.clear();
    });
    }else{

    }
    
  }


updateTask(String value,int index){


    if(value.isNotEmpty){
      setState(() {
      tasks[index]=value;
    });
    }else{

    }
    
  
}

deleteTask(int index){
  setState(() {
    tasks.removeAt(index);
  });
  
}


editTask(int index){
  final controller=TextEditingController(text: tasks[index]);
  showDialog(context: context, builder: (context)=>AlertDialog(
    title:Text('Edit Task'),
  content:TextField(
    controller: controller,
  ),
  actions: [
    TextButton(onPressed: (){
      Navigator.pop(context);
    }, child: Text('cancel')),
    ElevatedButton(onPressed: (){
     updateTask(controller.text, index);
     Navigator.pop(context);
    }, child: Text('update'))
  ],
  ));
  
}


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('todo app'),
        backgroundColor: Colors.deepPurpleAccent,
      ),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(10.0),
            child: Row(
              children: [
                Expanded(
                  child: TextField(
                    controller: taskcontroller=TextEditingController(),
                    decoration: const InputDecoration(
                      labelText: 'Enter Task',
                    ),
                  ),
                ),
                ElevatedButton(
                  onPressed: addTask,
                  child: const Text(
                    'Add',
                    style: TextStyle(color: Colors.white),
                  ),
                ),
              ],
            ),
          ),
          Expanded(
            child: ListView.builder(
              itemCount: tasks.length,
              itemBuilder: (context, index) {
                return Card(
                  child: ListTile(
                    title: Text(tasks[index]),
                    trailing: Row(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        IconButton(onPressed: () {
                          editTask(index);
                        }, icon: const Icon(Icons.edit)),
                        IconButton(onPressed: (){
                          deleteTask(index);
                        }, icon: const Icon(Icons.delete)),
                      ],
                    ),
                  ),
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}