import 'dart:ui';
import 'package:dsorders/ui/summary_graph.dart';
import 'package:flutter/material.dart';
import 'package:syncfusion_flutter_charts/charts.dart';
import 'package:syncfusion_flutter_charts/sparkcharts.dart';

class Homepage extends StatefulWidget {

  @override
  State<Homepage> createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> {
 

  Widget build(BuildContext context) {
    return Scaffold(
      body: 
        Stack(
         children:[
             Container(
                height: MediaQuery.of(context).size.height,
               width: MediaQuery.of(context).size.width,
                decoration: BoxDecoration(
                  color: Color.fromARGB(255, 173, 205, 231),
                  gradient: LinearGradient
                  (
                      begin: Alignment.topRight,
                    end: Alignment.bottomLeft,
                    colors: [
                      Color.fromARGB(255, 148, 197, 238),
                      Color.fromARGB(255, 25, 115, 189),
                      
                    ]

                  ),
                 

                ),
              ),
                Container(
              height: MediaQuery.of(context).size.height/3,
              width:MediaQuery.of(context).size.width,
              decoration: BoxDecoration(
                color: Color.fromARGB(255, 148, 189, 228),
              ),
              
            ),
            Positioned(
              top: 250,
              right: 150,
              left:25,
              child: Material(   
                borderRadius: BorderRadius.circular(50),         
                elevation: 100,
                shadowColor: Color.fromARGB(255, 133, 183, 224),
                child: Container(
                  height: 80,
                  width: MediaQuery.of(context).size.width,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(50),
                 color: Color.fromARGB(255, 6, 51, 87),
                    
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children:[
                      
                
                      Container(
                        padding: EdgeInsets.all(20),
                        child: Align(
                          
                          alignment: Alignment(0.0,0.0),
                          child:
                            Text("Today's\n Summary",style: TextStyle(fontSize: 14,color: Colors.white),)
                          
                        ),
                      ),
                      
                      Container(
                        child: Align(
                          alignment:Alignment.centerRight,
                        child: Icon
                         (
                           Icons.trending_up,
                          size: 60,
                         color: Colors.white,
                        ),
                     ),
                      ),                        
                ], 
                  ),   
                ),
              ),
            ),
          Positioned(
            top: 250,
            right: 20,
            child: Container(
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              color: Color.fromARGB(255, 10, 49, 82),
            ),
            height: 90,
            width: 100,
            child: GestureDetector(
              child: Icon(Icons.calendar_month,size: 50,color: Colors.white,)
              )
            )
            ,),
            Positioned(
              top: 370,
              left: 50,
              child:
             Container
              ( height: 350,
                width: 300,
                child: SummaryGraph(),
              )
              ),
              Positioned(
                top: 100,
                left:60,
                child:Column(
                children: [
                  Text("Welcome Back",style: TextStyle(fontSize: 24),),
                  SizedBox(height: 8,),
                  Text("Saksham Khanal",style: TextStyle(fontSize: 30,fontWeight: FontWeight.w500),),
                ],)
                ),
                Positioned(
                bottom: 35,
                left:25,
                child: 
                Container(
                  height: 90,
                  width: 150,
                  decoration: BoxDecoration(
                    color: Color.fromARGB(255, 5, 55, 95),
                    borderRadius:BorderRadius.circular(25)
                  ),
                  child: Padding(

                    padding: const EdgeInsets.all(30),
                    child: Text("Last 5 orders",style: TextStyle(color: Colors.white),),
                  ),  
                ),
                ),
                 Positioned(
                bottom: 35,
                right:25,
                child: 
                Container(
                  height: 90,
                  width: 150,
                  decoration: BoxDecoration(
                    color: Color.fromARGB(255, 4, 68, 121),
                    borderRadius:BorderRadius.circular(25)
                  ),
                  child: Padding(

                    padding: const EdgeInsets.all(30),
                    child: Text("Last 5 items",style: TextStyle(color: Colors.white),),
                  ),  
                )
                )
         ]
         
        )
    );
  }
}

