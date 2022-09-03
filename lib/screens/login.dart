import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:proyecto_final_silabuz/screens/home.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  String? selectedCompany = 'Opción 0';
  final companies = ['Opción 1', 'Opción 2', 'Opción 3'];
  bool showPassword = false;
  bool rememberMe = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: double.infinity,
        height: double.infinity,
        decoration: const BoxDecoration(
          gradient: LinearGradient(
            colors: [
              Color(0xff0193a7),
              Color(0xff004650),
            ],
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
          ),
        ),
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 40),
          child: CustomScrollView(
            slivers: [
              SliverFillRemaining(
                hasScrollBody: false,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const Text(
                      'Bienvenid@',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 35,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    const Text(
                      'Inicia sesión para continuar',
                      style: TextStyle(color: Colors.white, fontSize: 17),
                    ),
                    const SizedBox(
                      height: 40,
                    ),
                    const Text(
                      'Empresa',
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 14,
                          fontWeight: FontWeight.w300),
                    ),
                    SizedBox(
                      width: double.infinity,
                      child: DropdownButton<String>(
                        //DropdownButton<String>(
                        underline: Container(
                          color: Colors.white,
                          height: 1.5,
                        ),
                        isExpanded: true,
                        style: const TextStyle(
                            color: Colors.white, fontSize: 20, height: 0.3),
                        dropdownColor: Color(0xff004650),
                        //focusColor: Colors.green,
                        icon: const Icon(
                          Icons.expand_more,
                          color: Colors.white,
                        ),
                        items: companies
                            .map<DropdownMenuItem<String>>((String value) {
                          return DropdownMenuItem<String>(
                            value: value,
                            child: Text(value),
                          );
                        }).toList(),
                        onChanged: (item) {
                          setState(() {
                            selectedCompany = item;
                          });
                        },
                        value: selectedCompany,
                      ),
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    const TextField(
                      cursorColor: Colors.white,
                      textAlignVertical: TextAlignVertical.top,
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 20,
                        height: 1.50,
                      ),
                      decoration: InputDecoration(
                        enabledBorder: UnderlineInputBorder(
                            borderSide:
                                BorderSide(color: Colors.white, width: 0.6)),
                        focusedBorder: UnderlineInputBorder(
                            borderSide:
                                BorderSide(color: Colors.white, width: 0.6)),
                        labelText: 'Usuario',
                        labelStyle: TextStyle(
                            color: Colors.white,
                            fontSize: 20,
                            fontWeight: FontWeight.w300),
                        floatingLabelBehavior: FloatingLabelBehavior.always,
                        floatingLabelAlignment: FloatingLabelAlignment.start,
                        prefixIconConstraints: BoxConstraints(maxHeight: 15),
                        prefixIcon: Padding(
                          padding: EdgeInsets.only(right: 15),
                          child: Icon(
                            Icons.person,
                            color: Colors.white,
                            size: 35,
                          ),
                        ),
                      ),
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    TextField(
                      cursorColor: Colors.white,
                      obscureText: !showPassword,
                      style: const TextStyle(
                        color: Colors.white,
                        fontSize: 20,
                        height: 1.5,
                      ),
                      decoration: InputDecoration(
                        labelText: 'Contraseña',
                        labelStyle: const TextStyle(
                            color: Colors.white,
                            fontSize: 20,
                            fontWeight: FontWeight.w300),
                        floatingLabelBehavior: FloatingLabelBehavior.always,
                        floatingLabelAlignment: FloatingLabelAlignment.start,
                        prefixIconConstraints:
                            const BoxConstraints(maxHeight: 12),
                        prefixIcon: const Padding(
                          padding: EdgeInsets.only(left: 3, right: 15),
                          child: Icon(
                            Icons.lock,
                            color: Colors.white,
                            size: 30,
                          ),
                        ),
                        suffixIconConstraints:
                            const BoxConstraints(maxHeight: 25),
                        suffixIcon: IconButton(
                          onPressed: () {
                            showPassword = !showPassword;
                            setState(() {});
                          },
                          icon: Padding(
                            padding: const EdgeInsets.only(left: 10),
                            child: Icon(
                              showPassword
                                  ? Icons.visibility_off
                                  : Icons.visibility,
                              color: Colors.white,
                              size: 28,
                            ),
                          ),
                        ),
                        enabledBorder: const UnderlineInputBorder(
                          borderSide: BorderSide(color: Colors.white),
                        ),
                        focusedBorder: const UnderlineInputBorder(
                          borderSide: BorderSide(color: Colors.white),
                        ),
                      ),
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    Row(
                      children: [
                        Transform.scale(
                          scale: 1.2,
                          child: Checkbox(
                            value: rememberMe,
                            onChanged: (value) {
                              setState(
                                () {
                                  rememberMe = value ?? false;
                                },
                              );
                            },
                            activeColor: Colors.white,
                            checkColor: const Color(0xff004650),
                            side:
                                const BorderSide(color: Colors.white, width: 2),
                            materialTapTargetSize:
                                MaterialTapTargetSize.shrinkWrap,
                          ),
                        ),
                        const SizedBox(
                          width: 10,
                        ),
                        const Text(
                          'Recordar contraseña',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 17,
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(
                      height: 45,
                    ),
                    SizedBox(
                      width: double.infinity,
                      height: 55,
                      child: ElevatedButton(
                        onPressed: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (_) => const HomeScreen()));
                        },
                        style: ElevatedButton.styleFrom(
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(40)),
                          primary: Colors.white,
                        ),
                        child: const Text(
                          'Iniciar sesión',
                          style:
                              TextStyle(color: Color(0xff004650), fontSize: 19),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
