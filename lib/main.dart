import 'package:flutter/material.dart';
import 'package:curved_navigation_bar/curved_navigation_bar.dart';

void main() {
  return runApp(MaterialApp(home: Home()));
}

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  bool colorSwitch1 = false;
  bool colorSwitch2 = false;
  bool colorSwitch3 = false;
  bool colorSwitch4 = false;
  bool colorSwitch5 = false;
  bool colorSwitch6 = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(
          child: Text(
            "Appliances",
            style: TextStyle(
                fontFamily: "Poppins",
                fontWeight: FontWeight.w800,
                fontSize: 30,
                color: Colors.white,
                letterSpacing: 2),
          ),
        ),
        backgroundColor: Color(0xfffc3e03),
      ),
      backgroundColor: Colors.deepOrange,
      body: Padding(
        padding: const EdgeInsets.all(10.0),
        child: SafeArea(
          child: Column(
            children: <Widget>[
              SizedBox(
                height: 10,
              ),
              Flexible(
                child: Row(
                  children: <Widget>[
                    Reusecards(
                      path: "images/tv.png",
                      label: "TV",
                      switchy: () {
                        setState(() {
                          colorSwitch1 == false
                              ? colorSwitch1 = true
                              : colorSwitch1 = false;

                        });
                      },
                      colour: colorSwitch1 ? Color(0xffF5E6CA) : Colors.white,
                    ),
                    SizedBox(
                      width: 5,
                    ),
                    Reusecards(
                      path: "images/fan.png",
                      label: "FAN",
                      switchy: () {
                        setState(() {
                          colorSwitch2 == false
                              ? colorSwitch2 = true
                              : colorSwitch2 = false;

                        });
                      },
                      colour: colorSwitch2 ? Color(0xffF5E6CA) : Colors.white,
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 7,
              ),
              Flexible(
                child: Row(
                  children: <Widget>[
                    Reusecards(
                      path: "images/fridge.png",
                      label: "FRIDGE",
                      switchy: () {
                        setState(() {
                          colorSwitch3 == false
                              ? colorSwitch3 = true
                              : colorSwitch3 = false;

                        });
                      },
                      colour: colorSwitch3 ? Color(0xffF5E6CA) : Colors.white,
                    ),
                    SizedBox(
                      width: 5,
                    ),
                    Reusecards(
                      path: "images/light.png",
                      label: "LIGHT",
                      switchy: () {
                        setState(() {
                          colorSwitch4 == false
                              ? colorSwitch4 = true
                              : colorSwitch4 = false;

                        });
                      },
                      colour: colorSwitch4 ? Color(0xffF5E6CA) : Colors.white,
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 7,
              ),
              Flexible(
                child: Row(
                  children: <Widget>[
                    Reusecards(
                      path: "images/water.png",
                      label: "water",
                      switchy: (){
                        setState(() {
                          colorSwitch5 == false ? colorSwitch5=true : colorSwitch5=false;

                        });
                      },
                      colour:  colorSwitch5 ? Color(0xffF5E6CA):Colors.white,
                    ),
                    SizedBox(
                      width: 5,
                    ),
                    Reusecards(
                      path: "images/washing.png",
                      label: "Washing Machine",
                      switchy: (){
                        setState(() {
                          colorSwitch6 == false ? colorSwitch6=true : colorSwitch6=false;
                        });
                      },
                      colour:  colorSwitch6 ? Color(0xffF5E6CA):Colors.white,
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
      bottomNavigationBar: CurvedNavigationBar(
        index: 1,
        height: 60,
        backgroundColor: Colors.deepOrange,
        items: <Widget>[
          Icon(Icons.list, size: 30),
          Icon(Icons.home, size: 30),
          Icon(Icons.settings, size: 30),
        ],
        onTap: (index) {
          print(index);
        },
        animationCurve: Curves.easeInOut,
        animationDuration: Duration(milliseconds: 300),
      ),
    );
  }
}

class Reusecards extends StatelessWidget {
  final String? path;
  final String? label;
  final Function()? switchy;
  final Color colour;

  Reusecards({this.path, this.label, this.colour = Colors.white, this.switchy});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: GestureDetector(
        onTap: switchy,
        child: Card(
          color: colour,
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  width: 70,
                  height: 70,
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      image: AssetImage(path!),
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
                Text(
                  label!,
                  style: TextStyle(fontFamily: "Poppins", fontSize: 18),
                )
              ],
            ),
          ),
          elevation: 10,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(15.0),
          ),
        ),
      ),
    );
  }
}
