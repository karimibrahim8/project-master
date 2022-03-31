import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:untitled/registerAs.dart';
import 'login.dart';

class GetStarted extends StatefulWidget {
  const GetStarted({Key? key}) : super(key: key);

  @override
  _GetStartedState createState() => _GetStartedState();
}

class _GetStartedState extends State<GetStarted> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(backgroundColor: Colors.white,
        elevation: 0,
      ),

      body:
      Container(
        color: Colors.white,
        child:
            Column(
              children:[
                Center(
                child: Image(image: AssetImage('assets/images/logo black.png',
                ),
                  width: 125,
                  height: 125,
                ),
              ),

         SizedBox(
           height: 200,
         ),

            Container(
              width: double.infinity,
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 25.0),
                child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children:[
                       MaterialButton(
                         minWidth: MediaQuery.of(context).size.width/1.9,
                          height: 45,
                          elevation:5.0,
                          shape: RoundedRectangleBorder(
                              borderRadius: new BorderRadius.circular(20)),
                          onPressed: () {
                            Navigator.push(context,MaterialPageRoute(builder: (context)=> registerAs()));
                          },
                          child: Container(
                            child:
                                Text(
                                  "Get Started",
                                  style: TextStyle(
                                    fontSize: 20,
                                    fontWeight: FontWeight.bold,
                                    color: Colors.white,
                                  ),
                                ),
                          ),
                          color: Colors.black,
                        ),

                      SizedBox(
                        height: 20,
                      ),

                      MaterialButton(
                        minWidth: MediaQuery.of(context).size.width/1.9,
                        height: 45,
                        elevation:5.0,
                        shape: RoundedRectangleBorder(
                            borderRadius: new BorderRadius.circular(20)),
                        onPressed: () {
                          Navigator.push(context,MaterialPageRoute(builder: (context)=> loginscren()));
                        },
                        child: Text(
                          "Sign In",
                          style: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                            color: Colors.black,
                          ),
                        ),
                        color: Colors.white,
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
