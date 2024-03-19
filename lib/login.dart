import 'package:flutter/material.dart';
import 'package:firebaseapp/signup.dart';
class Log extends StatefulWidget {
  const Log({super.key});

  @override
  State<Log> createState() => _LogState();
}

class _LogState extends State<Log> {
  TextEditingController email=TextEditingController();
  TextEditingController pass=TextEditingController();
  void login(){
    print(email.text);
    print(pass.text);
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          children: [
            Text('login'),
            SizedBox(height: 10,),
            Text('login to your account'),
            SizedBox(height: 20,),
            Container(height: 100,width: 600,
              child: TextField(controller: email,
                decoration: InputDecoration(
                    border: OutlineInputBorder(
                      borderRadius:BorderRadius.circular(20),
                    ),
                    labelText:'Email'
                ),),
            ),
            SizedBox(
              height:20 ,
            ),
            Container(height: 100,width: 600,
              child: TextField(controller: pass,
                decoration: InputDecoration(
                    border: OutlineInputBorder(
                      borderRadius:BorderRadius.circular(20),
                    ),
                    labelText:'Password'
                ),),
            ),
            SizedBox(height: 20,),
            TextButton(onPressed: () {
              setState(() {
                login();
              });
            }, child: Text('Login'),style: TextButton.styleFrom(backgroundColor: Colors.blue),),
            Text("don't have account?"),
            TextButton(onPressed: () {
              Navigator.push(context, MaterialPageRoute(builder: (context)=>Sign()));
            }, child: Text('sign up'),style: TextButton.styleFrom(backgroundColor: Colors.blue),),
Image.network('https://play-lh.googleusercontent.com/VkIsOP40ukvVf4sdKtN2LjjOJs3w24g93KzgrmBbf1zm05ORr-ka_oKCkC3_5Pu3JnSz',height: 100,)
              ],
          
        ),
      ),
    );
  }
}
