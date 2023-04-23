import 'package:flutter/material.dart';
import 'package:route/screen/Quiz/Quiz2/2.2.dart';

class quiz21page extends StatelessWidget {
  const quiz21page({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Quiz 2'),
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
                        'What do you mainly like people from ?',
                        style: const TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 25,
                            color: Color.fromARGB(218, 44, 22, 188)),
                      ),
                    ],
                  )),
              Text(''),
              Text(''),
              ElevatedButton(
                onPressed: () {
                  Navigator.of(context).push(
                    MaterialPageRoute(
                      builder: (context) => quiz22page(),
                    ),
                  );
                },
                child: Text('Face'),
              ),
              Text(''),
              Text(''),
              ElevatedButton(
                onPressed: () {
                  Navigator.of(context).push(
                    MaterialPageRoute(
                      builder: (context) => quiz22page(),
                    ),
                  );
                },
                child: Text('Character'),
              ),
              Text(''),
              Text(''),
            ],
          ),
        ));
  }
}
