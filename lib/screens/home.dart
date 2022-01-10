import 'package:case_study_kirenyazilim/screens/search.dart';
import 'package:flutter/material.dart';

import '../widgets/searchBox.dart';


class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
    resizeToAvoidBottomInset: false,
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Color(0xFF6383fc),
        actions: [
          Padding(
            padding: const EdgeInsets.only(right: 18.0),
            child: Icon(Icons.menu),
          )
        ],
        leading: Padding(
          padding: const EdgeInsets.only(left: 18.0),
          child: Icon(Icons.arrow_back_ios),
        ),
      ),
      body: Column(
        children: [
          Center(
            child: ClipRRect(
              borderRadius: BorderRadius.only(
                bottomLeft: Radius.circular(50.0),
                bottomRight: Radius.circular(50.0),
              ),
              child: Container(
                color: Color(0xFF6383fc),
                height: 250,
                width: double.infinity,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Container(
                        width: 100, child: Image.asset('assets/avatar.png')),
                    Column(
                      children: [
                        Text(
                          "Jack Lemonade",
                          style: TextStyle(
                              fontSize: 18,
                              color: Colors.white,
                              letterSpacing: 1),
                        ),
                        SizedBox(
                          height: MediaQuery.of(context).size.height / 85,
                        ),
                        Text(
                          "lemonadejack.mail.com",
                          style: TextStyle(
                              fontSize: 12,
                              color: Colors.white,
                              fontWeight: FontWeight.w300),
                        ),
                      ],
                    ),
                    Text(
                      "Where do you want to go today?",
                      style: TextStyle(
                          fontSize: 24,
                          color: Colors.white,
                          fontWeight: FontWeight.bold),
                    ),
                    Container(
                      height: MediaQuery.of(context).size.height / 90,
                      width: MediaQuery.of(context).size.width / 8,
                      decoration: BoxDecoration(
                        color: Color(0xFF6f9aff),
                        borderRadius: BorderRadius.circular(30),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
          SizedBox(
            height: MediaQuery.of(context).size.height / 85,
          ),
          GestureDetector(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => SearchPage()),
              );
            },
            child: Container(
              height: MediaQuery.of(context).size.height / 2,
              width: MediaQuery.of(context).size.width,
              child: Stack(children: [
                Image.asset(
                  'assets/map.jpg',
                  fit: BoxFit.fill,
                ),
                Positioned(
                  right: 30,
                  left: 30,
                  child: SearhBox(),
                ),
              ]),
            ),
          )
        ],
      ),
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(
              Icons.home,
              color: Color(0xFF6383fc),
            ),
            label: '',
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.person,
              color: Color(0xFF6383fc),
            ),
            label: '',
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.location_on,
              color: Color(0xFF6383fc),
            ),
            label: '',
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.notifications,
              color: Color(0xFF6383fc),
            ),
            label: '',
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.settings,
              color: Color(0xFF6383fc),
            ),
            label: '',
          ),
        ],
      ),
    );
  }
}
