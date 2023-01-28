import 'package:flutter/material.dart';
import 'package:flutter_crud_bloc/pages/add/add.dart';
import 'package:flutter_crud_bloc/pages/edit/edit.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('ALL USERS'),
      ),
      body: ListView.builder(
        itemCount: 5,
        itemBuilder: (context, index) {
          return ListTile(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => const EditPage()),
              );
            },
            leading: CircleAvatar(
              child: Text('${index + 1}'),
            ),
            title: const Text('Nama User'),
            subtitle: const Text('Umur User'),
            trailing: IconButton(
              onPressed: () {},
              icon: const Icon(
                Icons.delete,
              ),
            ),
          );
        },
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => const AddPage()),
          );
        },
        child: const Icon(Icons.add),
      ),
    );
  }
}
