import 'package:firebase_app/screens/match_list_screen.dart';
import 'package:flutter/material.dart';

class LiveScoreApp extends StatelessWidget {
  const LiveScoreApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: MatchListScreen(),
    );
  }
}
