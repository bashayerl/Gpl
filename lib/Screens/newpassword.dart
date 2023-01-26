import 'package:fapp/Screens/forgotten.dart';
import 'package:fapp/Screens/home.dart';
import 'package:fapp/Screens/verify.dart';
import 'package:flutter/material.dart';

class NewPassword extends StatefulWidget {
  const NewPassword({super.key});

  @override
  State<NewPassword> createState() => _NewPasswordState();
}

class _NewPasswordState extends State<NewPassword> {
  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
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
                        "Create New Password",
                        style: TextStyle(
                            color: Color.fromARGB(255, 0, 0, 0),
                            fontSize: 35,
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
                        "Please Enter Your Password",
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
                              hintText: "password",
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
                              hintText: "confin password",
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
