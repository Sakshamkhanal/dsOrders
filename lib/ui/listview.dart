import 'package:flutter/material.dart';
import 'addInterface.dart';
//import 'package:dsorders/api/items.dart';
class listView extends StatelessWidget {
 final List<String> entries = <String>['Item A','Item B','Item C'];
 // Order orderlist = Order();
  int i=0;
  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(),
     body:Container
     (
      child: FutureBuilder<List>(
   //   future:orderlist.getAllOrder(),
      builder:(context,snapshot)
      {
        print(snapshot.data);
        if(snapshot.hasData)
      {
      return  ListView.builder
     (
     padding:  const EdgeInsets.all(8),
     itemCount: snapshot.data?.length,
     itemBuilder: (BuildContext context, int index)
     {
       return Container
       (
         height: 95,
         margin:EdgeInsets.only(bottom: 10),
         decoration: BoxDecoration(
           color: Color.fromARGB(255, 34, 143, 233),
           borderRadius: BorderRadius.all(Radius.circular(10),
           
           ),
            ),
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: ListTile
              (
                leading:Icon(Icons.add_business_sharp,size: 60,),
                title: Text(snapshot.data![i]['Name'],style:TextStyle(fontSize: 25)),
                trailing: GestureDetector(
                child:Icon(Icons.arrow_forward_ios),
                  onTap: ()
                 {
                 child:Icon(Icons.arrow_back);                  
                 },
                )
              ),
            ),
       );
     },
     );
        }
        else
        {
         return Container(
          child: Center(child: Text("No data")),
         );
        }
      },
       ),
     ),
    );  
  }
}
