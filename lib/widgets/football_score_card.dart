import 'package:firebase_app/entities/football.dart';
import 'package:flutter/material.dart';

class FootballScoreCard extends StatelessWidget {
  const FootballScoreCard({
    super.key, required this.football,
  });
  final Football football;

  @override
  Widget build(BuildContext context) {
    return  Card(
      elevation: 3,
      margin: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Column(
              children: [
                Text(football.team1Score.toString(),style: const TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.w600,
                ),),
                Text(football.team1Name,style: const TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.w400,
                ),),
              ],
            ),
            const Text('vs'),

            Column(
              children: [
                Text(football.team2Score,style: const TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.w600,
                ),),
                Text(football.team2Name,style: const TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.w400,
                ),),
              ],
            ),
          ],
        ),
      ),
    );
  }
}