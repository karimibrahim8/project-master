import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:untitled/loginSeller.dart';
import 'package:untitled/register.dart';
import 'package:untitled/registerSeller.dart';
import 'getstarted.dart';

class registerAs extends StatefulWidget {
  const registerAs({Key? key}) : super(key: key);

  @override
  _registerAsState createState() => _registerAsState();
}

class _registerAsState extends State<registerAs> {
  bool isCustomer=true;

  @override

  Widget build(BuildContext context) {

    return Scaffold(

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

      body: SingleChildScrollView(
        child: Container(
          height: MediaQuery.of(context).size.height,
          color: Colors.white,
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.all(20.0),
                child: Center(
                  child: Image(image: AssetImage('assets/images/logo black.png',
                  ),
                    width: 125,
                    height: 125,
                  ),
                ),
              ),

              SizedBox(
                height:60.0,
              ),

              Column(
                children: [
                  Center(
                    child: Text('Register as',
                      style:TextStyle(fontWeight: FontWeight.bold,
                          fontSize: 25.0),
                    ),
                  ),

                  SizedBox(
                    height:80,
                  ),

                   Row(
                     mainAxisAlignment: MainAxisAlignment.center,
                      children:[
                        Container(
                          width: 110.0,
                          height: 40.0,
                          alignment: Alignment.center,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(15.0,),
                            color: isCustomer ? Colors.black : Colors.white,
                          ),
                            child:GestureDetector(
                                onTap: ( () {
                                  setState(() {
                                    isCustomer= true;
                                  });
                                }),
                            child: Text('Customer',
                            style: TextStyle(color: isCustomer? Colors.white : Colors.black,
                              fontWeight: FontWeight.bold,fontSize: 20.0,),),
                            ),
                        ),


                        SizedBox(
                          width: 20.0,
                        ),

                        Container(
                         width: 80.0,
                          height: 40.0,
                          alignment: Alignment.center,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(15.0,),
                            color: isCustomer ? Colors.white : Colors.black,
                          ),

                          child:GestureDetector(
                            onTap: ( () {
                              setState(() {
                                isCustomer= false;
                              });
                            }),
                            child: Text('Seller',
                              style: TextStyle(color: isCustomer? Colors.black : Colors.white,
                              fontWeight: FontWeight.bold,fontSize: 20.0,),),
                          ),
                        ),

                      ],
                    ),


                  SizedBox(
                    height:80,
                  ),

                  MaterialButton(
                    height: 55,
                    minWidth: MediaQuery.of(context).size.width/1.9,
                    elevation:5.0,
                    shape: RoundedRectangleBorder(
                        borderRadius: new BorderRadius.circular(20)),
                    onPressed: () {
   isCustomer ? Navigator.push(context,
       MaterialPageRoute(builder: (context)=> RegisterScreen())) : Navigator.push(
       context,MaterialPageRoute(builder: (context)=> registerSeller()));
                    },
                    child: Text(
                      "Continue",
                      style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                        color: Colors.white,
                      ),
                    ),
                    color: Colors.black,
                  ),

                ],
              ),




            ],
          ),
        ),
      ),
    );
  }
}
