import 'package:flutter/material.dart';
void main()  {
  runApp(
    MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Scraffold Appbar'),
        ),
        backgroundColor: Colors.lightBlue,
        body:Center(child:
          Text('Scaffold Widget Example'),
          ),
        floatingActionButton: FloatingActionButton(
          child: Text('T'),
          onPressed: () {},
        ),
        drawer: Drawer(
          child: Text('Drawer'),
        ),
        bottomNavigationBar: BottomNavigationBar(
          items: [
            BottomNavigationBarItem(
              label: 'Home',
                icon: Icon(Icons.home)),
            BottomNavigationBarItem(
              label: 'AC Unit',
                icon: Icon(Icons.ac_unit),),
          ],
        ),
      ),
    )

  );
}

