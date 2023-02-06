import 'package:flutter/material.dart';

class Homescreen extends StatefulWidget {
  const Homescreen({Key? key}) : super(key: key);

  @override
  State<Homescreen> createState() => _HomescreenState();
}

class _HomescreenState extends State<Homescreen> {
  bool t = false;
  List Questions = [
    "1.Which of these sounds would you associate with the heart ?",
    "2.Who is the 'Bharat Ka Veer Putra Aaccording to the title of a 2013 TV Series ?",
    "3.In 2013, where did the natural calamity known as Himalayan tsunami occur?",
    "4.In the Ramayana, Which demon impersonated Rama's voice, screaming, 'Lakshman! Help me' ?",
    "5.The black widow, which eats the male counterpart after mating, as a female species of which animal?",
  ];
  List Ans = [
    "Dhak Dhak",
    "Maharana Pratap",
    "Uttrakhand",
    "Maricha",
    "Spider",
  ];

  List OptA = [
    "Tring Tring",
    "Tipu Sultan",
    "Uttrakhand",
    "Maricha",
    "Sloth",
  ];
  List OptB = [
    "Dhak Dhak",
    "Chandragupta Maurya",
    "Arunachal Pradesh",
    "Surpanakha",
    "Termite",
  ];
  List OptC = [
    "Tap Tap",
    "Ashoka",
    "Jammu and Kashmir",
    "Khara",
    "Spider",
  ];
  List OptD = [
    "Click Click",
    "Maharana Pratap",
    "Sikkim",
    "Dushana",
    "Ant",
  ];

  List<Color> c = [
    Colors.purple,
    Colors.lightBlueAccent,
    Colors.blue,
    Colors.green,
    Colors.yellowAccent
  ];
  List UserAns = [];

  int i = 0, j = 0;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Column(
          children: [
            Expanded(
              flex: 1,
              child: Container(
                padding: EdgeInsets.all(10),
                color: c[i],
                alignment: Alignment.center,
                child: Text(
                  "${Questions[i]}",
                  style: TextStyle(
                      fontSize: 30,
                      color: Colors.black,
                      fontWeight: FontWeight.bold),
                ),
              ),
            ),
            Expanded(
              flex: 1,
              child: Container(
                color: Colors.black,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Row(
                      children: [
                        Expanded(
                          flex: 1,
                          child: InkWell(
                            onTap: () {
                              if (j < 6) {
                                UserAns.add("${OptA[i]}");
                                setState(() {
                                  if (UserAns[i] == Ans[i]) {
                                    Navigator.pushNamed(context, 'won');
                                    if (i < 4) {
                                      i++;
                                      j++;
                                    }
                                    if (i == 4) {
                                      j++;
                                    }
                                  } else {
                                    Navigator.pushNamed(context, 'loose');
                                    i = 0;
                                    j = 0;
                                    UserAns.clear();
                                  }
                                });
                              }
                            },
                            child: Container(
                              margin: EdgeInsets.only(left: 10),
                              height: 60,
                              decoration: BoxDecoration(
                                color: Color(0xff1E2022),
                                borderRadius: BorderRadius.circular(10),
                              ),
                              alignment: Alignment.center,
                              child: Text(
                                "A.${OptA[i]}",
                                style: TextStyle(color: Colors.grey),
                              ),
                            ),
                          ),
                        ),
                        SizedBox(
                          width: 15,
                        ),
                        Expanded(
                          flex: 1,
                          child: InkWell(
                            onTap: () {
                              if (j < 6) {
                                UserAns.add("${OptB[i]}");
                                setState(() {
                                  if (UserAns[i] == Ans[i]) {
                                    Navigator.pushNamed(context, 'won');
                                    if (i < 4) {
                                      i++;
                                      j++;
                                    }
                                    if (i == 4) {
                                      j++;
                                    }
                                  } else {
                                    Navigator.pushNamed(context, 'loose');
                                    i = 0;
                                    j = 0;
                                    UserAns.clear();
                                  }
                                });
                              }
                            },
                            child: Container(
                              margin: EdgeInsets.only(right: 10),
                              height: 60,
                              decoration: BoxDecoration(
                                color: Color(0xff1e2022),
                                borderRadius: BorderRadius.circular(10),
                              ),
                              alignment: Alignment.center,
                              child: Text(
                                "B.${OptB[i]}",
                                style: TextStyle(color: Colors.grey),
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Row(
                      children: [
                        Expanded(
                          flex: 1,
                          child: InkWell(
                            onTap: () {
                              if (j < 6) {
                                UserAns.add("${OptC[i]}");

                                setState(() {
                                  if (UserAns[i] == Ans[i]) {
                                    Navigator.pushNamed(context, 'won');
                                    if (i < 4) {
                                      i++;
                                      j++;
                                    }
                                    if (i == 4) {
                                      j++;
                                    }
                                  } else {
                                    Navigator.pushNamed(context, 'loose');
                                    i = 0;
                                    j = 0;
                                    UserAns.clear();
                                  }
                                });
                              }
                            },
                            child: Container(
                              margin: EdgeInsets.only(left: 10),
                              height: 60,
                              decoration: BoxDecoration(
                                color: Color(0xff1e2022),
                                borderRadius: BorderRadius.circular(10),
                              ),
                              alignment: Alignment.center,
                              child: Text(
                                "C.${OptC[i]}",
                                style: TextStyle(color: Colors.grey),
                              ),
                            ),
                          ),
                        ),
                        SizedBox(
                          width: 15,
                        ),
                        Expanded(
                          flex: 1,
                          child: InkWell(
                            onTap: () {
                              if (j < 6) {
                                UserAns.add("${OptD[i]}");

                                setState(() {
                                  if (UserAns[i] == Ans[i]) {
                                    Navigator.pushNamed(context, 'won');
                                    if (i < 4) {
                                      i++;
                                      j++;
                                    }
                                    if (i == 4) {
                                      j++;
                                    }
                                  } else {
                                    Navigator.pushNamed(context, 'loose');
                                    i = 0;
                                    j = 0;
                                    UserAns.clear();
                                  }
                                });
                              }
                            },
                            child: Container(
                              margin: EdgeInsets.only(right: 10),
                              height: 60,
                              decoration: BoxDecoration(
                                color: Color(0xff1e2022),
                                borderRadius: BorderRadius.circular(10),
                              ),
                              alignment: Alignment.center,
                              child: Text(
                                "D.${OptD[i]}",
                                style: TextStyle(color: Colors.grey),
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 30,
                    ),
                    Visibility(
                      visible: j >= 6 ? true : false,
                      child: ElevatedButton(
                        onPressed: () {
                          setState(() {
                            j = 0;
                            i = 0;
                            UserAns.clear();
                          });
                        },
                        style: ElevatedButton.styleFrom(
                            backgroundColor: Colors.cyanAccent),
                        child: Center(
                          child: Text(
                            "Reset",
                            style: TextStyle(fontSize: 20,color: Colors.black),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
