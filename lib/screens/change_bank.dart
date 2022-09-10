import 'package:flutter/Material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

class AlertChangeBank extends StatefulWidget {
  const AlertChangeBank({Key? key}) : super(key: key);

  @override
  State<AlertChangeBank> createState() => _AlertChangeBankState();
}

class _AlertChangeBankState extends State<AlertChangeBank> {
  String? selectedCompany = 'Banco de Crédito del Perú';
  final companies = [
    'Scotiabank',
    'BBVA',
    'Interbank',
    'Banco de Crédito del Perú'
  ];
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisAlignment: MainAxisAlignment.center,
      mainAxisSize: MainAxisSize.min,
      children: [
        const SizedBox(height: 30),
        Flexible(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisSize: MainAxisSize.min,
            children: const [
              Text(
                'Banco Actual',
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 13,
                  fontWeight: FontWeight.w300,
                ),
              ),
              Padding(
                padding: EdgeInsets.only(top: 8),
                child: Text(
                  //context.read<UserProvider>().userEmail ?? 'Valor nulo',
                  'Banco de Crédito del Perú',
                  style: TextStyle(
                      color: Colors.black,
                      fontSize: 15,
                      overflow: TextOverflow.ellipsis),
                ),
              )
            ],
          ),
        ),
        const SizedBox(
          height: 40,
        ),
        const Text(
          'Solicitar Cambio de Banco a',
          style: TextStyle(
              color: Colors.black, fontSize: 14, fontWeight: FontWeight.w300),
        ),
        SizedBox(
          width: double.infinity,
          child: DropdownButton<String>(
            //DropdownButton<String>(
            underline: Container(
              color: Colors.black,
              height: 1.5,
            ),
            isExpanded: true,
            style: const TextStyle(fontSize: 15, height: 0.3),
            //dropdownColor: const Color(0xff004650),
            //focusColor: Colors.green,
            icon: const Icon(
              Icons.expand_more,
              color: Colors.black,
            ),
            items: companies.map<DropdownMenuItem<String>>((String value) {
              return DropdownMenuItem<String>(
                value: value,
                child: Text(
                  value,
                  style: TextStyle(color: Colors.black),
                ),
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
          height: 40,
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
                'SOLICITAR',
                style: TextStyle(
                  color: Color(0xffcc3162),
                  fontSize: 16,
                ),
              ),
            ),
          ],
        ),
      ],
    );
  }
}
