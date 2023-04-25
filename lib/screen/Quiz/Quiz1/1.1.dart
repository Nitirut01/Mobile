import 'package:flutter/material.dart';
import 'package:route/screen/Quiz/Quiz1/1.2.dart';

class quiz11page extends StatelessWidget {
  const quiz11page({super.key});

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
                        '             Do you have a pet',
                        style: const TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 30,
                            color: Colors.deepPurple),
                      ),
                    ],
                  )),
              Text(''),
              Text(''),
              ElevatedButton(
                onPressed: () {
                  Navigator.of(context).push(
                    MaterialPageRoute(
                      builder: (context) => quiz12page(),
                    ),
                  );
                },
                child: Text('YES'),
              ),
              Text(''),
              Text(''),
              ElevatedButton(
                onPressed: () {
                  Navigator.of(context).push(
                    MaterialPageRoute(
                      builder: (context) => quiz12page(),
                    ),
                  );
                },
                child: Text('NO'),
              ),
              Text(''),
              Text(''),
            ],
          ),
        ));
  }
}
