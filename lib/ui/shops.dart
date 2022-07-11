import 'package:flutter/material.dart';

class shops extends StatefulWidget {
  const shops({ Key? key }) : super(key: key);

  @override
  State<shops> createState() => _shopsState();
}

class _shopsState extends State<shops> {
    List<dynamicWidget> listDynamic =[];

  addDynamic()
  {
    listDynamic.add(dynamicWidget());
    setState(() {
      
    });
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:Container(
        child: Column(
          children: <Widget>[
            Flexible(child:ListView.builder(
              itemCount: listDynamic.length,
              itemBuilder: (context, index) =>listDynamic[index] )),
              Container(
                child: ElevatedButton(child: Text("Submit data"),onPressed: (){},),
              )
          ]),
         
      ),
      floatingActionButton: FloatingActionButton(onPressed:addDynamic,
      child:Icon(Icons.add)), 
      );
  }
}

class dynamicWidget extends StatelessWidget {
  const dynamicWidget({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin:EdgeInsets.all(8.0),
      child: TextField(
        decoration: InputDecoration(hintText:'Enter Shops'),
      ),
    );
  }
}