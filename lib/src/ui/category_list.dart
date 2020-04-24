import 'package:flutter/material.dart';

class CategoryList extends StatefulWidget {
  final List<dynamic> categoryLists;

  const CategoryList(this.categoryLists);

  @override
  _CategoryListState createState() => _CategoryListState();
}

class _CategoryListState extends State<CategoryList> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: GridView.builder(
        itemCount: widget.categoryLists.length,
        gridDelegate:
            SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2),
        itemBuilder: (BuildContext context, int index) {
          return Padding(
            padding: const EdgeInsets.all(10.0),
            child: Card(
              elevation: 2,
              child: ClipPath(
                child: Container(
                  height: 100,
                  decoration: BoxDecoration(
                    border: Border(
                      left: BorderSide(
                        color: Color(0xff5491f5),
                        width: 3
                      )
                    )
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(15.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Text(
                          widget.categoryLists[index],
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 18,
                            color: Color(0xff333333)
                          )
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Text(
                          "7 Tasks",
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 13,
                            color: Color(0xff999999)
                          )
                        ),
                      ],
                    )
                  )
                ),
                clipper: ShapeBorderClipper(
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(3)
                  )
                ),
              ),
            )
          );
        },
      )
    );
  }
}
