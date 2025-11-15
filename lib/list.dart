import 'package:flutter/material.dart';

// List <String> sportsToDo = ['run','cycle','swim','train','relax'];
class ToDoList extends StatelessWidget {

  final List<String> items;
  final Function(int) onDelete;
  final Function(int) onEdit;

  const ToDoList({
    super.key,
    required this.items,
    required this.onDelete,
    required this.onEdit,
  });


  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      padding: const EdgeInsets.only(bottom: 80),   
      itemCount: items.length,
      itemBuilder: (BuildContext context, int index){
        return Container(
          margin: EdgeInsets.all(5),
          child: ListTile(
            
            title: Text(items[index]),
            tileColor: const Color.fromARGB(255, 138, 135, 135),
            
            
            trailing: Row(
              mainAxisSize: MainAxisSize.min,
              children: [
                GestureDetector(
                  onTap: (){
                    debugPrint('edit icon clicked!!');
                    onEdit(index); 
                  },
                  child: Icon(Icons.edit)
                ),
                SizedBox(width: 10),
                GestureDetector(
                  onTap: (){
                    debugPrint('delete icon clicked!!');
                    onDelete(index);
                  },
                  child: Icon(Icons.delete)
                )
              ],
            ),
          ),
        );
      });
  }
}