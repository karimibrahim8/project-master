import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

class birthdate extends StatefulWidget {
  const birthdate({Key? key}) : super(key: key);

  @override
  _birthdateState createState() => _birthdateState();
}

class _birthdateState extends State<birthdate> {

  TextEditingController dateCtl = TextEditingController();
  DateTime ? date;
  List items=['Male', 'Female'];
  String ? valueChoose;
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
              color: Colors.black),
        ),
      ),

      body:
      Container(
        color: Colors.white,
        child: Column(
          children: [
            Center(
              child: Image(image: AssetImage('assets/images/logo black.png',
              ),
                width: 125,
                height: 125,),
            ),

            SizedBox(
              height: 30,
            ),


            Padding(
              padding: const EdgeInsets.all(20.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  TextFormField(
                    controller: dateCtl,
                    decoration: InputDecoration(
                      hintText: ('Date Of Birth'),
                      suffixIcon: Icon(Icons.date_range_rounded),
                      enabledBorder: OutlineInputBorder(
                          borderSide: BorderSide(color: Colors.black26,),
                          borderRadius: BorderRadius.circular(20)
                      ),
                    ),
                    
                    onTap: () {
                      showDatePicker(context: context,
                        initialDate: DateTime.now(),
                        firstDate: DateTime(1900),
                        lastDate: DateTime.parse('2022-09-04'),
                      ).then((value) {
                        dateCtl.text = value
                            .toString()
                            .split(' ')
                            .first;
                        // dateCtl.text = date.toIso8601String();

                        if (date != null) {
                          setState(() {
                            date = date;
                          });
                        }
                      },
                      );
                    },
                    
                  ),

                  SizedBox(
                    height: 30.0,
                  ),

                  Container(
                    width: double.infinity,
                    padding:EdgeInsetsDirectional.only(start: 10.0) ,
                    decoration:BoxDecoration(
                      border:Border.all(color:Colors.black26),
                      borderRadius:BorderRadius.circular(20),
                    ),
                    child: DropdownButton(
                      icon: Icon(Icons.keyboard_arrow_down,
                      size: 25.0,
                      ),
                      isExpanded: true,
                      dropdownColor: Colors.white,
                      underline: SizedBox(),
                      value:valueChoose,
                      hint: Row(children:[ 
                        Text('Gender'),
                      ],
                      ),
                      onChanged:(newValue) {
                        setState(() {
                          valueChoose= newValue as String;
                        });
                      },
                      items: items.map((valueItem) {
                        return DropdownMenuItem(
                          value:valueItem,
                          child: Text(valueItem),
                        );
                      }).toList(),
                    ),
                  ),
                ],
              ),
            ),

            SizedBox(height:60),

            MaterialButton(
              height: 55,
              minWidth: 240,
              elevation:5.0,
              onPressed: () {},
              shape: RoundedRectangleBorder(
                borderRadius: new BorderRadius.circular(20),
              ),
              child: Text(
                'Continue',
                style:
                TextStyle(fontSize: 20,
                    fontWeight: FontWeight.bold,
                    color: Colors.white),
              ),
              color: Colors.black,
            ),


          ],
        ),
      ),
    );
  }
}
