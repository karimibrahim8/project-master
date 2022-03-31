import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:untitled/categ..dart';

class otpSeller extends StatefulWidget {
  const otpSeller({Key? key}) : super(key: key);

  @override
  State<otpSeller> createState() => _otpSellerState();
}

class _otpSellerState extends State<otpSeller> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      appBar:AppBar(
        elevation: 0,
        backgroundColor: Colors.white,
        leading: IconButton(onPressed: () {
          Navigator.pop(context);
        },
          icon: Icon(Icons.arrow_back_ios_outlined,
            color: Colors.black,),
        ),
      ),

      body: Container(
      color: Colors.white,
        child: Padding(
            padding: EdgeInsets.symmetric(vertical: 24, horizontal: 32),
            child:  Column(
                children: [
                   Center(
                      child: Image(image: AssetImage('assets/images/logo black.png',
                      ),
                        width: 125,
                        height: 125,
                      ),
                  ),

                  SizedBox(
                    height: 24,
                  ),
                  Text(
                    'Verification',
                    style: TextStyle(
                      fontSize: 22,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Text(
                    "We sent an SMS code",
                    style: TextStyle(
                      fontSize: 14,
                      fontWeight: FontWeight.bold,
                      color: Colors.black38,
                    ),
                    textAlign: TextAlign.center,
                  ),
                  SizedBox(
                    height: 28,
                  ),
                  Container(
                    padding: EdgeInsetsDirectional.only(top: 28.0, bottom: 28.0),
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(12),
                    ),
                    child: Column(
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            _textFieldOTP(first: true, last: false),
                            _textFieldOTP(first: false, last: false),
                            _textFieldOTP(first: false, last: false),
                            _textFieldOTP(first: false, last: true),
                          ],
                        ),
                        SizedBox(
                          height: 50,
                        ),
                        SizedBox(
                          child: MaterialButton(
                            height: 55,
                            minWidth: 240,
                            elevation:5.0,
                            onPressed: () {
                              Navigator.of(context).push(
                                MaterialPageRoute(builder: (context) => category()),
                              );
                            },
                            shape: RoundedRectangleBorder(
                              borderRadius: new BorderRadius.circular(20),
                            ),
                            child: Text(
                              'Verify',
                              style:
                              TextStyle(fontSize: 20,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.white),
                            ),
                            color: Colors.black,
                          ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 18,
                  ),
                  Text(
                    "Didn't you receive any code?",
                    style: TextStyle(
                      fontSize: 14,
                      fontWeight: FontWeight.bold,
                      color: Colors.black38,
                    ),
                    textAlign: TextAlign.center,
                  ),
                  SizedBox(
                    height: 18,
                  ),
                  TextButton(onPressed: () {},
                    child: Text("Resend",
                      style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                        color: Colors.black,
                      ),
                    ),
                  ),
                ],
              ),
            ),



      ),
    );
  }

  Widget _textFieldOTP({required bool first, last}) {
    return Container(
      width: MediaQuery.of(context).size.width/6,
      height: 85,
      child: AspectRatio(
        aspectRatio: 1.0,
        child: TextField(
          autofocus: true,
          onChanged: (value) {
            if (value.length == 1 && last == false) {
              FocusScope.of(context).nextFocus();
            }
            if (value.length == 0 && first == false) {
              FocusScope.of(context).previousFocus();
            }
          },
          showCursor: false,
          readOnly: false,
          textAlign: TextAlign.center,
          style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
          keyboardType: TextInputType.number,
          maxLength: 1,
          decoration: InputDecoration(
            counter: Offstage(),
            enabledBorder: OutlineInputBorder(
                borderSide: BorderSide(width: 2, color: Colors.black12),
                borderRadius: BorderRadius.circular(12)),
            focusedBorder: OutlineInputBorder(
                borderSide: BorderSide(width: 2, color: Colors.deepOrange),
                borderRadius: BorderRadius.circular(12)),
          ),
        ),
      ),
    );
  }
}

