import 'package:flutter/material.dart';

class MyHero extends StatelessWidget {
  const MyHero({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: null,
      body: Center(
        child: Builder(
          builder: (ctx) => TextButton(
            child: Hero(
              tag: 'To_Flutter',
              child:ListView(
                children: [
                  FlutterLogo(
                    size: 50,
                  ),
                  Center(child: Text('Tap the logo')),
                ],
              ),
            ),
            onPressed: () => Navigator.push(
              ctx,
              MaterialPageRoute(
                builder: (_) => FlutterPage(),
              ),
            ),
          ),
        ),
      ),
    );
  }
}

class FlutterPage extends StatelessWidget {
  const FlutterPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Flutter Page '),
      ),
      body: Center(
        child: Hero(
          tag: 'To_Flutter',
          child: ListView(
            children: [
              Icon(Icons.done_outline,size: 200,color: Colors.green,),
              Center(child: Text('the hero done',style: TextStyle(fontSize: 50,color: Colors.blue),))
            ],
          ),
        ),
      ),
    );
  }
}
