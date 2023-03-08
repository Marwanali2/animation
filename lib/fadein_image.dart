import 'package:flutter/material.dart';

class MyFadeInImage extends StatelessWidget {
  const MyFadeInImage({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Container(
          child: FadeInImage(
            placeholder: AssetImage('assets/images/R.png'),// الصورة اللي هتبان اول حاجة و تختفي بعدها هيجي الصورة اللي تحت
            image: NetworkImage(
                'https://th.bing.com/th/id/R.f6c89b47f9a95a5d4bd6f86ffee1ca76?rik=Id296QfUo%2bpwTQ&pid=ImgRaw&r=0'),
          ),
        ),
      ),
    );
  }
}
