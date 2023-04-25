/* CATEGORY */
import 'package:flutter/material.dart';
import 'package:route/screen/Accountpage.dart';
import 'package:get/get.dart';
import 'package:route/screen/Quiz/Quiz1/Quiz1.dart';
import 'package:route/screen/Quiz/Quiz2/Quiz2.dart';

class Categories extends StatefulWidget {
  final String name;
  const Categories({super.key, required this.name});
  @override
  State<Categories> createState() => _CategoriesPage();
}

class _CategoriesPage extends State<Categories> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 255, 255, 255),
      appBar: AppBar(
        backgroundColor: Colors.amber,
        leading: IconButton(
          onPressed: () {
            Navigator.pushNamed(context, "/Homepage");
          },
          icon: const Icon(Icons.arrow_back_ios_new_outlined),
          color: Colors.black,
        ),
        actions: [
          Padding(
            padding: const EdgeInsets.only(right: 10),
            child: IconButton(
              icon: const Icon(Icons.account_circle),
              color: Colors.black,
              onPressed: () {
                    Navigator.of(context).push(
                      MaterialPageRoute(
                        builder: (context) => FourPage(),
                      ),
                    );
              },
            ),
          ),
        ],
        elevation: 0,
      ),
      body: SafeArea(
        child: Column(
          children: [
            itemPager(),
            const SizedBox(
              height: 20,
            ),
            Text("Quiz",
                textAlign: TextAlign.left, style: TextStyle(fontSize: 40)),
            Card(
              margin: const EdgeInsets.all(20),
              child: Column(
                mainAxisSize: MainAxisSize.max,
                children: <Widget>[
                  ListTile(
                    title: const Text('Quiz1'),
                    subtitle: const Text(
                        'Your preferences in various subjects.'),
                    leading: Image(
                      image: NetworkImage(
                          "https://e7.pngegg.com/pngimages/47/600/png-clipart-heart-logo-heart-in-hands-love-hand.png"),
                    ),
                    onTap: () {
                      Navigator.of(context).push(
                        MaterialPageRoute(builder:(context)=> quiz1page()),
                      );
                    },
                  ),
                ],
              ),
            ),
            Card(
              margin: const EdgeInsets.all(20),
              child: Column(
                mainAxisSize: MainAxisSize.max,
                children: <Widget>[
                  ListTile(
                    title: const Text('Quiz2'),
                    subtitle: const Text(
                        'Want to know more about you'),
                    leading: Image(
                      image: NetworkImage(
                          "https://e7.pngegg.com/pngimages/47/600/png-clipart-heart-logo-heart-in-hands-love-hand.png"),
                    ),
                    onTap: () {
                      Navigator.of(context).push(
                        MaterialPageRoute(builder:(context)=> quiz2page()),
                      );
                    },
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget itemPager() {
    return Stack(
      children: [
        Padding(
          padding: const EdgeInsets.all(20.0),
          child: Container(
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20), color: Color.fromARGB(255, 255, 255, 255)),
            height: 250,
            width: MediaQuery.of(context).size.width,
          ),
        ),
        Align(
          alignment: Alignment.topRight,
          child: Container(
            height: 180,
            width: 250,
            decoration: const BoxDecoration(
              image: DecorationImage(
                image: NetworkImage(
                    "https://purepng.com/public/uploads/large/heart-4xd.png"),
              ),
            ),
          ),
        ),
        Positioned(
          top: 50,
          left: 50,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text(
                "Relationship",
                style: TextStyle(
                    color: Color.fromARGB(255, 0, 0, 0),
                    fontSize: 40,
                    fontStyle: FontStyle.italic,
                    fontWeight: FontWeight.bold),
              ),
              const SizedBox(
                height: 10,
              ),
              const SizedBox(
                width: 150,
                child: Text(
                  "Find Relationships with many people in your styles",
                  style: TextStyle(
                      color: Color.fromARGB(255, 0, 0, 0),
                      fontSize: 25,
                      fontWeight: FontWeight.bold),
                ),
              ),
              const SizedBox(
                height: 20,
              ),
            ],
          ),
        ),
      ],
    );
  }
}

