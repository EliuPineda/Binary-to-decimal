import 'package:flutter/material.dart';

class Converter extends StatefulWidget {
  @override
  _ConverterState createState() => _ConverterState();
}

class _ConverterState extends State<Converter> {
  String _binary = "Binary";
  String _decimal = "Decimal"; // _decimal = int.parse(_binary, radix: 2).toRadixString(10);

  void _onPressed() {
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      //body: new Center(
        child: 
        Column(
          //crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            Container(
              padding: const EdgeInsets.all(20.0),
               alignment: Alignment.centerLeft,
              child: Text("Binary -> Decimal",
                style: TextStyle(
                  color: Colors.white,
                ),
              )
              ),

            Container(
              padding: const EdgeInsets.all(20.0),
              alignment: Alignment.centerRight,
              child: Text(
                '$_binary',
                textAlign: TextAlign.right,
                style: TextStyle(
                    fontWeight: FontWeight.bold,
                    color: Colors.blue,
                    fontSize: 60),
              )),
            
            Container(
              padding: const EdgeInsets.all(20.0),
              alignment: Alignment.centerRight,
              child: Text("$_decimal",
                textAlign: TextAlign.right,
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  color: Colors.blue,
                  fontSize: 60),
                ),
            ),
            
            Expanded( 
              flex: 1,
              child: Row(
                mainAxisSize: MainAxisSize.min, //Centrado de rows
                //alignment: Alignment.center,
                crossAxisAlignment: CrossAxisAlignment.stretch,
                //mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    
                    Expanded(
                    child: Container(
                      padding: const EdgeInsets.all(20.0),
                      child: MaterialButton(
                      minWidth: 200,
                      color: Colors.green,
                      child: Text("1",
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            color: Colors.white,
                            fontSize: 60),),
                      onPressed: () {
                        //print(_binary);
                        //_binary = "1";
                        setState(() {  //Actualiza el estado
                          _binary = _binary.replaceAll("Binary", "");
                          _binary = _binary+"1";   //Puedo ponerlo aquí o antes
                          _decimal = int.parse(_binary, radix: 2).toRadixString(10);
                        });
                      },
                    ),
                    ),
                    ),

                    Expanded(
                    child: Container(
                      padding: const EdgeInsets.all(20.0),
                      child: MaterialButton(
                        minWidth: 200,
                        color: Colors.green,
                        child: Text("0",
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            color: Colors.white,
                            fontSize: 60),
                        ),
                        onPressed: () {
                          setState(() {
                            _binary = _binary.replaceAll("Binary", "");
                            _binary = _binary+"0";
                            _decimal = int.parse(_binary, radix: 2).toRadixString(10);
                          });
                        },
                      ),
                    ),
                    ),

                  ]
            ),        
            ),
            
            
            Container(
              padding: const EdgeInsets.all(20.0),  //Crea orillas y respeta la pantalla maxima del telefono
              
              child: MaterialButton(
                  minWidth: 1000.0,
                  height: 70.0,
                  color: Color(int.parse("#0069C0".replaceAll('#', '0xff'))),
                  onPressed: () {
                    setState(() {
                      _binary = "Binary";
                      _decimal = "Decimal";
                    });
                  },
                  child: Text("Reset",
                      style: new TextStyle(
                        fontSize: 40.0,
                        color: Colors.white,
                      ))),
              
            ),
            
          
          ]),


      
    );
  }
}
