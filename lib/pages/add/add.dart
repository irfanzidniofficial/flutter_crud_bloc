import 'dart:math';
import 'package:flutter/material.dart';
import '../../bloc/export.dart';

class AddPage extends StatelessWidget {
  AddPage({super.key});

  final TextEditingController nameC = TextEditingController();
  final TextEditingController ageC = TextEditingController();

  @override
  Widget build(BuildContext context) {
    UserBloc userB = context.read<UserBloc>();
    return Scaffold(
      appBar: AppBar(
        title: const Text('ADD USERS'),
      ),
      body: ListView(
        padding: const EdgeInsets.all(20),
        children: [
          TextField(
            controller: nameC,
            decoration: const InputDecoration(
              labelText: "Name",
              border: OutlineInputBorder(),
            ),
          ),
          const SizedBox(
            height: 20,
          ),
          TextField(
            controller: ageC,
            keyboardType: TextInputType.number,
            decoration: const InputDecoration(
              labelText: "Age",
              border: OutlineInputBorder(),
            ),
          ),
          const SizedBox(
            height: 20,
          ),
          ElevatedButton(
            onPressed: () {
              userB.add(
                AddUserEvent(
                  User(
                    id: Random().nextInt(99999),
                    name: nameC.text,
                    age: int.parse(ageC.text),
                  ),
                ),
              );
              Navigator.pop(context);
            },
            child: const Text('ADD USER'),
          ),
        ],
      ),
    );
  }
}
