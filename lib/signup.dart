import 'package:flutter/material.dart';
import 'package:firebaseapp/login.dart';
class Sign extends StatefulWidget {
  const Sign({super.key});

  @override
  State<Sign> createState() => _SignState();
}

class _SignState extends State<Sign> {
  TextEditingController name=TextEditingController();
  TextEditingController pass=TextEditingController();
  TextEditingController email=TextEditingController();
  TextEditingController password=TextEditingController();
  void reg(){
    print(name.text);
    print(pass.text);
    print(email.text);
    print(password.text);
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          children: [
            Text('sign up'),
            Container(
              width: 600,
              height: 100,
              child: TextField(
                  controller: name,
                  decoration: InputDecoration(
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(20),
                      ),
                      labelText: 'enter your name')),
            ),
            Container(
              width: 600,
              height: 100,
              child: TextField(
                  controller: email,
                  decoration: InputDecoration(
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(20),
                      ),
                      labelText: 'enter your email')),
            ),
            Container(
              width: 600,
              height: 100,
              child: TextField(
                  controller: password,
                  decoration: InputDecoration(
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(20),
                      ),
                      labelText: 'enter your password')),
            ),
            Container(
              width: 600,
              height: 100,
              child: TextField(
                  controller: pass,
                  decoration: InputDecoration(
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(20),
                      ),
                      labelText: 'confirm password')),
            ),
            TextButton(onPressed: () {setState(() {
              reg();
            });
            }, child: Text('Sign up'),style: TextButton.styleFrom(backgroundColor: Colors.blue),),
            SizedBox(height: 20,),
            Text('already have an account?'),
            TextButton(onPressed: () {
              Navigator.push(context, MaterialPageRoute(builder: (context)=>Log()));
            }, child: Text('login'),style: TextButton.styleFrom(backgroundColor: Colors.blue),)
          ],
        ),
      ),
    );
  }
}
