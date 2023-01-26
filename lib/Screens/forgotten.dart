import 'package:fapp/Screens/account.dart';
import 'package:fapp/Screens/newpassword.dart';
import 'package:flutter/material.dart';

class Forgotten extends StatefulWidget {
  const Forgotten({super.key});

  @override
  State<Forgotten> createState() => _ForgottenState();
}

class _ForgottenState extends State<Forgotten> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.white,
          elevation: 0.0,
          centerTitle: true,
          leading: IconButton(
            icon: Icon(Icons.arrow_back, color: Color(0xFF545D68)),
            onPressed: () {
              Navigator.of(context).pop();
            },
          ),
        ),
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
                        "Forgotten Password",
                        style: TextStyle(
                            color: Color.fromARGB(255, 0, 0, 0),
                            fontSize: 36,
                            fontWeight: FontWeight.bold),
                      ),
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
                        height: 30,
                      ),
                      const Text(
                        "Please Enter Your Email Address TO Receive Verification code",
                        style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.bold,
                            color: Color.fromARGB(255, 162, 162, 162)),
                      ),
                      SizedBox(
                        height: 30,
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
                          decoration: InputDecoration(
                              hintText: "Email",
                              hintStyle: TextStyle(
                                color: Colors.grey,
                                fontWeight: FontWeight.bold,
                              ),
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
                        height: 60,
                      ),
                      SizedBox(
                        height: 50,
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
                            "Send",
                            style: TextStyle(
                                color: Colors.white,
                                fontSize: 20,
                                fontWeight: FontWeight.bold),
                          ),
                        ),
                      ),
                    ]),
                  ),
                ),
              )
            ])));
  }
}
