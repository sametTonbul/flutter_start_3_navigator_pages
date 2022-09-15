import 'package:flutter/material.dart';
import 'package:flutter_navigator_pages/pageY.dart';
import 'package:flutter_navigator_pages/main.dart';

class PageX extends StatefulWidget {
  const PageX({super.key});

  @override
  State<PageX> createState() => _PageXState();
}

class _PageXState extends State<PageX> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Page X'),),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            ElevatedButton(
              onPressed: () => Navigator.push(context, MaterialPageRoute (builder: (context)=>PageY())),
              child: Text('Next Page')),
            ElevatedButton(
              onPressed: () => Navigator.pop(context), 
              child: Text('Back Page')),
        
          ],
        ),
      ),
    );
  }
}