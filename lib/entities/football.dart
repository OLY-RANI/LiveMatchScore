class Football {
  final String matchName;
  final String team1Name;
  final String team2Name;
  final String team1Score;
  final String team2Score;

  Football({
    required this.matchName,
    required this.team1Name,
    required this.team2Name,
    required this.team1Score,
    required this.team2Score,
  });
}




/*
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
            _buildTeam(football.team1Name,football.team1Score as int),
            const Text('vs'),

        _buildTeam(football.team2Name,football.team2Score as int),
          ],
        ),
      ),
    );
  }

  Widget _buildTeam(String teamName, int score) {
    return Column(
            children: [
              Text(score.toString(),style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.w600,
              ),),
              Text(teamName,style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.w400,
              ),),
            ],
          );
  }
}
*/