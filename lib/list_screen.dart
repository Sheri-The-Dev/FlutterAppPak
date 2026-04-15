import 'package:flutter/material.dart';

class ListScreen extends StatelessWidget {
  final List<String> cities = [
    "Islamabad", "Lahore", "Karachi", "Peshawar", "Multan",
    "Quetta", "Rawalpindi", "Faisalabad", "Sialkot", "Gujranwala"
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: [
          SliverAppBar(
            backgroundColor: Colors.indigo,
            expandedHeight: 160,
            floating: false,
            pinned: true,
            flexibleSpace: FlexibleSpaceBar(
              title: Text("List of Cities"),
              background: Image.asset('assets/sample.jpeg', fit: BoxFit.cover),
            ),
          ),
          SliverList(
            delegate: SliverChildBuilderDelegate(
                  (context, index) => ListTile(
                leading: Icon(Icons.location_city),
                title: Text(cities[index]),
              ),
              childCount: cities.length,
            ),
          ),
        ],
      ),
    );
  }
}
