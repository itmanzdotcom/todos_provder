import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:todos_provider/providers/todos_model.dart';
import 'package:todos_provider/widgets/task_list.dart';

class CompletedTab extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Consumer<TodosModel>(
        builder: (context, todos, widget) => TaskList(
          tasks: todos.completeTask,
        ),
      ),
    );
  }
}
