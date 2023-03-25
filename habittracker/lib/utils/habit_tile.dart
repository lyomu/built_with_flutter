import 'package:flutter/material.dart';
import 'package:percent_indicator/circular_percent_indicator.dart';

class HabitTile extends StatelessWidget {

  final String habitName;
  final VoidCallback onTap;
  final  VoidCallback settingsTapped;
  final int timeSpent;
  final int timeGoal;
  final  bool habitStarted;

  const HabitTile({Key? key,
    required this.habitName,
    required this.onTap,
    required this.settingsTapped,
    required this.timeGoal,
    required this.timeSpent,
    required this.habitStarted,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left:20.0, right: 20, top: 20),
      child: Container(
        padding: EdgeInsets.all(20),
        decoration: BoxDecoration(
          color: Colors.grey[200],
          borderRadius: BorderRadius.circular(12),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(
              children: [
                GestureDetector(
                  onTap: onTap,
                  child: SizedBox(
                    height: 60,
                    width: 60,
                    child: Stack(
                      children: [
                        //progress circle
                        CircularPercentIndicator(
                          radius: 30,
                          percent: 0.7,
                        ),

                        //Playpause button
                        Center(
                          child: Icon( habitStarted ? Icons.pause : Icons.play_arrow),
                        )
                      ],
                    ),
                  ),
                ),

                const SizedBox(width: 20),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    //habit name
                    Text(
                      habitName,
                      style: const TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 18,
                      ),
                    ),

                    //progress
                    const SizedBox(height: 4),

                    Text(
                      timeSpent.toString() + '/' + timeGoal.toString(),
                      style: TextStyle(
                        color: Colors.grey,
                      ),

                    )
                  ],
                ),
              ],
            ),
            GestureDetector(
                onTap: settingsTapped,
                child: Icon(Icons.settings))
          ],
        ),
      ),
    );
  }
}
