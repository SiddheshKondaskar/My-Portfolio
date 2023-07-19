// ignore_for_file: prefer_const_constructors, prefer_const_declarations

import 'package:flutter/material.dart';

class Education {
  final String name;
  final String university;
  final String year;
  final String description;

  Education({
    required this.name,
    required this.university,
    required this.year,
    required this.description,
  });
}

class EducationGrid extends StatelessWidget {
  EducationGrid({super.key});
  final List<Education> educations = [
    Education(
      name: 'BE in Computer Engineering',
      university: 'St. John College of Engineering and Management',
      year: 'Jan 2021 - July 2023',
      description: 'Passed with 9.10 CGPI',
    ),
    Education(
      name: 'Diploma in Computer Engineering',
      university: 'VIVA College of Diploma Enginnering and Technology',
      year: 'Aug 2017 - Nov 2020',
      description: 'Passed with 90.27%',
    ),
    Education(
      name: 'SSC',
      university: 'Utkarsha Vidyalaya',
      year: 'June 2016 - June 2017',
      description: 'Passed with 75.20%',
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        final cardWidth =
            constraints.maxWidth > 600 ? 300.0 : constraints.maxWidth;
        final cardHeight = 150.0;

        return Wrap(
          spacing: 16,
          runSpacing: 16,
          children: educations.map((education) {
            return Card(
              elevation: 2,
              child: Container(
                width: cardWidth,
                height: cardHeight,
                padding: const EdgeInsets.all(20.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      education.name,
                      style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.w800,
                      ),
                    ),
                    SizedBox(height: 4),
                    Text(
                      education.university,
                      style: TextStyle(
                        fontSize: 12,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    SizedBox(height: 4),
                    Text(
                      education.year,
                      style: TextStyle(
                        fontSize: 12,
                      ),
                    ),
                    SizedBox(height: 4),
                    Text(
                      education.description,
                      style: TextStyle(
                        fontSize: 12,
                        color: Colors.grey,
                      ),
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
