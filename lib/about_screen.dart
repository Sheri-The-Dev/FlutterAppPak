import 'package:flutter/material.dart';

class AboutScreen extends StatelessWidget {
  final List<String> titles = [
    "first", "second", "Third", "fourth", "second-last", "last"
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("About Screen")),
      body: GridView.builder(
        padding: EdgeInsets.all(10),
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2,
            crossAxisSpacing: 10,
            mainAxisSpacing: 10
        ),
        itemCount: titles.length,
        itemBuilder: (context, index) {
          return Container(
            decoration: BoxDecoration(
              color: Colors.indigo[100],
              borderRadius: BorderRadius.circular(10),
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Image.asset('assets/sample.jpeg', height: 60),
                SizedBox(height: 10),
                Text(titles[index], style: TextStyle(fontSize: 16, fontWeight: FontWeight.w500)),
              ],
            ),
          );
        },
      ),
    );
  }
}
