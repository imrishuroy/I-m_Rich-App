import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'I am Rich',
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  String displayText = 'How To Become Rich ?';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: Colors.redAccent,
        title: Text('I am Rich'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              displayText,
              style: TextStyle(
                  fontSize: 18,
                  color: Colors.redAccent,
                  fontWeight: FontWeight.bold),
            ),
            SizedBox(
              height: 40,
            ),
            Padding(
              padding: const EdgeInsets.all(15.0),
              child: Image.network(
                'https://miro.medium.com/max/600/0*7asj1rKS8d2mead_.png',
                fit: BoxFit.cover,
              ),
            ),
            SizedBox(
              height: 30,
            ),
            FlatButton(
              onPressed: () {
                chnageText();
              },
              color: Colors.redAccent,
              child: Text(
                'Check',
                style: TextStyle(
                  fontSize: 20,
                  color: Colors.white,
                ),
              ),
            )
          ],
        ),
      ),
    );
  }

  chnageText() {
    setState(() {
      displayText = 'Just Smile And Do Hard Work.';
    });
  }
}
