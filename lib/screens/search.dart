import 'package:flutter/material.dart';

class SearchPage extends StatefulWidget {
  const SearchPage({Key? key}) : super(key: key);

  @override
  _SearchPageState createState() => _SearchPageState();
}

class _SearchPageState extends State<SearchPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Container(
            height: MediaQuery.of(context).size.height / 1.9,
            width: MediaQuery.of(context).size.width,
            child: Image.asset(
              'assets/map.jpg',
              fit: BoxFit.fill,
            ),
          ),
          Container(
            height: MediaQuery.of(context).size.height / 4.5,
            width: MediaQuery.of(context).size.width,
            decoration: BoxDecoration(
                color: Color(0xFF6f9aff),
                borderRadius: BorderRadius.all(Radius.circular(40))),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Text(
                  "Find the place",
                  style: TextStyle(color: Colors.white, fontSize: 16),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Container(
                        height: MediaQuery.of(context).size.height / 12,
                        width: MediaQuery.of(context).size.width / 6,
                        decoration: BoxDecoration(
                            color: Color(0xFFffa01b),
                            borderRadius:
                                BorderRadius.all(Radius.circular(10))),
                        child: Icon(
                          Icons.coffee,
                          color: Colors.white,
                          size: 30,
                        )),
                    Container(
                        height: MediaQuery.of(context).size.height / 12,
                        width: MediaQuery.of(context).size.width / 6,
                        decoration: BoxDecoration(
                            color: Colors.white38,
                            borderRadius:
                                BorderRadius.all(Radius.circular(10))),
                        child:
                            Icon(Icons.movie, color: Colors.white, size: 30)),
                    Container(
                        height: MediaQuery.of(context).size.height / 12,
                        width: MediaQuery.of(context).size.width / 6,
                        decoration: BoxDecoration(
                            color: Colors.white38,
                            borderRadius:
                                BorderRadius.all(Radius.circular(10))),
                        child: Icon(Icons.apartment_sharp,
                            color: Colors.white, size: 30)),
                    Container(
                        height: MediaQuery.of(context).size.height / 12,
                        width: MediaQuery.of(context).size.width / 6,
                        decoration: BoxDecoration(
                            color: Color(0xFF00c785),
                            borderRadius:
                                BorderRadius.all(Radius.circular(10))),
                        child: Icon(Icons.car_rental,
                            color: Colors.white, size: 30)),
                  ],
                )
              ],
            ),
          ),
          Container(
            height: MediaQuery.of(context).size.height / 4,
            width: MediaQuery.of(context).size.width,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Text(
                  "Reviews",
                  style: TextStyle(fontSize: 18),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 28.0),
                  child: Row(
                    children: [
                      Container(
                          width: 85, child: Image.asset('assets/avatar.png')),
                      Column(
                        children: [
                          Text(
                            "Tomy Jones",
                            style: TextStyle(
                                fontSize: 16, fontWeight: FontWeight.bold),
                          ),
                          Row(
                            children: [
                              Icon(
                                Icons.star,
                                size: 17,
                                color: Color(0xFFffa01b),
                              ),
                              Icon(
                                Icons.star,
                                size: 17,
                                color: Color(0xFFffa01b),
                              ),
                              Icon(
                                Icons.star,
                                size: 17,
                                color: Color(0xFFffa01b),
                              ),
                              Icon(
                                Icons.star,
                                size: 17,
                                color: Color(0xFFffa01b),
                              ),
                              Icon(
                                Icons.star,
                                size: 17,
                                color: Colors.black26,
                              )
                            ],
                          ),
                          Container(
                              width: MediaQuery.of(context).size.width / 5.2,
                              child: Text(
                                "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.",
                                maxLines: 3,
                              ))
                        ],
                      )
                    ],
                  ),
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
