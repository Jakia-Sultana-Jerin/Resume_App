import 'package:flutter/material.dart';

void main() => runApp(ResumeApp());

class ResumeApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'My Resume',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: ResumePage(),
    );
  }
}

class ResumePage extends StatefulWidget {
  @override
  _ResumePageState createState() => _ResumePageState();
}

class _ResumePageState extends State<ResumePage> {
  String selectedSection = 'Personal Info';

  Widget getSectionContent(String section) {
    switch (section) {
      case 'Personal Info':
        return Text(
          'Name: Jakia Sultana Jerin\nPhone: 01823-956967\nEmail: jakiakjerin67@mail.com',
          style: TextStyle(fontSize: 16),
        );
      case 'Skills':
        return Text(
          'Flutter, Dart, Firebase, REST APIs, Git',
          style: TextStyle(fontSize: 16),
        );
      case 'Education':
        return Text(
          'BSc in Computer Science and Engineering\nInternational Islamic University Chittagong\n2019-2024',
          style: TextStyle(fontSize: 16),
        );
      case 'Experience':
        return Text(
          'I have no experience yet',
          style: TextStyle(fontSize: 16),
        );
      default:
        return Text('');
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('My Resume'),
        centerTitle: true,
      ),
      body: Row(
        children: [
          // Sidebar for Sections
          Container(
            width: 200,
            color: Colors.blue[50],
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                SizedBox(height: 20),
                CircleAvatar(
                  radius: 40,
                  backgroundImage: AssetImage('assets/images/img.png'), // Update with your image asset
                ),
                SizedBox(height: 10),
                Text(
                  'Jakia Sultana Jerin',
                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                  textAlign: TextAlign.center,
                ),
                SizedBox(height: 20),
                Divider(),
                // Buttons for each section
                buildSectionButton('Personal Info'),
                buildSectionButton('Skills'),
                buildSectionButton('Education'),
                buildSectionButton('Experience'),
              ],
            ),
          ),
          // Main Content Area
          Expanded(
            child: Padding(
              padding: const EdgeInsets.all(16.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    selectedSection,
                    style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
                  ),
                  SizedBox(height: 10),
                  getSectionContent(selectedSection),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget buildSectionButton(String section) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8.0),
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
          backgroundColor: selectedSection == section ? Colors.blue : Colors.blue[100],
        ),
        onPressed: () {
          setState(() {
            selectedSection = section;
          });
        },
        child: Text(
          section,
          style: TextStyle(
            color: selectedSection == section ? Colors.white : Colors.black,
          ),
        ),
      ),
    );
  }
}
