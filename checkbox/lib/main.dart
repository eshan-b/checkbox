import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: MyHomePage(title: 'CheckBox'),
      debugShowCheckedModeBanner: false
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
      body: Column(
        children: [
          Container(
            padding: EdgeInsets.all(15),
            child: Image(
              alignment: Alignment.center,
              image: AssetImage("assets/images/checkbox_transparent.png")
            ),
          ),

          SizedBox(height: 20),

          Text(
            "Say \"hello\" to the\nfuture of\nproductivity.",
            style: TextStyle(
              color: Color(0xff038841),
              fontSize: 26
            ),
          ),

          SizedBox(height: 50),

          RaisedButton.icon(
            onPressed: () => {},
            
            icon: Image(
              height: 10,
              image: AssetImage("assets/images/checkbox_transparent.png"),
            ),

            label: Text(
              "Sign in with Google",
              style: TextStyle(
                color: Color(0xff707070),
                fontSize: 18
              ),
            ),
          )
        ],
      )
    );
  }
}
