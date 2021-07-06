import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:sizer/sizer.dart';

import '../../widgets/build_text.dart';
import '../../widgets/build_sized_box.dart';
import 'todo_list_controller.dart';

class TodoList extends StatelessWidget {
  const TodoList({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final controller = Get.put(TodoListController());
    return Scaffold(
      body: ListView.builder(
        itemCount: 10,
        itemBuilder: (_, int index) {
          if (index == 0) {
            return Padding(
              padding: EdgeInsets.symmetric(horizontal: 5.h, vertical: 4.h),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  BuildText(
                    'My Tasks',
                    fontSize: 24.0,
                    fontWeight: FontWeight.bold,
                  ),
                  const BuildSizedBox(height: 1.0),
                  BuildText(
                    '1 of 10',
                    color: Colors.grey,
                    fontSize: 14.0,
                  ),
                ],
              ),
            );
          }
          return CheckboxListTile(
            title: BuildText('Task Title'),
            subtitle: BuildText('Oct 2, 2019 * High'),
            value: true,
            onChanged: (value) {},
          );
        },
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        child: Icon(Icons.add),
      ),
    );
  }
}
