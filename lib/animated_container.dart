import 'package:flutter/material.dart';
import 'dart:math';
class MyAnimatedContainer extends StatefulWidget {
  const MyAnimatedContainer({Key? key}) : super(key: key);

  @override
  State<MyAnimatedContainer> createState() => _MyAnimatedContainerState();
}

class _MyAnimatedContainerState extends State<MyAnimatedContainer> {
  double _width=50;
  double _height=50;
  Color _color=Colors.green;
  BorderRadiusGeometry _borderRadius =BorderRadius.circular(8);
  Random random=Random();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(child: Text('Animated Container')),
        backgroundColor: Color.fromRGBO(random.nextInt(256), random.nextInt(256),random.nextInt(256),1),
      ),
      body: Center(
        child: AnimatedContainer(
          curve: Curves.easeInOutExpo,
          duration: Duration(seconds: 1),
          width: _width,
          height: _height,
          decoration: BoxDecoration(borderRadius: _borderRadius,color: _color,),

        ),
      ),
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.play_arrow_outlined),
        onPressed: (){
          setState(() {
            _width=random.nextInt(100).toDouble();
            _height=random.nextInt(100).toDouble();
            _color=Color.fromRGBO(random.nextInt(256), random.nextInt(256),random.nextInt(256),1);
            _borderRadius=(_borderRadius==BorderRadius.circular(random.nextInt(100).toDouble())?BorderRadius.circular(random.nextInt(100).toDouble()):BorderRadius.circular(random.nextInt(100).toDouble()));
            // او باستخدام اللي انا عايزه
          //  _width=(_width==50?200:50);
           // _height=(_height==50?200:50);
           // _color=(_color==Colors.green?Colors.red:Colors.green);
           // _borderRadius=(_borderRadius==BorderRadius.circular(8)?BorderRadius.circular(20):BorderRadius.circular(8));
          });
        },
        backgroundColor: Color.fromRGBO(random.nextInt(256), random.nextInt(256),random.nextInt(256),1),
      ),
    );
  }
}
