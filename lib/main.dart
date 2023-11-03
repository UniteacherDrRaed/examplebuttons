import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: ButtonsPage(),
    );
  }
}

class ButtonsPage extends StatelessWidget {
  const ButtonsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.pink.shade500,
        title: const Text("example buttons"),
        centerTitle: true,
        elevation: 5,
      ),
      body: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              IconButton(

                  onPressed: (){
                    ScaffoldMessenger.of(context)
                        .showSnackBar(
                        const SnackBar(duration: Duration(seconds:1 ),
                        content: Text("mail")));
                  },
                highlightColor: Colors.pink.shade100,
                icon: const Icon(Icons.mail),
                color: Colors.deepOrange,
                tooltip: "mail button",
              ),
              MaterialButton(

                  onPressed: (){
                    ScaffoldMessenger.of(context)
                        .showSnackBar(
                        const SnackBar(
                          duration: Duration(seconds: 1),
                        content: Text("MaterialButton")));
                  },
                onLongPress: (){
                  ScaffoldMessenger.of(context)
                      .showSnackBar(
                      const SnackBar(
                          duration: Duration(seconds: 1),
                          content: Text("MaterialButton")));
                },

                splashColor:Colors.white,
                color:Colors.lime,
                highlightColor: Colors.deepOrange,
                elevation: 10,
                minWidth: 140,
                height: 120,

                textColor: Colors.purpleAccent,
                child: const Text("This is a MaterialButton",
                style: TextStyle(fontSize: 17),),


                  ),


            ],
          )
        ],
      ),

    );
  }
}
