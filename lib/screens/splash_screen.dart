import 'package:flutter/material.dart';
import 'package:proyecto_final_silabuz/screens/home.dart';
import 'package:proyecto_final_silabuz/screens/login.dart';
import 'package:flutter_secure_storage/flutter_secure_storage.dart';

class SplashScreenView extends StatefulWidget {
  const SplashScreenView({super.key});

  @override
  State<SplashScreenView> createState() => _SplashScreenViewState();
}

class _SplashScreenViewState extends State<SplashScreenView> {
  @override
  void initState() {
    WidgetsBinding.instance.addPostFrameCallback((_) async {
      const storage = FlutterSecureStorage();
      final String? token = await storage.read(
        key: '__token__',
      );
      if (token != null) {
        // verficar si mi token es valido
        Navigator.pushReplacement(
            context, MaterialPageRoute(builder: (_) => HomeScreen()));
      } else {
        Navigator.pushReplacement(
            context, MaterialPageRoute(builder: (_) => LoginScreen()));
      }
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: const Center(
        child: CircularProgressIndicator(),
      ),
      floatingActionButton: FloatingActionButton(onPressed: () {
        Navigator.push(
            context, MaterialPageRoute(builder: (_) => const LoginScreen()));
      }),
    );
  }
}
