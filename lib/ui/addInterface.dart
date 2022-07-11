import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter/widgets.dart';

class addInterface extends StatefulWidget {

 
  @override
  State<addInterface> createState() => _addInterfaceState();
}

class _addInterfaceState extends State<addInterface> {
  int _pageState = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
       body:SingleChildScrollView(
         scrollDirection:Axis.vertical,
           child: Column(
             children: [
               Container(
                 margin: EdgeInsets.all(50),
                 padding: EdgeInsets.all(50),
                 alignment: Alignment.center,
                 child: Text("Add items",style:TextStyle(fontWeight: FontWeight.bold,fontSize:24) ),
               ),
               SizedBox(
                 height:50
              ),
               GestureDetector(
                 onTap: (){
                Navigator.push(context, MaterialPageRoute(builder: (context) => insideaddInterface()));
                 },
                 child: Container(
                       margin: EdgeInsets.all(32),
                       padding: EdgeInsets.all(20),
                       width:double.infinity,
                             decoration: BoxDecoration(
                      color: Colors.blue,
                      borderRadius: BorderRadius.circular(50),
                             ),
                             child: Center(
                      child: Text("Add items",style: TextStyle(
                        color: Colors.white,
                        fontSize: 16,
                      ),
                      ),
                      ),
                       
                     ),
               ),
                 
               
         
              
             ],
           ),
         ),
      

    );
  }
}

class insideaddInterface extends StatefulWidget {
  const insideaddInterface({ Key? key }) : super(key: key);

  @override
  State<insideaddInterface> createState() => _insideaddInterfaceState();
}

class _insideaddInterfaceState extends State<insideaddInterface> {
  @override
  Widget build(BuildContext context) {
  return Scaffold(
  appBar: AppBar(
    backgroundColor: Colors.blue,
  ),
  body: SingleChildScrollView(
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Padding(padding:EdgeInsets.symmetric(horizontal: 8,vertical: 16),
        child: TextField(
          decoration: InputDecoration(
            border: OutlineInputBorder(),
            hintText: "Item name"
          ),
          
        )
        ),
        SizedBox(height:8),
         Row(
           children: [
             Container(
               width: 250,
               child: Padding(
                    padding: EdgeInsets.symmetric(horizontal: 8,vertical: 16),
                    child: TextField(
                    decoration: InputDecoration(
                    border: OutlineInputBorder(),
                    hintText: "Price",
                    prefixIcon: Icon(Icons.attach_money),
                          ),
                    keyboardType: TextInputType.number,
                    inputFormatters: [FilteringTextInputFormatter.digitsOnly],
                        ),
                  ),
             ),
          
           ],
         ),
          Container
           (
            child: Column(
              children: [
                Text("Select Quantity",style: TextStyle(fontSize:18),),
                sliderWidget(),
              
                Text("Select Shop",style: TextStyle(fontSize: 18),),
                  SizedBox(
                  height: 10,
                ),
                dropDownMenu(),
              ],
            )
            ),
               Padding(
              padding: EdgeInsets.symmetric(horizontal: 8,vertical: 16),
              child: TextField(
                maxLines: null,
                textAlignVertical: TextAlignVertical.top,
                    decoration: InputDecoration(
              border: OutlineInputBorder(),
              labelText: " Description",
              contentPadding: EdgeInsets.symmetric(vertical:90 ),
                    ),
                  ),
            ),
           
       
                      TextButton(
                        child: Container(
                         margin: EdgeInsets.all(32),
                         padding: EdgeInsets.all(20),
                         width:double.infinity,
                               decoration: BoxDecoration(
                        color: Colors.blue,
                        borderRadius: BorderRadius.circular(50),
                               ),
                               child: Center(
                        child: Text("Save items",style: TextStyle(
                          color: Colors.white,
                          fontSize: 16,
                        ),
                        ),
                        ),
                       ),
                       onPressed: (){
                         showDialog(
                          context: context,
                         builder:(_) => AlertDialog(
                           shape: RoundedRectangleBorder(
                             borderRadius: BorderRadius.all(Radius.circular(10.0)),
                           
                           ),
                           content: Builder(builder:(context)
                           {
                             var height = MediaQuery.of(context).size.height;
                             var width = MediaQuery.of(context).size.width;
  
                             return AnimatedContainer(
                              duration: Duration(
                                milliseconds: 5000,
                              ),
                               height: height-670,
                               width:width-400,
                               child: Column(
                                 children:[
                                 Center(child: Text("Saved")),
                                 Image.asset("assets/images/Image.jpg"),
                                 ],
                               ),
                             );
                           }),
                         )
                         
                         );
                       },
                      ),
                     
        
                  
  
      ],
       ),
  ), 
    );
  }
}
class sliderWidget extends StatefulWidget {
  
 
  @override
  State<sliderWidget> createState() => _sliderWidgetState();
}

class _sliderWidgetState extends State<sliderWidget> 
{
  double _currentSliderValue = 0;
  @override
  Widget build(BuildContext context) {
    return Slider(
      value :_currentSliderValue,
      max: 100,
      divisions: 100,
      label: _currentSliderValue.round().toString(),
      onChanged: (double value){
        setState(() {
          _currentSliderValue = value;
        });
      }
      
    );
  }
}

class dropDownMenu extends StatefulWidget {
  
 

  @override
  State<dropDownMenu> createState() => _dropDownMenuState();

}

class _dropDownMenuState extends State<dropDownMenu> {
   
  
  var items=['A','B','C','D','E'];
  String valueChoose='A';
 
  @override
  Widget build(BuildContext context) {
    return Container(
       padding: EdgeInsets.symmetric(horizontal:100, vertical: 5),
  decoration: BoxDecoration(
      color: Color.fromARGB(218, 241, 237, 237), borderRadius: BorderRadius.circular(10)),

  // dropdown below..
  child: DropdownButton(
    value: valueChoose,
    onChanged: (String? newValue)
    {
      setState(() {
        String newValue='';
        valueChoose=newValue;
      });
    },
  items:items.map((String items) {
    return DropdownMenuItem(value: items,child: Text(items),);
  }).toList(),
      // add extra sugar..lue
      icon: Icon(Icons.arrow_drop_down),
      iconSize: 42,
      underline: SizedBox(),
  ),
      
    );
  }
}
