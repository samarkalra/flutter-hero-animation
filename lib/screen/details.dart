import "package:flutter/material.dart";
import "package:hero_animation/widgets/hero_widget.dart";

import "../models/person.dart";

class Details extends StatelessWidget {
  final Person person;

  const Details({super.key, required this.person});

  static const routeName = '/details';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: AppHeroWidget(
          tag: person.emoji,
          child: Text(
            person.emoji,
            style: const TextStyle(fontSize: 32),
          ),
        ),
        centerTitle: true,
      ),
      body: Center(
        child: Column(crossAxisAlignment: CrossAxisAlignment.center, children: [
          const SizedBox(
            height: 20,
          ),
          AppHeroWidget(
            tag: person.name,
            child: Text(
              person.name,
              style: const TextStyle(fontSize: 20),
            ),
          ),
          const SizedBox(height: 20),
          AppHeroWidget(
            tag: person.age,
            child: Text(
              '${person.age} years old',
              style: const TextStyle(fontSize: 18),
            ),
          ),
        ]),
      ),
    );
  }
}
