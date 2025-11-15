import 'package:flutter/material.dart';
import 'package:to_do_app/create_to_do.dart';
import 'package:to_do_app/list.dart';

class RootPage extends StatefulWidget {
  const RootPage({super.key});

  @override
  State<RootPage> createState() => _RootPageState();
}

class _RootPageState extends State<RootPage> {


  List<String> todoList = [];
  TextEditingController todoController = TextEditingController();
  int updateIndex = -1; 

  void addItem(String task) {
    setState(() {
          todoList.add(task);
          todoController.clear();
    });
  }

  void updateItem(String updatedText, int index) {
    setState(() {
          todoList[index] = updatedText;

          // Reset update index
          updateIndex = -1; 
          todoController.clear();
    });
  }

  void deleteItem(int index) {
      setState(() {
          updateIndex = -1; 
          todoList.removeAt(index);
      });
  }



  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(
          child: Text('To-Doie Test App')
        ),
      ),


      body: Column(
        children: [
          Expanded(
            child: ToDoList(
              items: todoList,
              onDelete: deleteItem,
              onEdit: (index) {
                todoController.text = todoList[index];
                updateIndex = index;
                setState(() {});
              },
            )
          ),
          // Spacer(),
          Material(
            color: Colors.white,
            child: CreateToDo(
              controller: todoController, 
              updateIndex: updateIndex, 
              onAdd: addItem, 
              onUpdate: updateItem
            ),
          )
        ],
      ),

    );
  }
}