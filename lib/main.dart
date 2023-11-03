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
        mainAxisAlignment: MainAxisAlignment.center,
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
          ),
          const SizedBox(
            height: 10,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              OutlinedButton(
                  onPressed: () {
                    ScaffoldMessenger.of(context).showSnackBar(const SnackBar(
                        duration: Duration(seconds: 1),
                        content: Text("OutlinedButton")));
                  },
                  style: OutlinedButton.styleFrom(
                    shadowColor: Colors.orange,
                    elevation: 10,
                      shape: const StadiumBorder(),
                      side: const BorderSide(
                          width: 1,
                          color: Colors.red),
                    backgroundColor: Colors.red.shade100,
                    textStyle: const TextStyle(
                      color: Colors.blue,
                      fontSize: 21,
                    )
                  ),

                  child: const Text("OutlinedButton")
              ),
              ElevatedButton(
                  onPressed: () {
                    ScaffoldMessenger.of(context).showSnackBar(const SnackBar(
                        duration: Duration(seconds: 1),
                        content: Text("ElevatedButton")));
                  },

                  style: ElevatedButton.styleFrom(
                      padding: const EdgeInsets.symmetric(vertical: 20,horizontal: 20),
                      shadowColor: Colors.blue,
                      elevation: 10,
                      shape: const StadiumBorder(),
                    side: const BorderSide(
                      width: 4,
                      color: Colors.grey,
                    ),
                    backgroundColor: Colors.orange,
                    textStyle: const TextStyle(
                      color: Colors.green,
                      fontSize: 21,
                      fontWeight: FontWeight.bold,
                    )
                  ),
                  child: const Text("ElevatedButton"))
            ],
          ),
          TextButton(
              onPressed: () {
                ScaffoldMessenger.of(context).showSnackBar(const SnackBar(
                    duration: Duration(seconds: 1),
                    content: Text("TextButton")));
              },
              style: TextButton.styleFrom(
                  shape: LinearBorder.top(),
                  side: const BorderSide(width: 6, color: Colors.brown),
                  shadowColor:Colors.lightBlue,
                  elevation: 10,
                  padding:
                      const EdgeInsets.symmetric(vertical: 24, horizontal: 21),
                  backgroundColor: Colors.lime,
                  textStyle: const TextStyle(
                      color: Colors.red,
                      fontWeight: FontWeight.bold,
                      fontSize: 21)),
              child: const Text("TextButton"))
        ],
      ),
    );
  }
}
