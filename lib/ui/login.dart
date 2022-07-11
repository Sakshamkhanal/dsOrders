
import 'bottomnav.dart';
import 'package:flutter/material.dart';

class MyloginWidget extends StatefulWidget {
  const MyloginWidget({ Key? key }) : super(key: key);

  @override
  State<MyloginWidget> createState() => _MyloginWidgetState();
}

class _MyloginWidgetState extends State<MyloginWidget> {
  TextEditingController nameController = TextEditingController();
  TextEditingController passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding:const EdgeInsets.all(10),
      child: ListView(
        children: <Widget>[
          Container(

            alignment: Alignment.center,
            padding: const EdgeInsets.all(10),
            child:const Text("dsorders",
            style: TextStyle(
              color: Colors.blue,
              fontWeight: FontWeight.w500,
              fontSize: 30,

            ),),
          ),
          Container(
            alignment: Alignment.center,
            padding: const EdgeInsets.all(10),
            child: const Text('Please login to your account',style: TextStyle(fontSize: 20)),
          ),
          Container(
            padding: const EdgeInsets.all(10),
            child: TextField(
              controller: nameController,
              decoration: const InputDecoration(border: OutlineInputBorder(),labelText: 'User name',),
            ),
          ),
            Container(
            padding: const EdgeInsets.all(10),
            child: TextField(
              controller: passwordController,
              decoration: const InputDecoration(border: OutlineInputBorder(),labelText: 'Password',),
            ),),
            Container(
              height:65,
              padding: const EdgeInsets.all(10),
              child: ElevatedButton(child:const Text('login'),onPressed: (){
                Navigator.push(context,MaterialPageRoute(builder: (context)=>const home()));
              },)
            ),
        ],
      ),
      
    );
  }
}