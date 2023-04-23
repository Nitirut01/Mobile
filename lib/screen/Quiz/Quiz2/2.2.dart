import 'package:flutter/material.dart';
import 'package:route/screen/listpeople.dart';

class quiz22page extends StatelessWidget {
  const quiz22page({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Quiz 1'),
        ),
        body: Center(
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: <Widget>[
              Container(
                  height: 200,
                  color: Color.fromARGB(255, 171, 216, 20),
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.start,
                    mainAxisSize: MainAxisSize.max,
                    children: <Widget>[
                      Text(
                        '   What kind of relationship do you download the app to find ? ',
                        style: const TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 15,
                            color: Color.fromARGB(218, 44, 22, 188)),
                      ),
                    ],
                  )),
              Text(''),
              Text(''),
              ElevatedButton(
                onPressed: () {
                  Navigator.pushNamed(context, "/api");
                },
                child: Text('Friend'),
              ),
              Text(''),
              Text(''),
              ElevatedButton(
                onPressed: () {
                  Navigator.pushNamed(context, "/api");
                },
                child: Text('BoyFriend or GirlFriend'),
              ),
              Text(''),
              Text(''),
            ],
          ),
        ));
  }
}
