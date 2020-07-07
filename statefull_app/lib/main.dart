
import 'package:flutter/material.dart';

import 'my_color_button.widget.dart';

void main() {
  runApp(AppMain());
}

class AppMain extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "My theme selection",
      home: BodyPage(),
    );
  }
}

class BodyPage extends StatefulWidget {
  @override
  _BodyPageState createState() => _BodyPageState();
}

class _BodyPageState extends State<BodyPage> {

  dynamic color = Colors.purple;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Hi there"),
      ),
      body: Container(
        alignment: Alignment.center, // expande o container pela página
        color: color,
        child: Column(
          children: <Widget>[
            SizedBox(
              height: 40,
            ),
            Text("Set a color", 
              style: TextStyle(fontSize: 40, fontWeight: FontWeight.bold, color: Colors.white) 
            ),
            Wrap(
              alignment: WrapAlignment.start,
              direction: Axis.horizontal,
              children: <Widget>[   
                ButtonBar(
                  alignment: MainAxisAlignment.start,
                  children: <Widget>[
                    MyColorButton(
                      lb_text: "Red",
                      bg_color: Colors.red,
                      acao: (){
                        setState(() {
                          color = Colors.red;
                        });
                      },
                    ),  
                    MyColorButton(
                      lb_text: "Blue",
                      bg_color: Colors.blue,
                      acao: (){
                        setState(() {
                          color = Colors.blue;
                        });
                      },
                    ),
                    MyColorButton(
                      lb_text: "Green",
                      bg_color: Colors.green,
                      acao: (){
                        setState(() {
                          color = Colors.green;
                        });
                      },
                    ),
                    MyColorButton(
                      lb_text: "Dark",
                      bg_color: Colors.black,
                      acao: (){
                        setState(() {
                          color = Colors.black;
                        });
                      },
                    ),
                    MyColorButton(
                      lb_text: "Default",
                      bg_color: Colors.purple,
                      acao: (){
                        setState(() {
                          color = Colors.purple;
                        });
                      },
                    ),               
                  ],
                )
              ],
            ),
          ],
        )
      )
    );
  }
}

// class MyApp extends StatelessWidget {
//   // This widget is the root of your application.
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       title: 'Flutter Demo',
//       theme: ThemeData(
//         primarySwatch: Colors.blue,
//         visualDensity: VisualDensity.adaptivePlatformDensity,
//       ),
//       home: MyHomePage(title: 'Flutter Demo Home Page'),
//     );
//   }
// }

// class MyHomePage extends StatefulWidget {
//   MyHomePage({Key key, this.title}) : super(key: key);

//   final String title;

//   @override
//   _MyHomePageState createState() => _MyHomePageState();
// }

// class _MyHomePageState extends State<MyHomePage> {
//   int _counter = 0;

//   void _incrementCounter() {
//     setState(() {
//       _counter++;
//     });
//   }

//   @override
//   Widget build(BuildContext context) {
    
//     return Scaffold(
//       appBar: AppBar(
//         title: Text(widget.title),
//       ),
//       body: Center(
//         child: Column(         
//           mainAxisAlignment: MainAxisAlignment.center,
//           children: <Widget>[
//             Text(
//               'You have pushed the button this many times:',
//             ),
//             Text(
//               '$_counter',
//               style: Theme.of(context).textTheme.headline4,
//             ),
//           ],
//         ),
//       ),
//       floatingActionButton: FloatingActionButton(
//         onPressed: _incrementCounter,
//         tooltip: 'Increment',
//         child: Icon(Icons.add),
//       ), // This trailing comma makes auto-formatting nicer for build methods.
//     );
//   }
// }
