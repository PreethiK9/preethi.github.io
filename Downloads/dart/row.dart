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
  
  @override
  Widget build(BuildContext context) {
       return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),

     body:Container(
       child: Column(
         children: <Widget>[
           Text('0',style: TextStyle(
             fontSize: 30.0,
           ),
           ),
            Row(
              children: <Widget>[
                Expanded(
                  child: MaterialButton(
                color: Colors.blueGrey,
                 textColor: Colors.white,
         
                     onPressed: () {},
                     child:Text('1'),
                  ),
                     ),
              ],
            )

            
         ],
     
               
               ),  
       
     ),
    );
  }
}

