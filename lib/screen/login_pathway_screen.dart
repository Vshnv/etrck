import 'package:flutter/material.dart';

class LoginPathwayScreen extends StatelessWidget {
  const LoginPathwayScreen({super.key});


  @override
  Widget build(BuildContext context) {
      return Column(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          Padding(
            padding: const EdgeInsets.fromLTRB(20, 20, 20, 20),
            child: Center(
              child: Image.asset(
                "assets/images/edutrack.png",
                width: 150,
                height: 150,
              ),
            ), //Container
          ),
          const Text(
            'Login Portal',
            style: TextStyle(color: Colors.black, fontSize: 30.0, fontWeight: FontWeight.bold),
          ),
          Expanded(
              child: Padding(
                padding: EdgeInsets.fromLTRB(20, 0, 20, 0),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    OutlinedButton(
                        onPressed: () => {},
                        style: OutlinedButton.styleFrom(
                          side:  const BorderSide(
                            width: 1.0,
                            color: Colors.red,
                            style: BorderStyle.solid,
                          ),
                          shape: const StadiumBorder(),
                        ),
                        child: Container(
                          alignment: Alignment.center,
                          width: double.infinity,
                          child: const Text(
                            'ADMIN',
                            style: TextStyle(color: Colors.redAccent, fontSize: 20.0,),
                          ),
                        )
                    ),
                    OutlinedButton(
                        onPressed: () => {},
                        style: OutlinedButton.styleFrom(
                          side:  const BorderSide(
                            width: 1.0,
                            color: Colors.blue,
                            style: BorderStyle.solid,
                          ),
                          shape: const StadiumBorder(),
                        ),
                        child: Container(
                          alignment: Alignment.center,
                          width: double.infinity,
                          child: const Text(
                            'FACULTY',
                            style: TextStyle(color: Colors.blueAccent, fontSize: 20.0,),
                          ),
                        )
                    ),
                    OutlinedButton(
                        onPressed: () => {},
                        style: OutlinedButton.styleFrom(
                          side:  const BorderSide(
                            width: 1.0,
                            color: Colors.green,
                            style: BorderStyle.solid,
                          ),
                          shape: const StadiumBorder(),
                        ),
                        child: Container(
                          alignment: Alignment.center,
                          width: double.infinity,
                          child: const Text(
                            'STUDENT',
                            style: TextStyle(color: Colors.greenAccent, fontSize: 20.0,),
                          ),
                        )
                    )
                  ],
                ),
              )
          )
        ],
      );
  }
}