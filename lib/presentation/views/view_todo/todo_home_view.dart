import 'package:flutter/material.dart';
import 'package:todo_app/presentation/shared/shared.dart';
import 'package:todo_app/utilities/utilities.dart';

class TodoHomeView extends StatefulWidget {
  const TodoHomeView({Key? key}) : super(key: key);

  @override
  _TodoHomeViewState createState() => _TodoHomeViewState();
}

class _TodoHomeViewState extends State<TodoHomeView> {
  @override
  Widget build(BuildContext context) {
    SizeConfig.init(context);
    return AppScaffold(
      title: 'Todo Home',
      child: AppRefreshIndicator(
        onRefresh: () async {},
        child: Container(
          height: SizeConfig.screenHeight,
        ),
      ),
      floatingActionButton: FloatingActionButton(
          onPressed: () {},
          child: Icon(Icons.add, size: 30),
          elevation: 2,
          mini: true,
          shape: BeveledRectangleBorder(borderRadius: BorderRadius.circular(4)),
          backgroundColor: Colors.black),
    );
  }
}
