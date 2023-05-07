import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main(List<String> args) {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: HomePage(),
      debugShowCheckedModeBanner: false,
    );
  }
}

class HomePage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _HomePageState();
  }
}

class _HomePageState extends State<HomePage> {
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('My App Bar'),
        actions: [IconButton(onPressed: () {}, icon: Icon(Icons.refresh))],
      ),
      body: ListView.builder(itemBuilder: (context,i){return Text('Item'+'${i+1}',style: TextStyle(fontSize: 20),);},itemCount: 10,),
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: Colors.blue,
        selectedItemColor: Colors.white,
        unselectedItemColor: Colors.white,
        items: [
          BottomNavigationBarItem(label: "List View ", icon: Icon(Icons.list)),
          BottomNavigationBarItem(
              label: "Grid View", icon: Icon(Icons.grid_3x3)),
          //BottomNavigationBarItem(label: "Tab Bar", icon: Icon(Icons.tab)),
          BottomNavigationBarItem(label: "Page View", icon: Icon(Icons.pages)),
        ],
      ),
    );
  }
}
