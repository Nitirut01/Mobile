import 'package:flutter/material.dart';
import 'package:route/screen/Quiz/Quiz2/2.1.dart';
import 'package:route/screen/Quiz/Quiz2/2.2.dart';

class quiz2page extends StatelessWidget {
  const quiz2page({super.key});

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
                        ' What kind of book do you like to read ',
                        style: const TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 25,
                            color: Color.fromARGB(218, 44, 22, 188)),
                      ),
                    ],
                  )),
              Text(''),
              ElevatedButton(
                onPressed: () {
                  Navigator.of(context).push(
                    MaterialPageRoute(
                      builder: (context) => quiz21page(),
                    ),
                  );
                },
                child: Text('Cartoon'),
              ),
              Text(''),
              ElevatedButton(
                onPressed: () {
                  Navigator.of(context).push(
                    MaterialPageRoute(
                      builder: (context) => quiz21page(),
                    ),
                  );
                },
                child: Text('Series'),
              ),
              Text(''),
              ElevatedButton(
                onPressed: () {
                  Navigator.of(context).push(
                    MaterialPageRoute(
                      builder: (context) => quiz21page(),
                    ),
                  );
                },
                child: Text('Documentary'),
              ),
            ],
          ),
        ));
  }
}
