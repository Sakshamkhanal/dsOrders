import 'package:flutter/material.dart';

class Homepage extends StatelessWidget {
  const Homepage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: 
        Stack(
         children:[
             Container(
                height: MediaQuery.of(context).size.height/3,
               width: MediaQuery.of(context).size.width,
                decoration: BoxDecoration(
                  color: Color.fromARGB(255, 115, 181, 235),
                ),
                child:  
                 Align(
                  alignment: Alignment(-1.0,-0.25),
                  child: Text('Welcome Back,',style:TextStyle(fontSize:25 ) ,
                  ),
                ),
              ),
            
            Positioned(
              top: 260,
              right: 50,
              left:50,
              child: Container(
                height: 100,
                width: MediaQuery.of(context).size.width,
                decoration: BoxDecoration(
                  color: Color.fromARGB(255, 36, 32, 32)
                ),
              ),
            ),

         ],
        )
     // ),
    );
  }
}