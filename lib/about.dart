// ignore_for_file: prefer_const_declarations

import 'package:flutter/material.dart';

class AboutMeSection extends StatelessWidget {
  const AboutMeSection({super.key});

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        final cardWidth =
            constraints.maxWidth > 600 ? 600.0 : constraints.maxWidth;
        final cardHeight = 155.0;

        return Card(
          elevation: 2,
          child: Container(
            width: cardWidth,
            height: cardHeight,
            padding: const EdgeInsets.all(20.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: const [
                Text(
                  "I am a motivated and dedicated individual. With a background in Computer Engineering, I am excited to contribute my skills to meaningful projects and collaborate with others. I have a strong commitment to learning and am always eager to expand my knowledge.",
                  textAlign: TextAlign.justify,
                ),
              ],
            ),
          ),
        );
      },
    );
  }
}
