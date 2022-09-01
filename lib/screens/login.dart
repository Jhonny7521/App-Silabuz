import 'package:flutter/material.dart';
import 'package:proyecto_final_silabuz/screens/home.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
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
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: const [
              Text(
                'Bienvenido',
                // style: titleFontSize,
              ),
              SizedBox(
                height: 10,
              ),
              Text(
                'Iniciar sesion para continuar',
                style: TextStyle(color: Colors.white, fontSize: 15),
              ),
            ],
          ),
        ),
      ),
    );
  }
}



//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: SizedBox.expand(
//           child: Stack(
//         children: [
//           Positioned.fill(
//             child: Container(
//               decoration: const BoxDecoration(
//                 gradient: LinearGradient(
//                   colors: [
//                     Color(0xff0193a7),
//                     Color(0xff004650),
//                   ],
//                   begin: Alignment.topCenter,
//                   end: Alignment.bottomCenter,
//                 ),
//               ),
//             ),
//           ),
//           const Align(
//             alignment: Alignment.bottomCenter,
//             child: SizedBox(
//               height: 700,
//               child: FormComponent(),
//             ),
//           )
//         ],
//       )),
//     );
//   }
// }

// class FormComponent extends StatefulWidget {
//   const FormComponent({Key? key}) : super(key: key);

//   @override
//   State<FormComponent> createState() => _FormComponentState();
// }

// class _FormComponentState extends State<FormComponent> {
//   TextEditingController emailTEC = TextEditingController();

//   @override
//   Widget build(BuildContext context) {
//     return Container(
//       padding: const EdgeInsets.all(20),
//       decoration: BoxDecoration(
//         color: Colors.transparent,
//         borderRadius: BorderRadius.circular(20),
//       ),
//       child: Column(
//         crossAxisAlignment: CrossAxisAlignment.start,
//         children: [
//           const SizedBox(height: 20),
//           const Text(
//             'Bienvenid@',
//             style: TextStyle(
//               fontSize: 35,
//               fontWeight: FontWeight.bold,
//               color: Colors.white,
//             ),
//           ),
//           const SizedBox(height: 10),
//           const Text(
//             'Inicia sesión para continuar',
//             style: TextStyle(
//               fontSize: 17,
//               color: Colors.white,
//             ),
//           ),
//           const SizedBox(height: 20),
//           TextField(
//             controller: emailTEC,
//             decoration: const InputDecoration(
//               prefixIcon: Icon(Icons.person),
//               hintText: 'Email',
//               fillColor: Colors.white,
//             ),
//           ),
//           const SizedBox(height: 20),
//           const TextField(
//             decoration: InputDecoration(hintText: 'Password'),
//           ),
//           const SizedBox(height: 20),
//           Center(
//             child: SizedBox(
//               width: 335,
//               height: 40,
//               child: ElevatedButton(
//                   onPressed: () {
//                     if (emailTEC.text == '') {
//                       print('No se puede acceder');
//                     } else {
//                       Navigator.push(
//                           context,
//                           MaterialPageRoute(
//                               builder: (_) => const HomeScreen()));
//                     }
//                   },
//                   child: const Text('Sing in')),
//             ),
//           ),
//           const SizedBox(height: 20),
//           TextButton(onPressed: () {}, child: const Text('Forgot password?')),
//           const SizedBox(height: 50),
//           Row(
//             mainAxisAlignment: MainAxisAlignment.center,
//             children: [
//               const Text('Dont have a count'),
//               TextButton(onPressed: () {}, child: const Text('Sing up')),
//             ],
//           ),
//           const SizedBox(height: 50),
//         ],
//       ),
//     );
//   }
// }
