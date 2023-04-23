
import 'package:flutter/material.dart';
import 'package:route/screen/Quiz/Quiz1/1.1.dart';
import 'package:route/screen/Quiz/Quiz1/1.2.dart';

class quiz1page extends StatelessWidget {
  const quiz1page({super.key});

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
                  color: Color.fromARGB(255, 204, 173, 210),
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.start,
                    mainAxisSize: MainAxisSize.max,
                    children: <Widget>[
                      Text(
                        '            What is your hobby',
                        style: const TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 30,
                            color: Colors.deepPurple),
                      ),
                  ],
                )),
              Text(''),
              ElevatedButton(
                onPressed: () {
                  Navigator.of(context).push(
                    MaterialPageRoute(
                      builder: (context) => quiz11page(),
                    ),
                  );
                },
                child: Text('Sport'),
              ),
              Text(''),
              ElevatedButton(
                onPressed: () {
                  Navigator.of(context).push(
                    MaterialPageRoute(
                      builder: (context) => quiz11page(),
                    ),
                  );
                },
                child: Text('Read a book'),
              ),
              Text(''),
              ElevatedButton(
                onPressed: () {
                  Navigator.of(context).push(
                    MaterialPageRoute(
                      builder: (context) => quiz11page(),
                    ),
                  );
                },
                child: Text('Game'),
              ),
            ],
          ),
        ));
  }
}

class RaisedButton {
}
