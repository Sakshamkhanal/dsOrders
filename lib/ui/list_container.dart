import 'package:flutter/material.dart';

class listContainer extends StatefulWidget {
  listContainer({Key? key}) : super(key: key);

  @override
  State<listContainer> createState() => _listContainerState();
}

class _listContainerState extends State<listContainer> {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height/3,
      width:MediaQuery.of(context).size.width/3,
      decoration:BoxDecoration(
        color: Colors.white,
      ),
      child: Column(
      children: 
      [

      ]
      ),
    );
  }
}