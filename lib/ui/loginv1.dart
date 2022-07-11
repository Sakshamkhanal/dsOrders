import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';


class LoginScreen extends StatefulWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _primaryButton extends StatefulWidget {

  final String btnText;
_primaryButton({this.btnText=''});


 // const _primaryButton({ Key? key }) : super(key: key);

  @override
  State<_primaryButton> createState() => __primaryButtonState();
}

class __primaryButtonState extends State<_primaryButton> {
  

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Color.fromARGB(255, 231, 239, 245),
        borderRadius: BorderRadius.circular(50)
      ),
      padding: EdgeInsets.all(20),
      child: Center(
        child:Text("Log in",
        style:TextStyle(
          color: Colors.black,
          fontSize:16,
        ),
      ),
      ), 
    );
  }
}
Widget buildEmail()
{
  return Column(
    crossAxisAlignment: CrossAxisAlignment.start,
    children: <Widget>[
      Text("Phone Number",style: TextStyle(
        color: Colors.white,
        fontSize: 16,
        fontWeight: FontWeight.bold,
      ),
      ),
      SizedBox(height: 10,),
      Container(
        alignment: Alignment.centerLeft,
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius:BorderRadius.circular(10),
          boxShadow: [
            BoxShadow(
            color: Colors.black26,
            blurRadius: 6,
            offset:Offset(0,2)
            
          )
          ]
        ),
        height:60,
        child: TextField(
          keyboardType: TextInputType.number,
          style: TextStyle(
            color: Colors.black
          ),
          decoration: InputDecoration(
            border: InputBorder.none,
            contentPadding: EdgeInsets.only(top:14),
            prefixIcon: Icon(
              Icons.numbers,
              color: Colors.black,
            ),
            hintText: 'Phone number',
            hintStyle: TextStyle(
              color: Colors.black38,
            ),

           ),
        ),
      )
    ],
  );
}
Widget buildPassword()
{
  return Column(
    crossAxisAlignment: CrossAxisAlignment.start,
    children: <Widget>[
      Text("Password",style: TextStyle(
        color: Colors.white,
        fontSize: 16,
        fontWeight: FontWeight.bold,
      ),
      ),
      SizedBox(height: 10,),
      Container(
        alignment: Alignment.centerLeft,
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius:BorderRadius.circular(10),
          boxShadow: [
            BoxShadow(
            color: Colors.black26,
            blurRadius: 6,
            offset:Offset(0,2)
            
          )
          ]
        ),
        height:60,
        child: TextField(
          obscureText: true,
          style: TextStyle(
            color: Colors.black
          ),
          decoration: InputDecoration(
            border: InputBorder.none,
            contentPadding: EdgeInsets.only(top:14),
            prefixIcon: Icon(
              Icons.lock,
              color: Colors.black,
            ),
           // suffix:IconButton(onPressed: null, icon: Icon(Icons.lock)),
            
            hintText: 'Password',
            hintStyle: TextStyle(
              color: Colors.black38,
            ),

           ),
        ),
      )
    ],
  );
}
class _LoginScreenState extends State<LoginScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: AnnotatedRegion<SystemUiOverlayStyle>(
        value: SystemUiOverlayStyle.light,
        child: GestureDetector(
          child: Stack(
            children: <Widget>[
              Container(
                height: double.infinity,
                width: double.infinity,
                decoration: BoxDecoration(
                  gradient: LinearGradient(
                    begin: Alignment.topCenter,
                    end: Alignment.bottomCenter,
                    colors: 
                    [
                      Color.fromARGB(255, 138, 191, 231),
                      Color.fromARGB(255, 67, 156, 240),
                      Color.fromARGB(255, 15, 106, 167),
                    ]
                  )
                ),
                child: SingleChildScrollView(
                  physics: AlwaysScrollableScrollPhysics(),
                  padding: EdgeInsets.symmetric(
                    horizontal: 25,
                    vertical: 120,
                  ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                
                    children:<Widget> [
                      Text("Sign in",style: TextStyle(
                        color: Colors.white,
                        fontSize: 40,
                        fontWeight:FontWeight.bold
                      ),
                      ),
                      SizedBox(
                        height: 50,
                      ),
                      buildEmail(),
                      SizedBox(
                        height: 50,
                      ),
                      buildPassword(),
                       SizedBox(
                        height: 50,
                      ),
                      GestureDetector(
                        onTap: null,
                        child: _primaryButton()),
                    ],
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
    
  }
}