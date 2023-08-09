// ignore_for_file: deprecated_member_use

import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';
import 'about.dart';
import 'education.dart';
import 'project.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue,
        title: const Text(
          "My Portfolio",
          style: TextStyle(color: Colors.white),
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Center(
              child: Column(
                children: [
                  const SizedBox(height: 15),
                  const CircleAvatar(
                    radius: 80,
                    backgroundImage: AssetImage('images/photo.jpeg'),
                  ),
                  const SizedBox(height: 16),
                  const Text(
                    'Siddhesh Kondaskar',
                    style: TextStyle(
                      fontSize: 24,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  const SizedBox(height: 8),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      OutlinedButton(
                        style: OutlinedButton.styleFrom(
                          foregroundColor: Colors.black,
                        ),
                        onPressed: () {
                          final Uri url = Uri.parse(
                              'https://drive.google.com/file/d/11Ywjjiyrp3VE7P-IJ27UggQs2qAEuM3R/view?usp=sharing');
                          launch(url.toString());
                        },
                        child: const Text("View Resume"),
                      ),
                      const SizedBox(width: 10),
                      ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.blue,
                          foregroundColor: Colors.white,
                        ),
                        onPressed: () {
                          final Uri emailLaunchUri = Uri(
                            scheme: 'mailto',
                            path: 'siddheshkondaskar5@gmail.com',
                          );
                          launch(emailLaunchUri.toString());
                        },
                        child: Row(
                          children: const [
                            Icon(
                              Icons.add,
                              size: 16,
                              color: Colors.white,
                            ),
                            SizedBox(width: 5),
                            Text("Contact"),
                          ],
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
            const SizedBox(height: 10),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text('About Me',
                      style:
                          TextStyle(fontSize: 24, fontWeight: FontWeight.bold)),
                  const AboutMeSection(),
                  const SizedBox(height: 8),
                  const Text(
                    'Projects',
                    style: TextStyle(
                      fontSize: 24,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  const SizedBox(height: 8),
                  ProjectGrid(),
                ],
              ),
            ),
            const SizedBox(height: 10),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text(
                    'Education',
                    style: TextStyle(
                      fontSize: 24,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  const SizedBox(height: 8),
                  EducationGrid(),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
