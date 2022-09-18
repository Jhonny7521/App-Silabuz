import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:proyecto_final_silabuz/screens/accept_membership.dart';
import 'package:proyecto_final_silabuz/screens/change_bank.dart';
import 'package:proyecto_final_silabuz/user_provider.dart';

class ProfileDataWidget extends StatelessWidget {
  const ProfileDataWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.only(right: 20, left: 20, top: 30),
      child: Column(
        children: [
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Padding(
                padding: EdgeInsets.only(right: 25),
                child: Icon(
                  Icons.stay_current_portrait,
                  size: 30,
                  color: Color(0xff004650),
                ),
              ),
              Flexible(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Text(
                      'Celular',
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 15,
                        fontWeight: FontWeight.w300,
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 8),
                      child: Text(
                        context.read<UserProvider>().userPhone ?? 'Valor nulo',
                        style: const TextStyle(
                            color: Colors.black,
                            fontSize: 20,
                            overflow: TextOverflow.ellipsis),
                      ),
                    )
                  ],
                ),
              )
            ],
          ),
          const SizedBox(
            height: 20,
          ),
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Padding(
                padding: EdgeInsets.only(right: 25),
                child: Icon(
                  Icons.mail_rounded,
                  size: 30,
                  color: Color(0xff004650),
                ),
              ),
              Flexible(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Text(
                      'Correo',
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 15,
                        fontWeight: FontWeight.w300,
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 8),
                      child: Text(
                        context.read<UserProvider>().userEmail ?? 'Valor nulo',
                        style: const TextStyle(
                            color: Colors.black,
                            fontSize: 20,
                            overflow: TextOverflow.ellipsis),
                      ),
                    )
                  ],
                ),
              )
            ],
          ),
        ],
      ),
    );
  }
}

class AdministrativeData extends StatelessWidget {
  const AdministrativeData({Key? key}) : super(key: key);

  void showChangeBank(BuildContext context) {
    showDialog(
      barrierDismissible: true,
      context: context,
      builder: (context) {
        return const AlertDialog(
          elevation: 5,
          title: Text('Cambiar Banco Sueldo'),
          contentPadding: EdgeInsets.only(left: 24, right: 24, top: 20),
          // ---- Alert messagge ---
          content: AlertChangeBank(),
          // ---- Alert messagge ---
        );
      },
    );
  }

  void acceptAfp(BuildContext context) {
    showDialog(
      barrierDismissible: true,
      context: context,
      builder: (context) {
        return const AlertDialog(
          elevation: 5,
          title: Text('Confirmar'),
          contentPadding: EdgeInsets.only(left: 24, right: 24, top: 20),
          // ---- Alert messagge ---
          content: AcceptMembership(),
          // ---- Alert messagge ---
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.only(right: 20, left: 20, top: 20),
      child: Column(
        children: [
          SizedBox(
            child: Row(children: [
              const Icon(Icons.arrow_drop_down),
              const SizedBox(width: 30),
              Expanded(
                child: Container(
                    height: 1, color: const Color.fromRGBO(220, 220, 220, 0.9)),
              )
            ]),
          ),
          const SizedBox(
            height: 20,
          ),
          Row(
            children: const [
              Padding(
                padding: EdgeInsets.only(left: 10),
                child: Text(
                  'Datos Administrativos',
                  textAlign: TextAlign.start,
                  style: TextStyle(
                      color: Colors.black,
                      fontSize: 15,
                      fontWeight: FontWeight.bold),
                ),
              ),
            ],
          ),
          const SizedBox(
            height: 30,
          ),
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Padding(
                padding: EdgeInsets.only(right: 25),
                child: Icon(
                  Icons.access_time,
                  size: 30,
                  color: Color(0xff004650),
                ),
              ),
              Flexible(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: const [
                    Text(
                      'Condición',
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 15,
                        fontWeight: FontWeight.w300,
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(top: 8),
                      child: Text(
                        //context.read<UserProvider>().userPhone ?? 'Valor nulo',
                        'Full  Time',
                        style: TextStyle(
                            color: Colors.black,
                            fontSize: 20,
                            overflow: TextOverflow.ellipsis),
                      ),
                    )
                  ],
                ),
              )
            ],
          ),
          const SizedBox(
            height: 20,
          ),
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Padding(
                padding: EdgeInsets.only(right: 25),
                child: Icon(
                  Icons.account_balance_rounded,
                  size: 30,
                  color: Color(0xff004650),
                ),
              ),
              Flexible(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Text(
                      'Banco Sueldo',
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 15,
                        fontWeight: FontWeight.w300,
                      ),
                    ),
                    const Padding(
                      padding: EdgeInsets.only(top: 8),
                      child: Text(
                        //context.read<UserProvider>().userEmail ?? 'Valor nulo',
                        'Banco de Crédito del Perú',
                        style: TextStyle(
                            color: Colors.black,
                            fontSize: 20,
                            overflow: TextOverflow.ellipsis),
                      ),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        TextButton(
                          onPressed: () => showChangeBank(context),
                          child: const Text(
                            'CAMBIAR BANCO',
                            style: TextStyle(
                              color: Color(0xffcc3162),
                              fontSize: 20,
                            ),
                          ),
                        )
                      ],
                    ),
                  ],
                ),
              )
            ],
          ),
          // const SizedBox(
          //   height: 5,
          // ),
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Padding(
                padding: EdgeInsets.only(right: 25),
                child: Icon(
                  Icons.price_change_outlined,
                  size: 30,
                  color: Color(0xff004650),
                ),
              ),
              Flexible(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: const [
                    Text(
                      'Estado',
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 15,
                        fontWeight: FontWeight.w300,
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(top: 8),
                      child: Text(
                        //context.read<UserProvider>().userEmail ?? 'Valor nulo',
                        'Activo',
                        style: TextStyle(
                            color: Colors.black,
                            fontSize: 20,
                            overflow: TextOverflow.ellipsis),
                      ),
                    )
                  ],
                ),
              )
            ],
          ),
          const SizedBox(
            height: 20,
          ),
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Padding(
                padding: EdgeInsets.only(right: 25),
                child: Icon(
                  Icons.account_balance_rounded,
                  size: 30,
                  color: Color(0xff004650),
                ),
              ),
              Flexible(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: const [
                    Text(
                      'Tipo de cuenta',
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 15,
                        fontWeight: FontWeight.w300,
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(top: 8),
                      child: Text(
                        //context.read<UserProvider>().userEmail ?? 'Valor nulo',
                        'Cuenta de ahorros',
                        style: TextStyle(
                            color: Colors.black,
                            fontSize: 20,
                            overflow: TextOverflow.ellipsis),
                      ),
                    )
                  ],
                ),
              )
            ],
          ),
          const SizedBox(
            height: 20,
          ),
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Padding(
                padding: EdgeInsets.only(right: 25),
                child: Icon(
                  Icons.business_center_rounded,
                  size: 30,
                  color: Color(0xff004650),
                ),
              ),
              Flexible(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Text(
                      'Sistema de Pensión',
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 15,
                        fontWeight: FontWeight.w300,
                      ),
                    ),
                    const Padding(
                      padding: EdgeInsets.only(top: 8),
                      child: Text(
                        //context.read<UserProvider>().userEmail ?? 'Valor nulo',
                        'AFP Prima Mixta',
                        style: TextStyle(
                            color: Colors.black,
                            fontSize: 20,
                            overflow: TextOverflow.ellipsis),
                      ),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        TextButton(
                          onPressed: () => acceptAfp(context),
                          child: const Text(
                            'AFILIACIÓN AFP',
                            style: TextStyle(
                              color: Color(0xffcc3162),
                              fontSize: 20,
                            ),
                          ),
                        )
                      ],
                    ),
                  ],
                ),
              )
            ],
          ),
          const SizedBox(
            height: 20,
          )
        ],
      ),
    );
  }
}
