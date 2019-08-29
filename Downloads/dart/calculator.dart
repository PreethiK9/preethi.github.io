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
  int num1 =0;
  int num2=0;
  String operand='0';
  String temp='0';
  
  btnPressed(String button){
    if(button=='clear'){
      
      num1=0;
      num2=0;
      operand='0';
temp='0';
        }
  else if(button=='+'||button=='-'||button=='*'||button=='/'){
    num1=int.parse(output);
    operand=button;
    temp='0';
  }else if(button=='='){
    num2=int.parse(output);
    if(operand=='+'){
      temp = (num1 + num2).toString();

    }
    if(operand=='-'){
      temp = (num1 - num2).toString();

    }
    if(operand=='*'){
      temp = (num1 * num2).toString();

    }
    if(operand=='/'){
      temp = (num1 / num2).toString();
num1=0;
num2=0;
operand='0';
    }
  }
    else{
      temp=temp+button;
    }
   
  setState(() {
    output=temp;
  });
  }
  Widget buildButton( String a){
    return  Expanded(
                  child: OutlineButton(
                    padding: EdgeInsets.all(20.0),
                    
                color: Colors.blueGrey,
                 textColor: Colors.black,
         
                     onPressed: () {
                       btnPressed(a);
                       
                       //setState(() {
                         //output=a;
                       //});
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

