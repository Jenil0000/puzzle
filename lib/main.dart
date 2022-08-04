import 'dart:math';

import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(home: puzzle()));
}

class puzzle extends StatefulWidget {
  const puzzle({Key? key}) : super(key: key);

  @override
  State<puzzle> createState() => _puzzleState();
}

class _puzzleState extends State<puzzle> {
  List<String> a = [];

  @override
  void initState() {
    super.initState();

    List<int> l = [];
    for (int i = 0; i < 9;) {
      int min = 0, max = 9;
      int no = min + Random().nextInt(max - min + 1);
      if (!l.contains(no)) {
        l.add(no);
        i++;
      }
    }
    print(l);

    for (int i = 0; i < 9; i++) {
      if (l[i] == 0)
      {
        a.add("");
      }
      else {
        a.add("${l[i]}");
      }
    }
    print(a);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Puzzle"),
      ),
      body: Column(
        children: [
          ElevatedButton(onPressed: (){
            List<int> l = [];
            for (int i = 0; i < 9;) {
              int min = 0, max = 9;
              int no = min + Random().nextInt(max - min + 1);
              if (!l.contains(no)) {
                l.add(no);
                i++;
              }
            }
            print(l);
a.clear();
            for (int i = 0; i < 9; i++) {
              if (l[i] == 0)
              {
                a.add("");
              }
              else {
                a.add("${l[i]}");
              }
            }
            print(a);

          }, child: Text("Generate")),
        ],
      ),
    );
  }
}
