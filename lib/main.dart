import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:sizer/sizer.dart';

import 'screens/todo_list/todo_list.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Sizer(
      builder: (context, orientation, deviceType) {
        return GetMaterialApp(
          debugShowCheckedModeBanner: false,
          title: 'Flutter Todo List',
          theme: ThemeData(
            primarySwatch: Colors.red,
            accentColor: Colors.red,
            // colorScheme: ColorScheme.dark().copyWith(
            //   primary: Colors.red,
            // ),
          ),
          home: TodoList(),
        );
      },
    );
  }
}
