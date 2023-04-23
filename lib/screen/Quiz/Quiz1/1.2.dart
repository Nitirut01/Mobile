import 'package:flutter/material.dart';
import 'package:route/screen/listpeople.dart';

class quiz12page extends StatelessWidget {
  const quiz12page({super.key});

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
                  color: Color.fromARGB(255, 216, 194, 221),
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.start,
                    mainAxisSize: MainAxisSize.max,
                    children: <Widget>[
                      Text(
                        '   Where do you like to go the most when you relax?',
                        style: const TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 18,
                            color: Colors.deepPurple),
                      ),
                    ],
                  )),
              Text(''),
              ElevatedButton(
                onPressed: () {
                  Navigator.pushNamed(context, "/api");
                },
                child: Text('SEA'),
              ),
              Text(''),
              ElevatedButton(
                onPressed: () {
                  Navigator.pushNamed(context, "/api");
                },
                child: Text('Mountain'),
              ),
              Text(''),
              ElevatedButton(
                onPressed: () {
                  Navigator.pushNamed(context, "/api");
                },
                child: Text('Shopping MALL'),
              ),
            ],
          ),
        ));
  }
}
