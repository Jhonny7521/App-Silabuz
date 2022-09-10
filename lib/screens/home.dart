import 'package:flutter/material.dart';
// import 'package:provider/provider.dart';
// import 'package:proyecto_final_silabuz/screens/changePassword.dart';
import 'package:proyecto_final_silabuz/screens/profile_screen.dart';
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
