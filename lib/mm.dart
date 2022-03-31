import 'package:flutter/material.dart';

class DynamicTextFieldPage extends StatefulWidget {
  const DynamicTextFieldPage({Key? key}) : super(key: key);

  @override
  _DynamicTextFieldPageState createState() => _DynamicTextFieldPageState();
}

class _DynamicTextFieldPageState extends State<DynamicTextFieldPage>
    with SingleTickerProviderStateMixin {
  final List<Phone> _phoneWidgets = <Phone>[];
  List<String> listOfTextEntries = [];

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(

      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 25, vertical: 30),
          child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                ListView(
                  shrinkWrap: true,
                  children: List.generate(_phoneWidgets.length, (i) {
                    return _phoneWidgets[i];
                  }),
                ),

                IconButton(onPressed: () {
                  setState(() {
                    _phoneWidgets.add(Phone(
                      fieldName: 'Phone Number ${_phoneWidgets.length + 1}',
                      controller: returnController(
                          "phoneController ${_phoneWidgets.length + 1}"),
                    ));
                  });
                }, icon: Icon(Icons.add,),
                color: Colors.red,),

              ]),
        ),
      ),
    );
  }

  TextEditingController returnController(String controllerName) {
    final controllerName = TextEditingController();
    return controllerName;
  }

  //You can see the list of text entries from here.
  // void showTextFieldEntries() {
  //   //listOfTextEntries = _phoneWidgets.map((i)=>i.controller.text.trim()).toList();
  //   _phoneWidgets.map((i) {
  //     //i.controller.text.trim();
  //     print("these are the listOfTextEntries ${i.controller.text.trim()}");
  //   }).toList();
  //
  //   //print("these are ${listOfTextEntries[0]}");
  // }

}

class Phone extends StatelessWidget {
  final String fieldName;
  final TextEditingController controller;

  const Phone({Key? key, this.fieldName = '', required this.controller})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(right: 8.0, bottom: 10.0),
      child:   TextFormField(
        keyboardType: TextInputType.number,
        style: TextStyle(
          fontSize: 18,
          fontWeight: FontWeight.bold,

        ),
        decoration: InputDecoration(
          enabledBorder: OutlineInputBorder(
              borderSide: BorderSide(color: Colors.black26),
              borderRadius: BorderRadius.circular(20)),
          focusedBorder: OutlineInputBorder(
              borderSide: BorderSide(color: Colors.deepOrange,width: 2.0),
              borderRadius: BorderRadius.circular(20)),

          prefix: Padding(
            padding: EdgeInsets.symmetric(horizontal: 8),
            child: Text(
              '(+02)',
              style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),

        ),
      ),
    );
  }
}



// Checkbox(
//   value: _isChecked,
//   onChanged: (v) {
//     setState(() {
//       _isChecked = !_isChecked;
//     });
//   },
// ),
