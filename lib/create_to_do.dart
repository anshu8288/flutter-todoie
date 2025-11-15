import 'package:flutter/material.dart';

class CreateToDo extends StatelessWidget {

  final TextEditingController controller;
  final int updateIndex;
  final Function(String) onAdd;
  final Function(String, int) onUpdate;

  const CreateToDo({
    super.key,
    required this.controller,
    required this.updateIndex,
    required this.onAdd,
    required this.onUpdate,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Row(
        children: [
          Expanded(
            child: SizedBox(
              height: 45,
              child: TextField(
                  autofocus: false,
                  controller: controller,
                  decoration: InputDecoration(
                    border: OutlineInputBorder(),
                    labelText: 'Creat a to-doie',
                  ),
              ),
            ),
          ),


          SizedBox(
            width: 10,
          ),

      
          GestureDetector(
            child: Container(
              
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(15),
                color: const Color.fromARGB(255, 37, 37, 37),   
              ),

              child: Icon(
                Icons.add,
                color: Colors.white,
                size:45.0,
              ),
            ),
            onTap: (){
              String text = controller.text.trim();
              if (text.isEmpty) return;
              if (updateIndex == -1) {
                onAdd(text);
              } else {
                onUpdate(text, updateIndex);
              }

            },
          )
        ],
      ),
    );
  }
}