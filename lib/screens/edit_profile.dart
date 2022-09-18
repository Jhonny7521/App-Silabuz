import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:proyecto_final_silabuz/user_provider.dart';

class EditProfile extends StatelessWidget {
  const EditProfile({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Editar perfil'),
      ),
      floatingActionButton: FloatingActionButton(onPressed: () {
        print(context.read<UserProvider>().userName);
        context.read<UserProvider>().changeName('Jhonny A.');
        print(context.read<UserProvider>().userName);
      }),
    );
  }
}
