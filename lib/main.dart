import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Home work UI",
      theme: ThemeData(
          primarySwatch: Colors.blue
      ),
      // Xóa chữ debug
      debugShowCheckedModeBanner: false,
      home: MyAppContainer(),
    );
  }
}
class MyAppContainer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("My Home Work UI"),
      ),
      body: SafeArea(
        child: Container(
            constraints: BoxConstraints.expand(),
            color: Colors.teal,
            child: Column(
              children: [
                Expanded(
                    child: Container(
                      child: Column(
                       // crossAxisAlignment: CrossAxisAlignment.stretch,
                        children: [
                          Expanded(flex: 1, child: Container(color: Colors.orange, alignment: Alignment.center, child: Text("1"))),
                          Expanded(flex: 3, child: Container(
                            child: Row(
                              children: [
                                Expanded(flex: 1, child: Container(color: Colors.yellow, alignment: Alignment.center, child: Text("2"))),
                                Expanded(flex: 2, child: Container(child: Column(
                                  children: [
                                    Expanded(flex: 2, child: Container(color: Colors.blue, alignment: Alignment.center, child: Text("3"))),
                                    Expanded(flex: 1, child: Container(child: Row(
                                      children: [
                                        Expanded(flex: 1, child: Container(color: Colors.pink, alignment: Alignment.center, child: Text("4"))),
                                        Expanded(flex: 1, child: Container(color: Colors.greenAccent, alignment: Alignment.center, child: Text("5"))),
                                      ],
                                    ),),),
                                  ],
                                ),),),
                              ],
                            ),
                          ),),


                        ],
                      ),
                    )
                ),

              ],
            )

        ),
      ),
    );
  }
}

