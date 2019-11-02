import 'package:flutter/widgets.dart';
import 'package:flutter/material.dart';

class MainPage extends StatefulWidget {
  @override
  _MainPageState createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  var title = '';
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(title: new Text("Hello drawer")),
      body: new Center(
        child: Text(
          this.title, 
          style: new TextStyle(fontSize: 25.0),
        ),
      ),
      drawer: _buildDrawer(context),
    );
  }

  Drawer _buildDrawer(context) {
    return Drawer(
      child: ListView(
        padding: EdgeInsets.zero,
        children: <Widget>[
          DrawerHeader(
            child: Container(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Image.asset(
                    'images/profile.jpg',
                    width: 80.0,
                    height: 80.0,
                    fit: BoxFit.cover,
                  ),
                  Text(
                    'Pham Quang Minh',
                    style: TextStyle(
                        color: Colors.white, fontWeight: FontWeight.bold),
                  ),
                  Text(
                    'Software Developer',
                    style: TextStyle(color: Colors.white),
                  )
                ],
              ),
            ),
            decoration: BoxDecoration(color: Colors.blue),
          ),
          ListTile(
            leading: Icon(Icons.photo_album),
            title: Text('Photos'),
            onTap: (){
              setState(() {
                this.title = 'This is page photos';
              });
              Navigator.pop(context);
            },
          ),
          ListTile(
            leading: Icon(Icons.notifications),
            title: Text('Notifications'),
            onTap: (){
              setState(() {
                this.title = 'This is page notifications';
              });
              Navigator.pop(context);
            },
          ),
          ListTile(
            leading: Icon(Icons.settings),
            title: Text('Settings'),
            onTap: (){
              setState(() {
                this.title = 'This is page settings';
              });
              Navigator.pop(context);
            },
          ),
          Divider(
            color: Colors.black45,
            indent: 16,
          ),
          ListTile(
            title: Text('About us'),
            onTap: (){
              setState(() {
                this.title = 'This is page about us';
              });
              Navigator.pop(context);
            },
          ),
          ListTile(
            title: Text('Privacy'),
            onTap: (){
              setState(() {
                this.title = 'This is page Privacy';
              });
              Navigator.pop(context);
            },
          )
        ],
      ),
    );
  }
}
