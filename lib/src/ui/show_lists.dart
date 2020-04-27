import 'package:flutter/material.dart';
import 'package:stodo/src/ui/category_list.dart';

class TaskCategoryList extends StatefulWidget {
  @override
  _TaskCategoryListState createState() => _TaskCategoryListState();
}

class _TaskCategoryListState extends State<TaskCategoryList> {
  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Container(
        child: DefaultTabController(
          length: 4,
          child: Scaffold(
            backgroundColor: Colors.white,
            appBar: TabBar(
              indicatorColor: Color(0xff5491f5),
              isScrollable: true,
              tabs: [
                Tab(
                  child: Text("PERSONAL"),
                ),
                Tab(
                  child: Text("WORK"),
                ),
                Tab(
                  child: Text("DAILY"),
                ),
                Tab(
                  child: Icon(Icons.add),
                ),
              ],
            ),
            body: TabBarView(
              children: [
                CategoryList(),
                Icon(Icons.directions_transit),
                Icon(Icons.directions_bike),
                Icon(Icons.directions_bike),
              ],
            ),
          ),
        )
      ),
    );
  }
}
