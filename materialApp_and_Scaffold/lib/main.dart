import 'package:flutter/material.dart';

void main () {
  runApp(MyApp(

  ));
}
class MyApp extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return  MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: Text(
            'Scaffold Appbar'
          ),
      ),
        backgroundColor: Colors.lightBlue,
        body: Center(
            child: Text(
          "This is a text Example"
        )
        ),
        floatingActionButton: FloatingActionButton(
          child: Text('T'),
          onPressed: () {},
        ),


        drawer: Drawer(
          child: Text('This is a drawer'),
        ),
        bottomNavigationBar: BottomNavigationBar(
          items: [
            BottomNavigationBarItem(
              label: 'Home',
                icon: Icon(Icons.home),

            ),
            BottomNavigationBarItem(
              label: 'AC Unit',
                icon: Icon(Icons.ac_unit),
            )
          ],
        ),
      ),
    );
  }
}



