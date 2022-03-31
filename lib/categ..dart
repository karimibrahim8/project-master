import 'package:flutter/material.dart';

class category extends StatefulWidget {
  const category({Key? key}) : super(key: key);

  @override
  State<category> createState() => _categoryState();
}

class _categoryState extends State<category> {

  // final checkBoxList= [
  //   CheckBox(title:'cairo'),
  //   CheckBox(title:'Alexandria'),
  //   CheckBox(title:'Tanta'),
  // ];

  bool _isChecked = false;
  List items=['Men','Women','Kids'];
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
            color: Colors.black,),
        ),
      ),

  body: Container(
    color: Colors.white,
    child: Column(
      children:[

        SizedBox(height: 40),

        Container(
          width: double.infinity,
          padding:EdgeInsetsDirectional.only(start: 10.0) ,
          decoration:BoxDecoration(
            border:Border.all(color:Colors.black26),
            borderRadius:BorderRadius.circular(20),
          ),
          child: DropdownButton(
            isExpanded: true,
            dropdownColor: Colors.white,
            underline: SizedBox(),
            value:valueChoose,
            hint: Text('Category'),
            onChanged:(newValue) {
              setState(() {
                valueChoose= newValue.toString();
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


        SizedBox(height: 40),



    ],
      ),
       ),

    );
   }
  }

// class CheckBox {
//   String title;
//   bool value;
//
//   CheckBox({required this.title, this.value=false});
// }