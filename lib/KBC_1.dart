import 'package:flutter/material.dart';

class Wan extends StatefulWidget {
  const Wan({Key? key}) : super(key: key);

  @override
  State<Wan> createState() => _WanState();
}

class _WanState extends State<Wan> {

  List winimg = ["assets/images/win.png"
  ];
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
          backgroundColor: Colors.black,
          appBar: AppBar(
            backgroundColor: Colors.black,
          ),
          body: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Center(
                  child: Text(
                    " 🎉",
                    style: TextStyle(fontSize: 50,color: Colors.purple),
                  ),),
              Column(
                children: [
                  Center(
                    child: Text(
                      "Your Answer correct!!..",
                      style: TextStyle(color: Colors.white, fontSize: 20),
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 20,
              ),
              Center(
                  child: ElevatedButton(
                      onPressed: () {
                        Navigator.pop(context);
                      },
                      style: ElevatedButton.styleFrom(backgroundColor: Colors.blue),
                      child: Text(
                        "Next",
                        style: TextStyle(color: Colors.white, fontSize: 20),
                      )))
            ],
          ),
        ),);
  }
}