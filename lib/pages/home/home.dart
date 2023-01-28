import 'package:flutter/material.dart';
import 'package:flutter_crud_bloc/pages/add/add.dart';
import 'package:flutter_crud_bloc/pages/edit/edit.dart';
import '../../bloc/export.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    UserBloc userB = context.read<UserBloc>();
    return Scaffold(
      appBar: AppBar(
        title: const Text('ALL USERS'),
      ),
      body: BlocBuilder<UserBloc, UserState>(
        bloc: userB,
        builder: (context, state) {
          if (state.allUsers.isEmpty) {
            return const Center(
              child: Text(
                'DATA MASIH KOSONG',
                style: TextStyle(
                  fontSize: 20,
                ),
              ),
            );
          }
          return ListView.builder(
            itemCount: state.allUsers.length,
            itemBuilder: (context, index) {
              User user = state.allUsers[index];
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
                title: Text(user.name),
                subtitle: Text('${user.age} tahun'),
                trailing: IconButton(
                  onPressed: () {},
                  icon: const Icon(
                    Icons.delete,
                  ),
                ),
              );
            },
          );
        },
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => AddPage()),
          );
        },
        child: const Icon(Icons.add),
      ),
    );
  }
}
