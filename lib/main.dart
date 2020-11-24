

import 'package:flutter/material.dart';

void main()
{
  runApp(MyApp());
  
}


class MyApp extends StatelessWidget{
  @override 
  Widget build(BuildContext context){
    return MaterialApp(
      title : 'LOGIN PAGE',
      home : LoginPage(),
      debugShowCheckedModeBanner: false,
      );
  }
}
class LoginPage  extends StatefulWidget {
  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage > {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: ListView(
          padding:EdgeInsets.symmetric(horizontal: 18.0),
          children: <Widget> [
            Column(
              children:<Widget>[
            SizedBox(height:40,),
            Image.asset('assets/bmsce.png'),
            SizedBox(height: 40,),
            Text('LOGIN',style: TextStyle(fontSize: 25,color:Colors.redAccent),)
          ],
            ), 
            SizedBox(height : 60.0,),
            TextField(
              decoration: InputDecoration(
                labelText: "Email",
                labelStyle: TextStyle(fontSize: 20),
                filled: true,

              ),
            ),
            SizedBox(height: 20.0,),
             TextField(
               obscureText: true,
              decoration: InputDecoration(
                labelText: "Password",
                labelStyle: TextStyle(fontSize: 20),
                filled: true,

              ),
            ),
            SizedBox(height :20,),
            Column(
              children: <Widget>[
                ButtonTheme(
                  height: 50,
                  disabledColor: Colors.blueAccent,
                  child: RaisedButton(
                    disabledElevation: 4.0,
                  onPressed: null,
                  child: Text('LOGIN',style: TextStyle(fontSize: 20,color: 
                  Colors.white)),),
                ),
                SizedBox(height :20,),
                Text('New Student? Sign Up here')
              ],)
          ],
        ),  
      ),

      
    );
  }
}