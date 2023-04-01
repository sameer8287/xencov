// ignore_for_file: camel_case_types, empty_catches

import 'dart:convert';
// import 'dart:math';

import 'package:flutter/material.dart';
import 'package:xencov/Screens/Screen2.dart';
import 'package:xencov/Screens/screen1.dart';
import 'package:http/http.dart';

class Login_page extends StatelessWidget {
  const Login_page({super.key});

  @override
  Widget build(BuildContext context) {
    final email = TextEditingController();
    final pass = TextEditingController();
    // var data;

    void login(String email, String pass) async {
      try {
        Response response = await post(Uri.parse('https://reqres.in/api/login'),
            body: {'email': email, 'password': pass});
        if (response.statusCode == 200) {
          var data = jsonDecode(response.body.toString());
          print(data);
          Navigator.push(context, MaterialPageRoute(builder: (context) => Screen2()));
          
        } else {
          
        }
      } catch (e) {
      }
    }
    return Scaffold(
      backgroundColor: Colors.blue.shade900,
      body: SingleChildScrollView(
        child: Center(
            child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SizedBox(
                height: 120,
              ),
              Row(
                children: [
                  Text(
                    'Welcome, ',
                    style: TextStyle(
                        fontSize: 40,
                        fontWeight: FontWeight.bold,
                        color: Colors.white),
                  ),
                  Text(
                    'to Login',
                    style: TextStyle(fontSize: 40, color: Colors.white),
                  )
                ],
              ),
              Text(
                'in continue',
                style: TextStyle(fontSize: 40, color: Colors.white),
              ),
              SizedBox(
                height: 20,
              ),
              Container(
                height: MediaQuery.of(context).size.height * 0.1,
                child: Row(children: [
                  Expanded(
                      child: Container(
                    color: Colors.blue.shade800,
                  )),
                  Expanded(
                      child: Container(
                    color: Colors.blue.shade600,
                    child: Padding(
                      padding: const EdgeInsets.all(20.0),
                      child: Text(
                        'Login',
                        style: TextStyle(fontSize: 40, color: Colors.white),
                      ),
                    ),
                  ))
                ]),
              ),
              SizedBox(
                height: 30,
              ),
              TextFormField(
                // style: TextStyle(color: Colors.white),
                controller: email,
                decoration: InputDecoration(
                  label: Text(
                    'Email',
                    style: TextStyle(color: Colors.white),
                  ),
                ),
              ),
              SizedBox(
                height: 40,
              ),
              TextFormField(
                // style: TextStyle(color: Colors.white),
                controller: pass,
                decoration: InputDecoration(
                  label: Text(
                    'Password',
                    style: TextStyle(color: Colors.white),
                  ),
                ),
              ),
              SizedBox(
                height: 60,
              ),
              GestureDetector(
                onTap: () {
                  login(email.text.toString(), pass.text.toString());
                 
                },
                child: Container(
                    margin: EdgeInsets.only(left: 60),
                    height: MediaQuery.of(context).size.height * 0.09,
                    width: MediaQuery.of(context).size.width * 0.6,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: Colors.white,
                    ),
                    child: Center(
                      child: Text(
                        'Login',
                        style:
                            TextStyle(fontSize: 40, color: Colors.blue.shade800),
                      ),
                    )),
              ),
              SizedBox(
                height: 20,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  TextButton(
                      onPressed: () {},
                      child: Text(
                        'Forget your password?/',
                        style: TextStyle(fontSize: 18, color: Colors.white),
                      )),
                  TextButton(
                      onPressed: () {
                        Navigator.push(context,
                            MaterialPageRoute(builder: (context) => Screen1()));
                      },
                      child: Text(
                        'Sign up',
                        style: TextStyle(fontSize: 18, color: Colors.white),
                      ))
                ],
              )
            ],
          ),
        )),
      ),
    );
  }
}
