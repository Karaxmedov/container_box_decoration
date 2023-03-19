import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  final String _url =
      "https://logowik.com/content/uploads/images/flutter5786.jpg";
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.blueAccent,
          title: const Text("Title"),
        ),
        body: Center(
          child: Container(
              padding: const EdgeInsets.all(12),
              decoration: BoxDecoration(
                  color: Colors.red,
                  //shape: BoxShape.circle,
                  border: Border.all(color: Colors.black, width: 4),
                  //borderRadius:  BorderRadius.circular(20),
                  borderRadius: const BorderRadius.only(
                    bottomLeft: Radius.circular(40),
                    bottomRight: Radius.circular(10),
                    topLeft: Radius.circular(10),
                    topRight: Radius.circular(40),
                  ),
                  image: DecorationImage(
                      image: NetworkImage(_url), fit: BoxFit.fill),
                  boxShadow: const [
                    BoxShadow(
                        color: Colors.blue,
                        offset: Offset(10, 5),
                        blurRadius: 10),
                    BoxShadow(color: Colors.lightBlueAccent,offset: Offset(3, 1),blurRadius: 0.5)
                  ]),
              child: const Text(
                "Flutter",
                style: TextStyle(fontSize: 128),
              )

              /* const FlutterLogo(
                style: FlutterLogoStyle.stacked,
                size: 128,
                textColor: Colors.amber), */
              ),
        ),
      ),
    );
  }
}
