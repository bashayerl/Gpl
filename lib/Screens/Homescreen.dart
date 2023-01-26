import 'package:fapp/Screens/Textfield.dart';
import 'package:fapp/Screens/botton.dart';
import 'package:fapp/Screens/forgotten.dart';
import 'package:fapp/Screens/sign%20up.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  HomeScreen({super.key});
  final usernameController = TextEditingController();
  final PasswordController = TextEditingController();
//signuser in method
  void SignIn() {}
  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    var emailController = TextEditingController();
    var passwordController = TextEditingController();

    return Scaffold(
        resizeToAvoidBottomInset: false,
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
                        "Login",
                        style: TextStyle(
                            color: Color.fromARGB(255, 0, 0, 0),
                            fontSize: 40,
                            fontWeight: FontWeight.bold),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Text(
                        "Welcome back!",
                        style: TextStyle(
                          color: Color.fromARGB(255, 33, 30, 30),
                          fontSize: 40,
                        ),
                      ),
                    ]),
              ),
              SizedBox(
                height: 10,
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
                      ),

                      const SizedBox(height: 0),
                      //userName
                      myTextfield(
                        controller: usernameController,
                        hintText: 'name',
                        obsureText: false,
                      ),
                      const SizedBox(height: 20),
                      myTextfield(
                        controller: PasswordController,
                        hintText: 'password',
                        obsureText: true,
                      ),

                      Container(
                        padding: EdgeInsets.all(10),
                        decoration: BoxDecoration(
                            color: Color.fromARGB(255, 255, 255, 255),
                            borderRadius: BorderRadius.circular(30),
                            boxShadow: []),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      InkWell(
                        onTap: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (_) => const Forgotten()));
                        },
                        child: const Text(
                          "forgot your password",
                          style: TextStyle(
                              fontSize: 16,
                              fontWeight: FontWeight.bold,
                              color: Color.fromARGB(255, 162, 162, 162)),
                        ),
                      ),
                      const SizedBox(height: 25),
                      Button(
                        onTap: SignIn,
                      ),

                      SizedBox(
                        height: 20,
                      ),

                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          const Text(
                            "Don't have an account? ",
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
                                      builder: (_) => const SignUp()));
                            },
                            child: const Text(
                              "Sign Up",
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
              ),
            ])));
  }
}
