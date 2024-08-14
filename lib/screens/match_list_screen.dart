import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_app/entities/football.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../widgets/football_score_card.dart';

class MatchListScreen extends StatefulWidget {
  const MatchListScreen({super.key});

  @override
  State<MatchListScreen> createState() => _MatchListScreenState();
}

class _MatchListScreenState extends State<MatchListScreen> {
  FirebaseFirestore firebaseFirestore = FirebaseFirestore.instance;
  List<Football> matchList = [];

  Future<void> _getFootballMatchs() async{
    matchList.clear();
    final QuerySnapshot result = await firebaseFirestore.collection("football").get();
    for(QueryDocumentSnapshot doc in result.docs){
      matchList.add(Football(matchName: doc.id,
          team1Name: doc.get('team1name'),
          team2Name: doc.get('team2name'),
          team1Score: doc.get('team1'),
          team2Score: doc.get('team2')));
    }
    setState(() {

    });

  }

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _getFootballMatchs();
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar:AppBar(
        title: const Text('Football'),
        backgroundColor: Colors.blue,
        foregroundColor: Colors.white,
      ),
      body: ListView.builder(
        itemCount: matchList.length,
          itemBuilder: (context,index){
          return  FootballScoreCard(football: matchList[index],);
          }
      ),
    );
  }
}


/* Card(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Column(
              children: [
                const Text('0',style: TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.w600,
                ),),
                const Text('Team Name',style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.w400,
                ),),
              ],
            ),

            Column(
              children: [
                const Text('0',style: TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.w600,
                ),),
                const Text('Team Name',style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.w400,
                ),),
              ],
            ),
          ],
        ),
      ),*/