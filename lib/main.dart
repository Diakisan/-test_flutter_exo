import 'package:flutter/material.dart';

void main () {
  runApp(MaterialApp(
    home: Scaffold(
      appBar: AppBar(
        title: Text ('fornite'),
      ),
      body: MyApp(),
    ),
  ),
  );
}
class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  bool shup1 = false;
  bool shup2 = false;
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Row(

        children: [
          GestureDetector(
            onTap: (){
              setState(() {
                shup1 = !shup1;

              });

            },
            child: shup1 ?
                Container(
                  child: Image.asset('img/unsplash_1.jpg',
                  width: 125,
                  height: 125,),
                )
                :
                Container(
                  child: Image.asset('img/unsplash_2.jpg',
                    width: 125,
                    height: 125,
                  ),
                ),
          ),

          GestureDetector(
            onTap: (){
              setState(() {
                shup2= !shup2;
              });
            },
            child: shup2 ?
                Container(
                  child: Image.asset('img/unsplash_3.jpg',
                    width: 125,
                    height: 125,
                  ),
                )
                :
                Container(
                  child: Image.asset('img/unsplash_4.jpg',
                    width: 125,
                    height: 125,
                  ),
                ),
          )

        ],
      ),
    );
  }
}
