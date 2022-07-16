 import 'package:dsorders/ui/addInterface.dart';
 import 'package:dsorders/ui/loginv1.dart';
 import 'package:flutter/material.dart';
 import 'package:dsorders/ui/listview.dart';
 import 'package:dsorders/ui/bottomnav.dart';
 import 'package:dsorders/ui/home.dart';
 import 'package:dsorders/ui/summary_graph.dart';
 import 'package:dsorders/ui/calander.dart';
 import 'package:dsorders/ui/list_container.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
   
      home: Container(
        //         child:order(),

     //  child: Homepage(),
     //  child:listView(),
   //  child:SummaryGraph(),
     child: home(),
      //child: frontpage(),
   //   child: LoginScreen(),
   // child: addInterface(),
   //   child:calander()
      ),
    );
  }
}

