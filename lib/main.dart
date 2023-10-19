import 'dart:io';

import 'package:expandable_text/expandable_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'models/TravelModel.dart';

void main() {
  runApp(const Home());
}

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: MainPage(),
    );
  }
}

class MainPage extends StatefulWidget {
  const MainPage({super.key});

  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  int selectedIndex = 0;
  double imageSize = 50;
  List likes = [];

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              Container(
                width: size.width,
                height: size.height / 1.8,
                color: const Color.fromARGB(220, 0, 0, 0),
                child: Stack(
                  children: [
                    Container(
                      width: double.infinity,
                      height: size.height / 2.1,
                      decoration: BoxDecoration(
                        borderRadius: const BorderRadius.only(
                            bottomLeft: Radius.circular(60),
                            bottomRight: Radius.circular(60)),
                        image: DecorationImage(
                          fit: BoxFit.cover,
                          image: AssetImage(travelList[selectedIndex].image),
                        ),
                      ),
                    ),
                    Positioned(
                      right: 0,
                      top: 0,
                      left: 0,
                      child: Padding(
                        padding: const EdgeInsets.fromLTRB(20, 16, 20, 16),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            GestureDetector(
                              onTap: () {
                                exit(0);
                              },
                              child: Container(
                                width: 50,
                                height: 50,
                                decoration: const BoxDecoration(
                                  shape: BoxShape.circle,
                                  color: Color.fromARGB(110, 255, 255, 255),
                                ),
                                child: const Icon(CupertinoIcons.arrow_left),
                              ),
                            ),
                            GestureDetector(
                              onTap: () {
                                setState(() {
                                  {
                                    if (likes.contains(selectedIndex)) {
                                      likes.remove(selectedIndex);
                                    } else {
                                      likes.add(selectedIndex);
                                    }
                                  }
                                });
                              },
                              child: Container(
                                width: 50,
                                height: 50,
                                decoration: const BoxDecoration(
                                  shape: BoxShape.circle,
                                  color: Color.fromARGB(110, 255, 255, 255),
                                ),
                                child: likes.contains(selectedIndex)
                                    ? const Icon(
                                  CupertinoIcons.heart_fill,
                                  color: Colors.red,
                                )
                                    : const Icon(CupertinoIcons.heart),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    Positioned(
                      right: 0,
                      top: 80,
                      child: SizedBox(
                        width: 90,
                        height: double.maxFinite,
                        child: ListView.builder(
                          itemCount: travelList.length,
                          itemBuilder: (context, index) {
                            return Column(
                              children: [
                                Padding(
                                  padding: const EdgeInsets.all(8),
                                  child: InkWell(
                                    onTap: () {
                                      setState(() {
                                        selectedIndex = index;
                                      });
                                    },
                                    child: AnimatedContainer(
                                      decoration: BoxDecoration(
                                          image: DecorationImage(
                                            image: AssetImage(
                                                travelList[index].image),
                                            fit: BoxFit.fill,
                                          ),
                                          border: Border.all(
                                              color: Colors.white, width: 2),
                                          borderRadius:
                                          BorderRadius.circular(15)),
                                      duration:
                                      const Duration(milliseconds: 250),
                                      width: selectedIndex == index
                                          ? imageSize + 10
                                          : imageSize,
                                      height: selectedIndex == index
                                          ? imageSize + 10
                                          : imageSize,
                                    ),
                                  ),
                                ),
                              ],
                            );
                          },
                        ),
                      ),
                    ),
                    Positioned(
                      top: 280,
                      left: 20,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Padding(
                            padding: const EdgeInsets.fromLTRB(15, 0, 0, 15),
                            child: Text(
                              travelList[selectedIndex].name,
                              style: const TextStyle(
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold,
                                  fontFamily: "arial"),
                            ),
                          ),
                          Row(
                            children: [
                              const Icon(CupertinoIcons.placemark_fill,
                                  color: Colors.white),
                              Text(
                                travelList[selectedIndex].country,
                                style: const TextStyle(
                                    color: Colors.white,
                                    fontWeight: FontWeight.normal,
                                    fontFamily: "arial"),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              Container(
                color: const Color.fromARGB(220, 0, 0, 0),
                width: size.width,
                child: Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.fromLTRB(0, 0, 0, 30),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Card(
                            elevation: 10,
                            shadowColor: Colors.red,
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(15),
                              side: const BorderSide(
                                  color: Color.fromARGB(60, 0, 0, 0), width: 1),
                            ),
                            child: SizedBox(
                              width: 85,
                              height: 85,
                              child: Column(
                                mainAxisAlignment:
                                MainAxisAlignment.spaceAround,
                                children: [
                                  const Text(
                                    "Horse Power",
                                    style: TextStyle(
                                        fontFamily: "arial", fontSize: 13),
                                  ),
                                  Text(
                                      "${travelList[selectedIndex].horse_power} HP",
                                      style: const TextStyle(
                                          fontFamily: "arial", fontSize: 13))
                                ],
                              ),
                            ),
                          ),
                          Card(
                            elevation: 10,
                            shadowColor: Colors.red,
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(15),
                              side: const BorderSide(
                                  color: Color.fromARGB(60, 0, 0, 0), width: 1),
                            ),
                            child: SizedBox(
                              width: 85,
                              height: 85,
                              child: Column(
                                mainAxisAlignment:
                                MainAxisAlignment.spaceAround,
                                children: [
                                  const Text("Acceleration",
                                      style: TextStyle(
                                          fontFamily: "arial", fontSize: 13)),
                                  Text(
                                      "${travelList[selectedIndex].zero_to_one_hundred} S",
                                      style: TextStyle(
                                          fontFamily: "arial", fontSize: 13))
                                ],
                              ),
                            ),
                          ),
                          Card(
                            elevation: 10,
                            shadowColor: Colors.red,
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(15),
                              side: const BorderSide(
                                  color: Color.fromARGB(60, 0, 0, 0), width: 1),
                            ),
                            child: SizedBox(
                              width: 85,
                              height: 85,
                              child: Column(
                                mainAxisAlignment:
                                MainAxisAlignment.spaceAround,
                                children: [
                                  const Text("Top Speed",
                                      style: TextStyle(
                                          fontFamily: "arial", fontSize: 13)),
                                  Text(
                                      "${travelList[selectedIndex].top_speed} Km/h",
                                      style: TextStyle(
                                          fontFamily: "arial", fontSize: 13))
                                ],
                              ),
                            ),
                          ),
                          Card(
                            elevation: 10,
                            shadowColor: Colors.red,
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(15),
                              side: const BorderSide(
                                  color: Color.fromARGB(60, 0, 0, 0), width: 1),
                            ),
                            child: SizedBox(
                              width: 85,
                              height: 85,
                              child: Column(
                                mainAxisAlignment:
                                MainAxisAlignment.spaceAround,
                                children: [
                                  const Text("Year",
                                      style: TextStyle(
                                          fontFamily: "arial", fontSize: 13)),
                                  Text(travelList[selectedIndex].year,
                                      style: TextStyle(
                                          fontFamily: "arial", fontSize: 13))
                                ],
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(15.0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const Text(
                            "Description",
                            style: TextStyle(
                                fontWeight: FontWeight.bold,
                                color: Colors.white,
                                fontFamily: "arial"),
                          ),
                          ExpandableText(
                            style: const TextStyle(
                                color: Colors.white, fontFamily: "arial", height: 2),
                            travelList[selectedIndex].description,
                            expandText: "Read more",
                            linkColor: Colors.red[400],
                            collapseText: "Read less",
                          )
                        ],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(15),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              const Text(
                                "Price",
                                style: TextStyle(
                                    color: Colors.white, fontFamily: "arial"),
                              ),
                              Text(
                                "${travelList[selectedIndex].price} \$",
                                style: const TextStyle(
                                    fontWeight: FontWeight.bold,
                                    fontSize: 25,
                                    color: Colors.white,
                                    fontFamily: "arial"),
                              ),
                            ],
                          ),
                          Container(
                            width: 85,
                            height: 85,
                            decoration: const BoxDecoration(
                              shape: BoxShape.circle,
                              color: Color.fromARGB(255, 0, 0, 0),
                            ),
                            child: const Icon(
                              CupertinoIcons.arrow_right,
                              color: Colors.white,
                            ),
                          ),
                        ],
                      ),
                    )
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
