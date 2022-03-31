import 'package:flutter/material.dart';
class categories extends StatefulWidget {
  const categories({Key? key}) : super(key: key);

  @override
  State<categories> createState() => _categoriesState();
}

class _categoriesState extends State<categories> {

  bool checkedValue = false;
  // bool valuesecond = false;


  List items=['Men','Women','Kids'];
  String  valueChoose = 'Men';
  bool _isChecked = true;
  String _currText = '';

  List categories=['shoes','Pants','Blouses'];
  bool value = false;

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

      body:
      Column(
        children:[

      //     Container(
      //       width: double.infinity,
      //       padding:EdgeInsetsDirectional.only(start: 10.0) ,
      //       decoration:BoxDecoration(
      //         border:Border.all(color:Colors.black26),
      //         borderRadius:BorderRadius.circular(20),
      //       ),
      //       child: DropdownButton(
      //         hint: Text('Please choose Category'),
      //         // Not necessary for Option 1
      //         items:[
      //           DropdownMenuItem(
      //             child:  Text('Men'),
      //             value: 'Men',
      //           ),
      //           DropdownMenuItem(
      //             child:  Text('Women'),
      //             value: 'Women',
      //           ),
      //           DropdownMenuItem(
      //             child:  Text('Kids'),
      //             value: 'Kids',
      //
      //           ),
      //         ],
      //         onChanged: (newValue) {
      //           setState(() {
      //             valueChoose = newValue as String ;
      //           });
      //         },
      //       ),
      // ),

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

          Expanded(
            child: Container(
              padding:EdgeInsetsDirectional.only(start: 10.0) ,
              decoration:BoxDecoration(
                border:Border.all(color:Colors.black26),
                borderRadius:BorderRadius.circular(20),
              ),
              child:
              DropdownButton(
                isExpanded: true,
                dropdownColor: Colors.white,
                underline: SizedBox(),
                value:valueChoose,
                hint: Text('Categories',
                ),
                onChanged:(newValue) {
                  setState(() {
                    valueChoose= newValue.toString() ;
                  });
                },
                items: categories.map((valueItem) {
                  return DropdownMenuItem(
                    value:valueItem,
                    child: Row(
                      children:[
                        Checkbox(
                          value: _isChecked,
                          onChanged: (value) {
                            setState(() {
                              _isChecked = !_isChecked;
                            });
                          },
                        ),
                        Text(valueItem),
                      ],
                    ),

                  );
                }).toList(),
              ),
            ),
          ),



    ],
    ),

    );
  }
}
