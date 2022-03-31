import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:untitled/register.dart';

class loginscren extends StatefulWidget {
  const loginscren({Key? key}) : super(key: key);


  @override
  _loginscrenState createState() => _loginscrenState();
}

class _loginscrenState extends State<loginscren> {
  var emailController= TextEditingController();
  var passwordController= TextEditingController();
  var formKey= GlobalKey<FormState>();
  bool isPassword = true;

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
            color: Colors.white,
            child: Padding(
              padding: const EdgeInsets.all(20.0),
              child: Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children:[
                    Center(
                      child: Image(image: AssetImage('assets/images/logo black.png',
                      ),
                        width: 125,
                        height: 125,),
                    ),

                    SizedBox(
                      height: 20.0,
                    ),

                    Text('Login to your account',
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 23.0,
                        fontWeight: FontWeight.bold,
                      ),
                    ),

                    SizedBox(
                      height: 30.0,
                    ),

                    TextFormField(
                      controller: emailController,
                      // type:TextInputType.emailAddress,
                      cursorColor: Colors.black,
                      decoration: InputDecoration(
                        prefixIcon:const Icon(Icons.email),
                        filled: true,
                        fillColor: Colors.white70,
                        hintText:'Email',
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
                      controller: passwordController,
                      obscureText: isPassword,
                      // type:TextInputType.visiblePassword,
                      validator: (value) {
                        if(value!.isEmpty) {
                          return 'password must not be empty';
                        }
                        return null;
                      },
                      cursorColor: Colors.black,
                      decoration: InputDecoration(
                        prefixIcon:const Icon(Icons.lock),
                        suffixIcon: IconButton(onPressed: () {
                          setState(() {
                            isPassword = !isPassword;
                          });
                        },
                          icon: Icon( isPassword ? Icons.visibility : Icons.visibility_off),
                        ),

                        filled: true,
                        fillColor: Colors.white70,
                        hintText:'Password' ,
                        enabledBorder: OutlineInputBorder(
                            borderSide: BorderSide(color: Colors.black26,),
                            borderRadius: BorderRadius.circular(20)
                        ),
                        focusedBorder:  OutlineInputBorder(
                            borderSide: BorderSide(color: Colors.deepOrange,width: 2.0),
                            borderRadius: BorderRadius.circular(20)
                        ),
                      ),
                    ),

                    Container(
                      alignment: Alignment.centerRight,
                      child: TextButton(
                        style: TextButton.styleFrom(
                          textStyle: TextStyle(
                            color: Colors.black,
                            fontWeight: FontWeight.bold,
                            fontSize: 13,
                          ),
                        ),
                        onPressed: () {},
                        child:const Text('Forget password ?',
                          style: TextStyle(color: Colors.deepOrange),),
                      ),
                    ),

                    SizedBox(
                      height: 40.0,
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
                          if (formKey.currentState!.validate()) {}
                          // Navigator.push(context,MaterialPageRoute(builder: (context)=> RegisterScreen()));
                        },
                        child: Text(
                          "Sign In",
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
                      height: 30.0,
                    ),

                    Center(
                      child: Text('Or Sign In With',
                        style:TextStyle(color: Colors.grey,fontWeight: FontWeight.bold,),
                      ),
                    ),


                    SizedBox(
                      height: 20.0,
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
                      height: 40.0,
                    ),

                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          'Don\'t have account ?',
                          style: TextStyle(
                            color: Colors.black,
                          ),
                        ),
                        TextButton(onPressed:() {
                          Navigator.push(context,MaterialPageRoute(builder: (context)=> RegisterScreen()));
                        },
                          child: Text(
                              'Sign Up',
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
      ),
      
    );
  }
}

