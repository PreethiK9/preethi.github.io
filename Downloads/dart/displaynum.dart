import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(title: 'calculator'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);
  final String title;
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  String output = '0';
  Widget buildButton( String a){
    return  Expanded(
                  child: OutlineButton(
                    padding: EdgeInsets.all(20.0),
                    
                color: Colors.blueGrey,
                 textColor: Colors.pink,
         
                     onPressed: () {
                       setState(() {
                         output=a;
                       });
                     },
                     child:Text(a, style: TextStyle(
                       fontSize: 20.0,fontWeight: FontWeight.bold
                     ),
                     ),

                  ),
                     );
  }
  @override
  Widget build(BuildContext context) {
       return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),

     body:Container(
       child: Column(
         children: <Widget>[
           Container(
             alignment: Alignment.centerRight,
             padding: EdgeInsets.symmetric(vertical: 50,horizontal: 40),
             child: Text(output,style: TextStyle(
               fontSize: 30.0,
             ),
             ),
           ),
           Expanded(
             child: Divider(),
           ),
            Column(
              children: <Widget>[
                Row(
                  
                      children: <Widget>[
                        buildButton('7'),
                        buildButton('8'),
                        buildButton('9'),
                        buildButton('/'),
                      ],
                         
                  
                ),
                Row(
                  
                      children: <Widget>[
                        buildButton('4'),
                        buildButton('5'),
                        buildButton('6'),
                        buildButton('*'),
                      ],
                         
                  
                ),
                Row(
                  
                      children: <Widget>[
                        buildButton('1'),
                        buildButton('2'),
                        buildButton('3'),
                        buildButton('-'),
                      ],
                         
                  
                ),
                Row(
                  
                      children: <Widget>[
                        buildButton('.'),
                        buildButton('0'),
                        buildButton('0.0'),
                        buildButton('+'),
                      ],
                         
                  
                ),
                Row(
                  
                      children: <Widget>[
                        buildButton('clear'),
                        buildButton('='),
                        
                      ],
                         
                  
                ),
                
              ],
            )

            
         ],
     
               
               ),  
       
     ),
    );
  }
}

