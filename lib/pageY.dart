import 'package:flutter/material.dart';
import 'package:flutter_navigator_pages/main.dart';
import 'package:flutter_navigator_pages/pageX.dart';

class PageY extends StatefulWidget {
  const PageY({super.key});

  @override
  State<PageY> createState() => _PageYState();
}

class _PageYState extends State<PageY> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Page Y'),),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
                ElevatedButton(
                  onPressed: () => Navigator.pop(context),
                  child: Text('Back Page'),),
      
                ElevatedButton(onPressed: () => Navigator.of(context).popUntil((route) => route.isFirst), 
                child: Text('Back to HomePage Like a First Start')),

                ElevatedButton(
                  onPressed: () => Navigator.push(context, MaterialPageRoute(builder: (context)=> MyHomePage())),
                  child: Text('Back to HomePage Like a New Page')),
        
          ],
        ),
      ),
    );
  }
}