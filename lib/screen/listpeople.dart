import 'package:flutter/material.dart';

class ThirdPage extends StatelessWidget {
  final String data;

  ThirdPage({
    super.key,
    @required this.data = '',
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('PEOPLE LIST'),
        ),
        body: Center(
          child: ListView(children: <Widget>[
            Container(
                height: 200,
                color: Color.fromARGB(255, 180, 106, 193),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.start,
                  mainAxisSize: MainAxisSize.max,
                  children: <Widget>[
                    Text(
                        ' KARINA '),
                    Text(
                        '    KARINA INFO '),
                    Image.network(
                        'https://pbs.twimg.com/media/FnIQfx7agAcXSvz.jpg')
                  ],
                )),
            Container(
                height: 200,
                color: Colors.blue,
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.start,
                  mainAxisSize: MainAxisSize.max,
                  children: <Widget>[
                    Text(
                        'WINTER'),
                    Text(
                        '      WINTER INFO    '),
                    Image.network(
                        'https://pbs.twimg.com/media/FrVy9N4acAALPQ4?format=jpg&name=4096x4096')
                  ],
                )),
            Container(
                height: 200,
                color: Colors.red,
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.start,
                  mainAxisSize: MainAxisSize.max,
                  children: <Widget>[
                    Text(
                        'Teodoro  '),
                    Text(
                        'Teodoro INFO  '),
                    Image.network(
                        'https://pbs.twimg.com/media/CuOAYMWXEAAccGp?format=jpg&name=360x360')
                  ],
                )),
          ]),
        ));
  }
}
