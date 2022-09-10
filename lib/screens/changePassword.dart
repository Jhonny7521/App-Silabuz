import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:reactive_forms/reactive_forms.dart';

class ChangePasswordScreen extends StatefulWidget {
  const ChangePasswordScreen({Key? key}) : super(key: key);

  @override
  State<ChangePasswordScreen> createState() => _ChangePasswordScreenState();
}

class _ChangePasswordScreenState extends State<ChangePasswordScreen> {
  bool showPassword = false;
  bool showPassword2 = false;
  bool rememberMe = false;
  final form = FormGroup({
    // 'userEmail': FormControl<String>(validators: [Validators.required, Validators.pattern("expresion regular")]),
    'newPassword': FormControl<String>(validators: [Validators.required]),
    'confirmNewPassword':
        FormControl<String>(validators: [Validators.required]),
  });

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
          child: Center(
            child: Card(
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(5)),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Container(
                    decoration: const BoxDecoration(
                      borderRadius: BorderRadius.all(Radius.circular(5)),
                      color: Color(0xff004650),
                    ),
                    padding: const EdgeInsets.all(5),
                    height: 60,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: const [
                        Padding(
                          padding: EdgeInsets.only(right: 10.0),
                          child: Icon(
                            Icons.create,
                            color: Colors.white,
                            size: 25,
                          ),
                        ),
                        Text(
                          'Cambiar contraseña',
                          style: TextStyle(
                            fontSize: 20,
                            color: Colors.white,
                          ),
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(
                    height: 30,
                  ),
                  Container(
                    padding: const EdgeInsets.symmetric(horizontal: 30),
                    child: Row(
                      children: const [
                        Expanded(
                          child: Text(
                            'Por temas de seguridad, su nombre de usuario no debe ser igual a su contraseña ',
                            style: TextStyle(
                                fontSize: 15, fontWeight: FontWeight.w500),
                          ),
                        )
                      ],
                    ),
                  ),
                  const SizedBox(
                    height: 40,
                  ),
                  // ----- FORMULARIO -----
                  Container(
                    padding: const EdgeInsets.symmetric(horizontal: 25),
                    child: ReactiveForm(
                      formGroup: form,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          ReactiveTextField(
                            formControlName: 'confirmNewPassword',
                            validationMessages: {
                              ValidationMessage.required: (error) =>
                                  'Este campo es requerido',
                              //ValidationMessage.pattern: (error) => 'El password debe contener números, caracteres y puntos',
                            },
                            cursorColor: Colors.black,
                            obscureText: !showPassword,
                            style: const TextStyle(
                              //color: Colors.white,
                              fontSize: 20,
                              //height: 0.5,
                            ),
                            decoration: InputDecoration(
                              hintText: 'Contraseña nueva',
                              hintStyle: const TextStyle(
                                  color: Colors.black,
                                  fontSize: 17,
                                  fontWeight: FontWeight.w300),
                              //floatingLabelBehavior: FloatingLabelBehavior.always,
                              floatingLabelAlignment:
                                  FloatingLabelAlignment.start,
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
                                    color: Color(0xff004650),
                                    size: 28,
                                  ),
                                ),
                              ),
                              enabledBorder: const UnderlineInputBorder(
                                borderSide:
                                    BorderSide(color: Color(0xff004650)),
                              ),
                              focusedBorder: const UnderlineInputBorder(
                                borderSide:
                                    BorderSide(color: Color(0xff004650)),
                              ),
                            ),
                          ),
                          const SizedBox(
                            height: 50,
                          ),
                          ReactiveTextField(
                            formControlName: 'confirmNewPassword',
                            validationMessages: {
                              ValidationMessage.required: (error) =>
                                  'Este campo es requerido',
                              //ValidationMessage.pattern: (error) => 'El password debe contener números, caracteres y puntos',
                            },
                            cursorColor: Colors.black,
                            obscureText: !showPassword,
                            style: const TextStyle(
                              //color: Colors.white,
                              fontSize: 20,
                              //height: 0.5,
                            ),
                            decoration: InputDecoration(
                              hintText: 'Vuelva a escribir contraseña',
                              hintStyle: const TextStyle(
                                  color: Colors.black,
                                  fontSize: 17,
                                  fontWeight: FontWeight.w300),
                              //floatingLabelBehavior: FloatingLabelBehavior.always,
                              floatingLabelAlignment:
                                  FloatingLabelAlignment.start,
                              suffixIconConstraints:
                                  const BoxConstraints(maxHeight: 25),
                              suffixIcon: IconButton(
                                onPressed: () {
                                  showPassword2 = !showPassword2;
                                  setState(() {});
                                },
                                icon: Padding(
                                  padding: const EdgeInsets.only(left: 10),
                                  child: Icon(
                                    showPassword
                                        ? Icons.visibility_off
                                        : Icons.visibility,
                                    color: Color(0xff004650),
                                    size: 28,
                                  ),
                                ),
                              ),
                              enabledBorder: const UnderlineInputBorder(
                                borderSide:
                                    BorderSide(color: Color(0xff004650)),
                              ),
                              focusedBorder: const UnderlineInputBorder(
                                borderSide:
                                    BorderSide(color: Color(0xff004650)),
                              ),
                            ),
                          ),
                          const SizedBox(
                            height: 50,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.end,
                            children: [
                              TextButton(
                                onPressed: () {
                                  Navigator.pop(context);
                                },
                                child: const Text(
                                  'CANCELAR',
                                  style: TextStyle(
                                    color: Color(0xffcc3162),
                                    fontSize: 16,
                                  ),
                                ),
                              ),
                              TextButton(
                                onPressed: () {},
                                child: const Text(
                                  'ACEPTAR',
                                  style: TextStyle(
                                    color: Color(0xffcc3162),
                                    fontSize: 16,
                                  ),
                                ),
                              ),
                            ],
                          ),
                          const SizedBox(
                            height: 10,
                          ),
                        ],
                      ),
                    ),
                  ),
                  // ----- FORMULARIO -----
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
