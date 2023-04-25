import 'package:route/screen/Categories.dart';
import 'package:flutter/material.dart';

class FirstPage extends StatelessWidget {
  const FirstPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: Text('Fall In Love'),
      ),
      body: SafeArea(
        child: Column(
          children: [
            Stack(
              clipBehavior: Clip.none,
              children: [
                Container(
                  margin: const EdgeInsets.only(top: 72),
                  width: MediaQuery.of(context).size.width,
                  height: MediaQuery.of(context).size.height * .5,
                  decoration: const BoxDecoration(
                    image: DecorationImage(
                      image: NetworkImage(
                          "https://cdni.iconscout.com/illustration/premium/thumb/mobile-communication-5569203-4639085.png"),
                    ),
                  ),
                ),
                Positioned(
                  top: MediaQuery.of(context).size.height * .5,
                  child: Container(
                    decoration: const BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(50),
                            topRight: Radius.circular(50))),
                    width: MediaQuery.of(context).size.width,
                    height: MediaQuery.of(context).size.height * .45,
                    child: Stack(
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(50.0),
                          child: Column(
                            children: const [
                              Text(
                                "Fall In Love",
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                    fontSize: 50,
                                    color: Colors.amber,
                                    fontWeight: FontWeight.bold,
                                    fontStyle: FontStyle.italic,
                                    decoration: TextDecoration.none),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                )
              ],
            ),
            Expanded(
              child: Container(
                alignment: Alignment.bottomCenter,
                child: GestureDetector(
                  onTap: () {
                    Navigator.pushNamed(context, '/Login');
                  },
                  child: Padding(
                    padding: const EdgeInsets.all(26.0),
                    child: Container(
                        height: 50,
                        width: 200,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(25),
                            gradient: const LinearGradient(
                                colors: [
                                  Color.fromARGB(255, 253, 143, 75),
                                  Color.fromARGB(255, 227, 177, 60),
                                  Color.fromARGB(255, 255, 226, 59),
                                  Colors.yellow,
                                ],
                                begin: Alignment.topCenter,
                                end: Alignment.bottomCenter)),
                        child: const Center(
                          child: Text(
                            "Login",
                            style: TextStyle(color: Colors.black, fontSize: 16),
                          ),
                        )),
                  ),
                ),
              ),
            ),
            TextButton(
              onPressed: () {
                Navigator.pushNamed(context, '/Register');
              },
              child: Text(
                'Register',
                style: TextStyle(color: Color.fromARGB(255, 223, 34, 34)),
              ),
            ),
          ],
        ),
      ),
    );
  }
}