import "package:flutter/material.dart";
import "package:hero_animation/screen/details.dart";

import "../models/person.dart";

const people = [
  Person(name: 'John', age: 20, emoji: '🙋‍♂️'),
  Person(name: 'Jane', age: 21, emoji: '👸'),
  Person(name: 'Jack', age: 22, emoji: '🧔'),
];

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  static const routeName = '/';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("People"),
        centerTitle: true,
      ),
      body: ListView.builder(
          itemCount: people.length,
          itemBuilder: (context, index) {
            final person = people[index];
            return ListTile(
              onTap: () {
                Navigator.of(context).push(MaterialPageRoute(
                    builder: (context) => Details(person: person)));
              },
              title: Hero(tag: person.name, child: Text(person.name)),
              subtitle:
                  Hero(tag: person.age, child: Text('${person.age} years old')),
              leading: Hero(
                tag: person.emoji,
                child: Text(
                  person.emoji,
                  style: const TextStyle(fontSize: 32),
                ),
              ),
              trailing: const Icon(
                Icons.arrow_forward_ios,
              ),
            );
          }),
    );
  }
}
