import 'package:flutter/material.dart';
import 'list_screen.dart';
import 'about_screen.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Flutter App'),
        centerTitle: true,
      ),
      drawer: Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children: [
            DrawerHeader(
              decoration: BoxDecoration(color: Colors.indigo),
              child: Center(
                child: Text('Navigation Menu', style: TextStyle(color: Colors.white, fontSize: 20)),
              ),
            ),
            ListTile(
              leading: Icon(Icons.list),
              title: Text('List Screen'),
              onTap: () {
                Navigator.push(context, MaterialPageRoute(builder: (_) => ListScreen()));
              },
            ),
            ListTile(
              leading: Icon(Icons.info),
              title: Text('About Screen'),
              onTap: () {
                Navigator.push(context, MaterialPageRoute(builder: (_) => AboutScreen()));
              },
            ),
          ],
        ),
      ),
      body: SingleChildScrollView( // Added for scrolling support
        padding: EdgeInsets.all(20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text("Welcome!", style: TextStyle(fontSize: 26, fontWeight: FontWeight.bold)),
            SizedBox(height: 10),
            Text(
              "Pakistan is a country in South Asia formed in 1947. It has four provinces and a rich mix of cultures, traditions, and landscapes.\n\n"
                  "🌆 Major Cities:\n"
                  "- Islamabad: Capital city, modern and clean.\n"
                  "- Lahore: Famous for culture, food, and history.\n"
                  "- Karachi: Largest city, financial hub.\n"
                  "- Peshawar: Historic, near Khyber Pass.\n"
                  "- Multan: City of Saints, known for shrines.\n"
                  "- Quetta: Fruit gardens and mountains.\n"
                  "- Rawalpindi: Military city, near Islamabad.\n"
                  "- Faisalabad: Textile industry center.\n"
                  "- Sialkot: Exports sports goods.\n"
                  "- Gujranwala: Famous for food and wrestlers.
                   Major Cities:\n"
                  "- Islamabad: Capital city, modern and clean.\n"
                  "- Lahore: Famous for culture, food, and history.\n"
                  "- Karachi: Largest city, financial hub.\n"
                  "- Peshawar: Historic, near Khyber Pass.\n"
                  "- Multan: City of Saints, known for shrines.\n"
                  "- Quetta: Fruit gardens and mountains.\n"
                  "- Rawalpindi: Military city, near Islamabad.\n"
                  "- Faisalabad: Textile industry center.\n"
                  "- Sialkot: Exports sports goods.\n"
                  "- Gujranwala: Famous for food and wrestlers. Major Cities:\n"
                  "- Islamabad: Capital city, modern and clean.\n"
                  "- Lahore: Famous for culture, food, and history.\n"
                  "- Karachi: Largest city, financial hub.\n"
                  "- Peshawar: Historic, near Khyber Pass.\n"
                  "- Multan: City of Saints, known for shrines.\n"
                  "- Quetta: Fruit gardens and mountains.\n"
                  "- Rawalpindi: Military city, near Islamabad.\n"
                  "- Faisalabad: Textile industry center.\n"
                  "- Sialkot: Exports sports goods.\n"
                  "- Gujranwala: Famous for food and wrestlers. Major Cities:\n"
                  "- Islamabad: Capital city, modern and clean.\n"
                  "- Lahore: Famous for culture, food, and history.\n"
                  "- Karachi: Largest city, financial hub.\n"
                  "- Peshawar: Historic, near Khyber Pass.\n"
                  "- Multan: City of Saints, known for shrines.\n"
                  "- Quetta: Fruit gardens and mountains.\n"
                  "- Rawalpindi: Military city, near Islamabad.\n"
                  "- Faisalabad: Textile industry center.\n"
                  "- Sialkot: Exports sports goods.\n"
                  "- Gujranwala: Famous for food and wrestlers. Major Cities:\n"
                  "- Islamabad: Capital city, modern and clean.\n"
                  "- Lahore: Famous for culture, food, and history.\n"
                  "- Karachi: Largest city, financial hub.\n"
                  "- Peshawar: Historic, near Khyber Pass.\n"
                  "- Multan: City of Saints, known for shrines.\n"
                  "- Quetta: Fruit gardens and mountains.\n"
                  "- Rawalpindi: Military city, near Islamabad.\n"
                  "- Faisalabad: Textile industry center.\n"
                  "- Sialkot: Exports sports goods.\n"
                  "- Gujranwala: Famous for food and wrestlers. Major Cities:\n"
                  "- Islamabad: Capital city, modern and clean.\n"
                  "- Lahore: Famous for culture, food, and history.\n"
                  "- Karachi: Largest city, financial hub.\n"
                  "- Peshawar: Historic, near Khyber Pass.\n"
                  "- Multan: City of Saints, known for shrines.\n"
                  "- Quetta: Fruit gardens and mountains.\n"
                  "- Rawalpindi: Military city, near Islamabad.\n"
                  "- Faisalabad: Textile industry center.\n"
                  "- Sialkot: Exports sports goods.\n"
                  "- Gujranwala: Famous for food and wrestlers. Major Cities:\n"
                  "- Islamabad: Capital city, modern and clean.\n"
                  "- Lahore: Famous for culture, food, and history.\n"
                  "- Karachi: Largest city, financial hub.\n"
                  "- Peshawar: Historic, near Khyber Pass.\n"
                  "- Multan: City of Saints, known for shrines.\n"
                  "- Quetta: Fruit gardens and mountains.\n"
                  "- Rawalpindi: Military city, near Islamabad.\n"
                  "- Faisalabad: Textile industry center.\n"
                  "- Sialkot: Exports sports goods.\n"
                  "- Gujranwala: Famous for food and wrestlers. Major Cities:\n"
                  "- Islamabad: Capital city, modern and clean.\n"
                  "- Lahore: Famous for culture, food, and history.\n"
                  "- Karachi: Largest city, financial hub.\n"
                  "- Peshawar: Historic, near Khyber Pass.\n"
                  "- Multan: City of Saints, known for shrines.\n"
                  "- Quetta: Fruit gardens and mountains.\n"
                  "- Rawalpindi: Military city, near Islamabad.\n"
                  "- Faisalabad: Textile industry center.\n"
                  "- Sialkot: Exports sports goods.\n"
                  "- Gujranwala: Famous for food and wrestlers. Major Cities:\n"
                  "- Islamabad: Capital city, modern and clean.\n"
                  "- Lahore: Famous for culture, food, and history.\n"
                  "- Karachi: Largest city, financial hub.\n"
                  "- Peshawar: Historic, near Khyber Pass.\n"
                  "- Multan: City of Saints, known for shrines.\n"
                  "- Quetta: Fruit gardens and mountains.\n"
                  "- Rawalpindi: Military city, near Islamabad.\n"
                  "- Faisalabad: Textile industry center.\n"
                  "- Sialkot: Exports sports goods.\n"
                  "- Gujranwala: Famous for food and wrestlers. Major Cities:\n"
                  "- Islamabad: Capital city, modern and clean.\n"
                  "- Lahore: Famous for culture, food, and history.\n"
                  "- Karachi: Largest city, financial hub.\n"
                  "- Peshawar: Historic, near Khyber Pass.\n"
                  "- Multan: City of Saints, known for shrines.\n"
                  "- Quetta: Fruit gardens and mountains.\n"
                  "- Rawalpindi: Military city, near Islamabad.\n"
                  "- Faisalabad: Textile industry center.\n"
                  "- Sialkot: Exports sports goods.\n"
                  "- Gujranwala: Famous for food and wrestlers. Major Cities:\n"
                  "- Islamabad: Capital city, modern and clean.\n"
                  "- Lahore: Famous for culture, food, and history.\n"
                  "- Karachi: Largest city, financial hub.\n"
                  "- Peshawar: Historic, near Khyber Pass.\n"
                  "- Multan: City of Saints, known for shrines.\n"
                  "- Quetta: Fruit gardens and mountains.\n"
                  "- Rawalpindi: Military city, near Islamabad.\n"
                  "- Faisalabad: Textile industry center.\n"
                  "- Sialkot: Exports sports goods.\n"
                  "- Gujranwala: Famous for food and wrestlers.",
              style: TextStyle(fontSize: 16),
            ),
            SizedBox(height: 20),
            Center(child: Image.asset('assets/Pak.jpeg')), // Make sure this image is listed in pubspec.yaml
          ],
        ),
      ),
    );
  }
}
