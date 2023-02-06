import 'package:flutter/material.dart';

class loose extends StatefulWidget {
  const loose({Key? key}) : super(key: key);

  @override
  State<loose> createState() => _looseState();
}

class _looseState extends State<loose> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
          appBar: AppBar(
            backgroundColor: Colors.red,
          ),
          body: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Center(
                child: Text(
                  "Your Answer is wrong!!..",
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                ),
              ),
              Center(
                child: ElevatedButton(
                    onPressed: () {
                      Navigator.pushNamed(context, '/');
                    },
                    style:
                        ElevatedButton.styleFrom(backgroundColor: Colors.red),
                    child: Text(
                      'Restart',
                      style: TextStyle(fontSize: 20),
                    )),
              ),
            ],
          )),
    );
  }
}
