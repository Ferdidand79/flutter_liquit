import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:liquid_swipe/liquid_swipe.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("App de liquido"),
      ),
      body: LiquidSwipe(
        pages: [
          Container(
            color: Colors.black,
            child: Center(
              child: Text(
                'Pagina 1',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 40,
                ),
                ),
            ),
          ),

          Container(
            color: Colors.blue.shade800,
            child: Center(
              child: Text(
                'Pagina 2',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 40,
                ),
                )
            ),
          ),

          Container(
            color: Colors.deepPurple.shade900,
            child: Center(
              child: Text(
                'Pagina 3',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 40,
                ),
                )
            ),
          ),
        ],),
    );
  }
}
