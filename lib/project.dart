// ignore_for_file: prefer_const_constructors, prefer_const_declarations, deprecated_member_use

import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class Project {
  final String name;
  final String techStack;
  final String description;
  final String githubLink;
  final String icon;

  Project({
    required this.name,
    required this.techStack,
    required this.description,
    required this.githubLink,
    required this.icon,
  });
}

class ProjectGrid extends StatelessWidget {
  ProjectGrid({super.key});
  final List<Project> projects = [
    Project(
      name: 'AuthApp',
      techStack: 'Flutter',
      description: 'Authentication App',
      githubLink: 'https://github.com/SiddheshKondaskar/AuthApp',
      icon: 'images/project_icons/authapp.png',
    ),
    Project(
      name: 'My Portfolio',
      techStack: 'Flutter',
      description: 'My Personal Portfolio App',
      githubLink: 'https://github.com/SiddheshKondaskar/My-Portfolio',
      icon: 'images/project_icons/portfolio.png',
    ),
    Project(
      name: 'Registration App',
      techStack: 'Python',
      description: 'Registration System using Tkinter',
      githubLink: 'https://github.com/SiddheshKondaskar/Registration-System',
      icon: 'images/project_icons/register.png',
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        final cardWidth =
            constraints.maxWidth > 600 ? 300.0 : constraints.maxWidth;
        final cardHeight = 200.0;

        return Wrap(
          spacing: 16,
          runSpacing: 16,
          children: projects.map((project) {
            return Card(
              elevation: 2,
              child: Container(
                width: cardWidth,
                height: cardHeight,
                padding: const EdgeInsets.all(20.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Image.asset(
                      project.icon,
                      width: 40,
                      height: 40,
                    ),
                    SizedBox(height: 4),
                    Text(
                      project.name,
                      style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    SizedBox(height: 4),
                    Text(
                      project.techStack,
                      style: TextStyle(
                        fontSize: 12,
                      ),
                    ),
                    SizedBox(height: 4),
                    Text(
                      project.description,
                      style: TextStyle(
                        fontSize: 12,
                        color: Colors.grey,
                      ),
                    ),
                    SizedBox(height: 8),
                    ElevatedButton(
                      style: ButtonStyle(
                        backgroundColor:
                            MaterialStateProperty.all(Colors.black),
                      ),
                      onPressed: () {
                        launch(project.githubLink);
                      },
                      child: Text('View Project'),
                    ),
                  ],
                ),
              ),
            );
          }).toList(),
        );
      },
    );
  }
}
