import 'package:flutter/material.dart';

class itemslist extends StatefulWidget {
  const itemslist({ Key? key }) : super(key: key);

  @override
  State<itemslist> createState() => _itemslistState();
}

class _itemslistState extends State<itemslist> {
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
        decoration: InputDecoration(hintText:'Enter Order'),
      ),
    );
  }
}

