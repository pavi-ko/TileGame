import 'package:flutter/material.dart';
import 'package:english_words/english_words.dart';
void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  List<Container> _buildGridTileList(int count) => List.generate(
      count, (i) => Container(
        decoration: BoxDecoration(
          color: Colors.white,
          border: Border.all(width: 2, color: Colors.black12),
          borderRadius: const BorderRadius.all(const Radius.circular(8)),
        ),

        margin: const EdgeInsets.all(3),
        child: Image.asset('assets/images/sm$i.png')));
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter layout demo',
      home: Scaffold(
        backgroundColor: Colors.deepPurpleAccent,
        appBar: AppBar(
          centerTitle: true,
            backgroundColor: Colors.transparent,
            elevation: 0.0,
            leading: Icon(Icons.menu),
            title: Text('Level 1'),
            actions: <Widget>[
            IconButton(
              icon: const Icon(Icons.settings),
              tooltip: 'settings',
              onPressed: () {
              }
            )
          ]
          ),
        body: Center(
          child: _buildGrid(),
        ),
      ),
    );
  }

  Widget _buildGrid() => GridView.extent(
      maxCrossAxisExtent: 90,
      padding: const EdgeInsets.all(100.0),
      mainAxisSpacing: 1,
      crossAxisSpacing: 1,
      children: _buildGridTileList(9));

// The images are saved with names pic0.jpg, pic1.jpg...pic29.jpg.
// The List.generate() constructor allows an easy way to create
// a list when objects have a predictable naming pattern.

}




