import 'package:flutter/material.dart';
import 'package:proyecto_final_silabuz/screens/body_profile.dart';
import 'package:proyecto_final_silabuz/screens/changePassword.dart';
import 'package:proyecto_final_silabuz/screens/header_profile.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: const [
          ImageAndNameWidget(),
          ProfileDataWidget(),
          AdministrativeData(),
          ShiftButtons(),
        ],
      ),
    );
  }
}

class ShiftButtons extends StatelessWidget {
  const ShiftButtons({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const SizedBox(
          height: 20,
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: SizedBox(
            width: double.infinity,
            height: 50,
            child: ElevatedButton(
              onPressed: () {},
              style: ElevatedButton.styleFrom(
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(40)),
                  primary: const Color(0xffcc3162)),
              child: const Text(
                'Actualizar datos',
                style: TextStyle(
                  fontSize: 20,
                ),
              ),
            ),
          ),
        ),
        const SizedBox(
          height: 15,
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: SizedBox(
            width: double.infinity,
            height: 50,
            child: ElevatedButton(
              onPressed: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (_) => const ChangePasswordScreen()));
              },
              style: ElevatedButton.styleFrom(
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(40)),
                  primary: const Color(0xffcc3162)),
              child: const Text(
                'Cambiar contraseña',
                style: TextStyle(
                  fontSize: 20,
                ),
              ),
            ),
          ),
        ),
        const SizedBox(
          height: 30,
        )
      ],
    );
  }
}
