import 'package:flutter/material.dart';
import 'package:proyecto_final_silabuz/screens/edit_profile.dart';
import 'package:proyecto_final_silabuz/screens/login.dart';
import 'package:proyecto_final_silabuz/screens/profile_screen.dart';
import 'package:provider/provider.dart';
import 'package:proyecto_final_silabuz/user_provider.dart';

import 'package:flutter_secure_storage/flutter_secure_storage.dart';
// import 'package:proyecto_final_silabuz/user_provider.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int indexPage = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        title: const Text(
          'Perfil',
          style: TextStyle(fontSize: 22),
        ),
        centerTitle: true,
        backgroundColor: const Color(0xff004650),
        actions: [
          IconButton(
            onPressed: () {},
            icon: const Icon(Icons.notifications_rounded),
          ),
        ],
      ),
      body: IndexedStack(
        index: indexPage,
        children: [
          ProfileScreen(),
          Container(
            color: Colors.blue,
          ),
          Container(
            color: Colors.blue,
          ),
          Container(
            color: Colors.blue,
          ),
          const Menu(),
        ],
      ),
      bottomNavigationBar: BottomNavigationBar(
        selectedItemColor: const Color(0xff004650),
        unselectedItemColor: Colors.grey,
        showUnselectedLabels: true,
        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.account_circle_outlined),
            label: 'Perfil',
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.calendar_month_rounded,
            ),
            label: 'Asistencia',
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.monetization_on_outlined,
            ),
            label: 'Adelanto',
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.credit_card,
            ),
            label: 'Credito',
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.menu,
            ),
            label: 'Menú',
          ),
        ],
        onTap: (i) {
          indexPage = i;
          setState(() {});
        },
        currentIndex: indexPage,
      ),
    );
  }
}

class Menu extends StatelessWidget {
  const Menu({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.orange,
      child: Center(
        child: Column(
          children: [
            Container(
              width: 100,
              height: 100,
              margin: const EdgeInsets.all(10),
              decoration: const BoxDecoration(
                image: DecorationImage(
                  image: AssetImage('assets/user.jpg'),
                  fit: BoxFit.cover,
                ),
                shape: BoxShape.circle,
              ),
            ),
            Text(context.watch<UserProvider>().userName ?? ''),
            ElevatedButton(
                onPressed: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (_) => const EditProfile()));
                },
                child: const Text('Editar Perfil')),
            ElevatedButton(
                onPressed: () async {
                  final storage = FlutterSecureStorage();
                  await storage.delete(key: '__token__');
                  Navigator.push(context,
                      MaterialPageRoute(builder: (_) => LoginScreen()));
                },
                child: const Text('log out'))
          ],
        ),
      ),
    );
  }
}
