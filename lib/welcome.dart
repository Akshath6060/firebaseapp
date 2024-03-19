import 'package:flutter/material.dart';
import 'package:firebaseapp/login.dart';
import 'package:firebaseapp/signup.dart';

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          children: [
            Text('Welcome'),
            SizedBox(
              height: 40,
            ),
            Text('welcome to flutter app using flutter firebase'),
            Image.network('https://play-lh.googleusercontent.com/VkIsOP40ukvVf4sdKtN2LjjOJs3w24g93KzgrmBbf1zm05ORr-ka_oKCkC3_5Pu3JnSz'),
            SizedBox(
              height: 50,
            ),
            Container(
                height: 20,
                width: 100,
                child: TextButton(
                    onPressed: () {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) => Log()));
                    },
                    child: Text('Login'), style: TextButton.styleFrom(backgroundColor: Colors.blue),),
            ),
            SizedBox(height: 20,),
            Container(
                height: 20,
                width: 100,
                child: TextButton(
                    onPressed: () {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) => Sign()));
                    },
                    child: Text('sign up'),style: TextButton.styleFrom(backgroundColor: Colors.blue),)),
          ],
        ),
      ),
    );
  }
}
