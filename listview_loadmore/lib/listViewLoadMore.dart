import 'package:flutter/material.dart';

class ListViewLoadMore extends StatefulWidget {
  @override
  _ListViewLoadMoreState createState() => _ListViewLoadMoreState();
}

class _ListViewLoadMoreState extends State<ListViewLoadMore> {
  var items = List<String>.generate(20, (i) => 'Item $i');
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('ListView Load More'),
      ),
      body: Container(
        child: ListView.builder(
          itemCount: items.length + 1,
          itemBuilder: (context, index) {
            final widgetItem = (index == items.length)
                ? RaisedButton(
                    child: Text('Load more'),
                    textColor: Colors.white,
                    color: Colors.greenAccent,
                    splashColor: Colors.lightBlue,
                    elevation: 4.0,
                    onPressed: () {
                      var nextItem = List<String>.generate(
                          20, (i) => 'Item ${items.length + i}');
                          setState(() {
                            items.addAll(nextItem);
                          });
                    },
                  )
                : ListTile(
                    title: Text('${items[index]}'),
                  );

            return widgetItem;
          },
        ),
      ),
    );
  }
}
