// Row(
//   children: <Widget> [
//     Radio(value: 'Male', groupValue: gender, onChanged: (val) {
//       gender=val;
//     } ),
//     Text('Male'),
//
//     SizedBox(width: 10.0,),
//
//     Radio(value: 'Female', groupValue: gender, onChanged: (val) {
//       gender= val;
//       setState(() {
//
//       });
//     } ),
//     Text('Female'),
//   ],
// ),

//   ListTile(
//     title: const Text('Male'),
//     leading: Radio(
//       value: 'Male',
//       groupValue: _value,
//       onChanged: (value) {
//         setState(() {
//           _value = 'Male' as List<String>;
//         });
//       },
//     ),
//   ),
// SizedBox(
//   width: 10.0,
// ),

// ListTile(
//   title: const Text('Female'),
//   leading: Radio(
//     value: 'Female',
//     groupValue: _value,
//     onChanged: (value) {
//       setState(() {
//         _value = 'female' as List<String>;
//       });
//     },
//   ),
// ),

// Container(
//   width: double.infinity,
//   child: Column(
//     children: <Widget>[
//       DropdownButton<String>(
//         items: [
//         DropdownMenuItem<String> (
//           value: 'Male',
//           child: Text('Male'),
//         ),
//
//         DropdownMenuItem<String> (
//           value: 'Female',
//           child: Text('Female'),
//         ),
//       ],
//         onChanged: (_value) => {
//         print(_value.toString()),
//         setState(() {
//         value = _value!;
//         }),
//       },
//       hint: Text('Gender'),
//       ),
//     Text('$value'),
//     ],
//   ),
// ),



// style: ButtonStyle(
//   foregroundColor:
//   MaterialStateProperty.all<Color>(Colors.white),
//   backgroundColor:
//   MaterialStateProperty.all<Color>(Colors.black),
//   shape:
//   MaterialStateProperty.all<RoundedRectangleBorder>(
//     RoundedRectangleBorder(
//       borderRadius: BorderRadius.circular(24.0),
//     ),
//   ),
// ),



// ListView(
// children: [
// checkBoxList.map((item) =>
// ListTile(
// leading:
// Checkbox(
// value: item.value,
// onChanged: (value) {
// setState(() {
// item.value =!item.value;
// });
// },
// ),
// title: Text( item.title,
// style: TextStyle(fontWeight: FontWeight.bold, fontSize: 15.0),),
// ),
// ).toList()
//
//
// ],
// ),