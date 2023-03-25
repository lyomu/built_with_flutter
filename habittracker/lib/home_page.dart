import 'package:flutter/material.dart';
import 'package:habittracker/utils/habit_tile.dart';


class Homepage extends StatefulWidget {
  const Homepage ({Key? key}) : super(key: key);

  @override
  State<Homepage> createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[300],
      appBar: AppBar(
        backgroundColor: Colors.grey[900],
        title: Text('Consistency Is Key'),
        centerTitle: false,
      ),
      body: Column( children: [
        HabitTile(
          habitName: 'Exercise',
          onTap: (){},
          settingsTapped:  () {},
          timeSpent: 4,
          timeGoal: 12,
          habitStarted: true,
        ),



        ],
      ),
    );
  }
}
