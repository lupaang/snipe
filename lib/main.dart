import 'package:flutter/material.dart';
import 'package:english_words/english_words.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Name Generator',
      home: Scaffold(
        appBar: AppBar(
          title: Text('layout demo')
        ),
        body: Column(
          children: [
            titleSection,
            buttonSection,
          ],
        )
      )
    );
  }
}

Widget titleSection = Container(
  padding: const EdgeInsets.all(32),
  child: Row(
    children: [
      Expanded(child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            padding: const EdgeInsets.only(bottom: 8),
            child: Text(
              'Some Person',
              style: TextStyle(
                fontWeight: FontWeight.normal
              ),
            )
          ),
          Text(
            'Person Description',
            style: TextStyle(
              color: Colors.amber
            )
          )
        ],
      )),
      Icon(
        Icons.star,
        color: Colors.red[500],
      ),
      Text('41'),
    ],
  )
);

Column _buildButtonColumn(Color color, IconData icon, String label) {
  return Column(
    mainAxisSize: MainAxisSize.min,
    mainAxisAlignment: MainAxisAlignment.center,
    children: [
      Icon(icon, color: color),
      Container(
        margin: const EdgeInsets.only(top: 8),
        child: Text(
          label,
          style: TextStyle(
            fontSize: 12,
            fontWeight: FontWeight.w400,
            color: color
          ),
        ),
      )
    ],
  );
}

Color color = Colors.blueGrey;

Widget buttonSection = Container(
  child: Row(
    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
    children: [
      _buildButtonColumn(color, Icons.call, "Call"),
      _buildButtonColumn(color, Icons.near_me, "Route"),
      _buildButtonColumn(color, Icons.share, "Share")
    ],
  )
);

