import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:untitled/verify.dart';

import 'login.dart';


class RegisterScreen extends StatefulWidget {
  const RegisterScreen({Key? key}) : super(key: key);

  @override
  _RegisterScreenState createState() => _RegisterScreenState();
}

class _RegisterScreenState extends State<RegisterScreen> {
  var firstnameController= TextEditingController();
  var secondnameController= TextEditingController();
  var addressController= TextEditingController();
  var streetController= TextEditingController();
  var areaController= TextEditingController();
  var emailController= TextEditingController();
  var passwordController= TextEditingController();
  var confirmPasswordController= TextEditingController();
  bool isPassword = true;
  bool confirmPassword = true;

  String value= '';
  final formKey = GlobalKey<FormState>();
  List items=['', ''];
  String ? valueChoose;


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body:
      SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Container(
          color: Colors.white,
          child: Padding(
            padding: const EdgeInsets.all(20.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children:[
                Center(
                  child: Image(image: AssetImage('assets/images/logo black.png',
                  ),
                    width: 125,
                    height: 125,
                  ),
                ),

                Text(
                    'Create your account',
                    style:TextStyle( fontWeight: FontWeight.bold,fontSize: 23.0,)
                ),

                SizedBox(
                  height: 20.0,
                ),

                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children:[
                  Expanded(
                    child: TextFormField(
                          controller:firstnameController,

                          decoration: InputDecoration(
                            fillColor: Colors.white,
                            filled: true,
                            hintText: 'First Name',
                            prefixIcon: Icon(Icons.drive_file_rename_outline,),
                            enabledBorder: OutlineInputBorder(
                                borderSide: BorderSide(color: Colors.black26,),
                                borderRadius: BorderRadius.circular(20)
                            ),
                            focusedBorder:  OutlineInputBorder(
                                borderSide: BorderSide(color: Colors.deepOrange,width: 2.0),
                                borderRadius: BorderRadius.circular(20)
                            ),
                          ),
                          validator: (value) {
                            if(value!.isEmpty) {
                              return 'First Name must not be empty';
                            }
                            return null;
                          },
                        ),
                  ),


                    SizedBox(
                      width:10.0,
                    ),

               Expanded(
                    child: TextFormField(
                          controller:secondnameController,
                          decoration: InputDecoration(
                            fillColor: Colors.white,
                            filled: true,
                            hintText: 'Second Name',
                            prefixIcon: Icon(Icons.drive_file_rename_outline,),
                            enabledBorder: OutlineInputBorder(
                                borderSide: BorderSide(color: Colors.black26,),
                                borderRadius: BorderRadius.circular(20)
                            ),
                            focusedBorder:  OutlineInputBorder(
                                borderSide: BorderSide(color: Colors.deepOrange,width: 2.0),
                                borderRadius: BorderRadius.circular(20)
                            ),
                          ),
                          validator: (value) {
                            if(value!.isEmpty) {
                              return 'Second Name must not be empty';
                            }
                            return null;
                          },
                        ),
                ),
                  ],
                ),

                SizedBox(
                  height: 20.0,
                ),

                TextFormField(
                  controller:emailController,
                  keyboardType: TextInputType.emailAddress,
                  decoration: InputDecoration(
                    fillColor: Colors.white,
                    filled: true,
                    hintText: 'Email',
                    prefixIcon: Icon(Icons.email,),
                    enabledBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.black26,),
                        borderRadius: BorderRadius.circular(20)
                    ),
                    focusedBorder:  OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.deepOrange,width: 2.0),
                        borderRadius: BorderRadius.circular(20)
                    ),
                  ),
                  validator: (value) {
                    if(value!.isEmpty) {
                      return 'Email must not be empty';
                    }
                    return null;
                  },
                ),


                SizedBox(
                  height: 20.0,
                ),

                TextFormField(
                  controller:passwordController,
                  obscureText: isPassword,
                  decoration: InputDecoration(
                    fillColor: Colors.white,
                    filled: true,
                    hintText: 'Password',
                    prefixIcon: Icon(Icons.lock,),
                    suffixIcon: IconButton(onPressed: () {
                      setState(() {
                        isPassword = !isPassword;
                      });
                    },
                      icon: Icon( isPassword ? Icons.visibility : Icons.visibility_off,),
                    ),
                    enabledBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.black26,),
                        borderRadius: BorderRadius.circular(20)
                    ),
                    focusedBorder:  OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.deepOrange,width: 2.0),
                        borderRadius: BorderRadius.circular(20)
                    ),
                  ),
                  validator: (value) {
                    if(value!.isEmpty) {
                      return 'password must not be empty';
                    }
                    return null;
                  },
                ),

                SizedBox(
                  height: 20.0,
                ),

                TextFormField(
                  controller:confirmPasswordController,
                  obscureText: confirmPassword,
                  decoration: InputDecoration(
                    fillColor: Colors.white,
                    filled: true,
                    hintText: 'Confirm Password',
                    prefixIcon: Icon(Icons.lock),
                    suffixIcon: IconButton(onPressed: () {
                      setState(() {
                        confirmPassword = !confirmPassword;
                      });
                    },
                      icon: Icon( confirmPassword ? Icons.visibility : Icons.visibility_off,),
                    ),
                    enabledBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.black26,),
                      borderRadius: BorderRadius.circular(20),
                    ),
                    focusedBorder:  OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.deepOrange,width: 2.0),
                        borderRadius: BorderRadius.circular(20)
                    ),
                  ),
                  validator: (value) {
                    if(value!.isEmpty) {
                      return 'confirm password must not be empty';
                    }
                    return null;
                  },
                ),

                SizedBox(
                  height: 20.0,
                ),

                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [

                    Expanded(
                      child: Container(
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
                          hint: Text('City'),
                          onChanged:(newValue) {
                            setState(() {
                              valueChoose= newValue as String?;
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
                    ),

                    SizedBox(
                      width: 5.0,
                    ),

                    Expanded(
                      child: TextFormField(
                        controller:areaController,
                        decoration: InputDecoration(
                          fillColor: Colors.white,
                          filled: true,
                          hintText: 'Area',
                          prefixIcon: Icon(Icons.area_chart_outlined,),
                          enabledBorder: OutlineInputBorder(
                              borderSide: BorderSide(color: Colors.black26,),
                              borderRadius: BorderRadius.circular(20)
                          ),
                          focusedBorder:  OutlineInputBorder(
                              borderSide: BorderSide(color: Colors.deepOrange,width: 2.0),
                              borderRadius: BorderRadius.circular(20)
                          ),
                        ),

                        validator:(value) {
                          if(value!.isEmpty){
                            return 'The Area Must not be empty';}
                          else{
                            return null;
                          }
                        },
                      ),
                    ),
                ],
                ),

                SizedBox(
                  height: 20.0,
                ),

        TextFormField(
              controller:streetController,
              decoration: InputDecoration(
                fillColor: Colors.white,
                filled: true,
                hintText: 'Street',
                prefixIcon: Icon(Icons.home,),
                enabledBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.black26,),
                    borderRadius: BorderRadius.circular(20)
                ),
                focusedBorder:  OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.deepOrange,width: 2.0),
                    borderRadius: BorderRadius.circular(20)
                ),
              ),

              validator:(value) {
                if(value!.isEmpty){
                  return 'The Address Must not be empty';}
                else{
                  return null;
                }
              },
            ),

                SizedBox(
                  height: 25.0,
                ),


                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 70),
                  child: MaterialButton(
                    height: 55,
                    minWidth: 340,
                    elevation:5.0,
                    shape: RoundedRectangleBorder(
                        borderRadius: new BorderRadius.circular(20)),
                    onPressed: () {
                      // if (formKey.currentState!.validate()) {
                      // }
                      Navigator.push(context,MaterialPageRoute(builder: (context)=> Verify()));

                    },
                    child: Text(
                      "Sign Up",
                      style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                        color: Colors.white,
                      ),
                    ),
                    color: Colors.black,
                  ),
                ),

                SizedBox(
                  height: 10.0,
                ),

                Center(
                  child: Text('Or Sign Up With',
                    style:TextStyle(color: Colors.grey,fontWeight: FontWeight.bold,),
                  ),
                ),


                SizedBox(
                  height: 10.0,
                ),

                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    MaterialButton(
                      shape: OutlineInputBorder(
                        borderRadius: new BorderRadius.circular(15),
                        borderSide: BorderSide(color: Colors.black26,),
                      ),
                      minWidth: 150.0,
                      height: 40,
                      onPressed:(){},
                      child:
                      Row(
                        children:[ Image(image: AssetImage('assets/images/search.png'),
                          width: 25,
                          height: 23,),

                          SizedBox(
                            width: 10,
                          ),

                          Text('Google', style: TextStyle(color: Colors.black45),),
                        ],
                      ),
                    ),


                    SizedBox(
                      width: 10.0,
                    ),

                    MaterialButton(
                      shape: OutlineInputBorder(
                        borderRadius: new BorderRadius.circular(15),
                        borderSide: BorderSide(color: Colors.black26,),
                      ),
                      minWidth: 150.0,
                      height: 40,
                      onPressed:(){},
                      child:
                      Row(
                        children:[
                          Image(image: AssetImage('assets/images/facebook.png'),
                            width: 25,
                            height: 25,),

                          SizedBox(
                            width: 10,
                          ),

                          Text('Facebook', style: TextStyle(color: Colors.black45),),

                        ],
                      ),
                    ),

                  ],
                ),

                SizedBox(
                  height: 5.0,
                ),

                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      'Already have account ?',
                      style: TextStyle(
                        color: Colors.black,
                      ),
                    ),

                    TextButton(onPressed:() {
                      Navigator.push(context,MaterialPageRoute(builder: (context)=> loginscren()));
                    },
                      child: Text(
                          'Sign In',
                          style:TextStyle(color: Colors.deepOrange,fontWeight: FontWeight.bold)
                      ),
                    ),
                  ],
                ),

              ],
            ),
          ),
        ),
      ),
    );
  }
}


