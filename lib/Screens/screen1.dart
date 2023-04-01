import 'package:flutter/material.dart';
// import 'package:xencov/Screens/Login_page.dart';

class Screen1 extends StatefulWidget {
  const Screen1({super.key});

  @override
  State<Screen1> createState() => _Screen1State();
}

class _Screen1State extends State<Screen1> {
  // final Color  backgroundolor = Color(#0043AC);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue.shade900,
      body: Center(
          child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
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
                  'to sing',
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
                      'Sign up',
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
              decoration: InputDecoration(
                label: Text(
                  'Phone number',
                  style: TextStyle(color: Colors.white),
                ),
              ),
            ),
            SizedBox(
              height: 40,
            ),
            TextFormField(
              // style: TextStyle(color: Colors.white),
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
            Container(
                margin: EdgeInsets.only(left: 60),
                height: MediaQuery.of(context).size.height * 0.09,
                width: MediaQuery.of(context).size.width * 0.6,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: Colors.white,
                ),
                child: Center(
                  child: Text(
                    'Sign up',
                    style: TextStyle(fontSize: 40, color: Colors.blue.shade800),
                  ),
                )),
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
                      Navigator.pop(context);
                    },
                    child: Text(
                      'Login',
                      style: TextStyle(fontSize: 18, color: Colors.white),
                    ))
              ],
            )
          ],
        ),
      )),
    );
  }
}
