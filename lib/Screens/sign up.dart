import 'package:fapp/Screens/Homescreen.dart';
import 'package:flutter/material.dart';

class SignUp extends StatefulWidget {
  const SignUp({super.key});

  @override
  State<SignUp> createState() => _SignUpState();
}

class _SignUpState extends State<SignUp> {
  var emailController = TextEditingController();
  get passwordController => TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Container(
            width: double.infinity,
            color: Color.fromARGB(238, 234, 229, 238),
            child: Column(children: <Widget>[
              const SizedBox(height: 80),
              Padding(
                padding: EdgeInsets.all(20),
                child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Text(
                        "Create your Account",
                        style: TextStyle(
                            color: Color.fromARGB(255, 0, 0, 0),
                            fontSize: 30,
                            fontWeight: FontWeight.bold),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      //Text(
                      // "Welcome back!",
                      // style: TextStyle(
                      //  color: Color.fromARGB(255, 33, 30, 30),
                      //  fontSize: 40,
                      //  ),
                      //),
                    ]),
              ),
              SizedBox(
                height: 20,
              ),
              Expanded(
                child: Container(
                  decoration: BoxDecoration(
                      color: Color.fromARGB(255, 255, 255, 255),
                      borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(60),
                          topRight: Radius.circular(60))),
                  child: Padding(
                    padding: EdgeInsets.all(20),
                    child: Column(children: <Widget>[
                      SizedBox(
                        height: 40,
                      ),
                      Container(
                        padding: EdgeInsets.all(10),
                        decoration: BoxDecoration(
                            color: Color.fromARGB(255, 255, 255, 255),
                            borderRadius: BorderRadius.circular(30),
                            boxShadow: [
                              // BoxShadow(
                              // color:
                              //   Color.fromARGB(223, 177, 177, 177),
                              // blurRadius: 20,
                              // offset: Offset(0, 10))
                            ]),
                        child: TextField(
                          controller: emailController,
                          decoration: InputDecoration(
                              hintText: "Name",
                              hintStyle: TextStyle(
                                  color: Colors.grey,
                                  fontWeight: FontWeight.bold),
                              enabledBorder: (OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(30),
                                  borderSide: BorderSide(
                                    color: Colors.grey,
                                    width: 1.0,
                                  ))),
                              border: InputBorder.none),
                        ),
                      ),
                      SizedBox(
                        height: 0,
                      ),
                      Container(
                        padding: EdgeInsets.all(10),
                        decoration: BoxDecoration(
                            color: Color.fromARGB(255, 255, 255, 255),
                            borderRadius: BorderRadius.circular(30),
                            boxShadow: [
                              //  BoxShadow(
                              // color:
                              //   Color.fromARGB(223, 177, 177, 177),
                              // blurRadius: 10,
                              //  offset: Offset(0, 10))
                            ]),
                        child: TextField(
                          controller: passwordController,
                          decoration: InputDecoration(
                              hintText: "Email",
                              hintStyle: TextStyle(
                                  color: Colors.grey,
                                  fontWeight: FontWeight.bold),
                              enabledBorder: (OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(30),
                                  borderSide: BorderSide(
                                    color: Colors.grey,
                                    width: 1.0,
                                  ))),
                              border: InputBorder.none),
                        ),
                      ),
                      Container(
                        padding: EdgeInsets.all(10),
                        decoration: BoxDecoration(
                            color: Color.fromARGB(255, 255, 255, 255),
                            borderRadius: BorderRadius.circular(30),
                            boxShadow: [
                              //  BoxShadow(
                              // color:
                              //   Color.fromARGB(223, 177, 177, 177),
                              // blurRadius: 10,
                              //  offset: Offset(0, 10))
                            ]),
                        child: TextField(
                          controller: passwordController,
                          decoration: InputDecoration(
                              hintText: "password",
                              hintStyle: TextStyle(
                                  color: Colors.grey,
                                  fontWeight: FontWeight.bold),
                              enabledBorder: (OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(30),
                                  borderSide: BorderSide(
                                    color: Colors.grey,
                                    width: 1.0,
                                  ))),
                              border: InputBorder.none),
                        ),
                      ),
                      SizedBox(
                        height: 0,
                      ),
                      Container(
                        padding: EdgeInsets.all(10),
                        decoration: BoxDecoration(
                            color: Color.fromARGB(255, 255, 255, 255),
                            borderRadius: BorderRadius.circular(30),
                            boxShadow: [
                              //  BoxShadow(
                              // color:
                              //   Color.fromARGB(223, 177, 177, 177),
                              // blurRadius: 10,
                              //  offset: Offset(0, 10))
                            ]),
                        child: TextField(
                          controller: passwordController,
                          decoration: InputDecoration(
                              hintText: "Confirm password",
                              hintStyle: TextStyle(
                                  color: Colors.grey,
                                  fontWeight: FontWeight.bold),
                              enabledBorder: (OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(30),
                                  borderSide: BorderSide(
                                    color: Colors.grey,
                                    width: 1.0,
                                  ))),
                              border: InputBorder.none),
                        ),
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      Container(
                        height: 50,
                        margin: EdgeInsets.symmetric(horizontal: 70),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(50),
                          color: Color.fromARGB(255, 114, 152, 183),
                        ),
                        child: Center(
                          child: Text(
                            "Sign Up",
                            style: TextStyle(
                                color: Colors.white,
                                fontSize: 20,
                                fontWeight: FontWeight.bold),
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 80,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          const Text(
                            "you already have an account? ",
                            style: TextStyle(
                                fontSize: 16,
                                fontWeight: FontWeight.w400,
                                color: Colors.black),
                          ),
                          InkWell(
                            onTap: () {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (_) => HomeScreen()));
                            },
                            child: const Text(
                              "Login",
                              style: TextStyle(
                                  fontSize: 16,
                                  fontWeight: FontWeight.w400,
                                  color: Color(0xfffca148)),
                            ),
                          ),
                        ],
                      )
                    ]),
                  ),
                ),
              )
            ])));
  }
}
