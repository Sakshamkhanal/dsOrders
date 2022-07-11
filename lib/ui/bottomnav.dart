import 'package:dsorders/ui/addInterface.dart';
import 'package:flutter/material.dart';
import 'home.dart';
import 'package:dsorders/ui/loginv1.dart';

class home extends StatefulWidget {
  const home({ Key? key }) : super(key: key);

  @override
  State<home> createState() => _homeState();
}

class _homeState extends State<home> {
  int currentIndex=0;
  
static  List<Widget>_widgetOptions=<Widget>[Homepage(),addInterface()];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      //backgroundColor: Colors.blue,
     body: _widgetOptions[currentIndex],
      bottomNavigationBar: BottomNavigationBar(type:BottomNavigationBarType.fixed,
      currentIndex:currentIndex,
      onTap: (index) => setState(() => currentIndex=index),
      items: const <BottomNavigationBarItem>[
        BottomNavigationBarItem(icon:Icon(Icons.people),
        label: 'Home'),
        BottomNavigationBarItem(icon:Icon(Icons.assignment_rounded),
        label: 'Items'),
        BottomNavigationBarItem(icon:Icon(Icons.shopping_cart),
        label: 'Orders'),
         BottomNavigationBarItem(icon:Icon(Icons.home),
        label: 'Shops'),  
      ],
      selectedItemColor: Colors.amber,
    
      ),
      
    ); 
    
  }
}

 