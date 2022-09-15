import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

class AcceptMembership extends StatelessWidget {
  const AcceptMembership({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisAlignment: MainAxisAlignment.center,
      mainAxisSize: MainAxisSize.min,
      children: [
        const Text('Tener en cuenta que: \n'),
        const Text(
          '- Los nuevos afiliados al Sistema Privado de Pensiones deberán ser dados de alta en AFP Integra - Ley 29903 y su reglamento .',
          style: TextStyle(fontSize: 15, fontWeight: FontWeight.w500),
        ),
        const Text(
          '- Solo se afiliará al personal que no haya aportado anteriormente a ninguna AFP.',
          style: TextStyle(fontSize: 15, fontWeight: FontWeight.w500),
        ),
        RichText(
          text: const TextSpan(
            text:
                'Verificar en el siguiente link si usted ya se encuentra afiliado ',
            style: TextStyle(
                color: Colors.black, fontSize: 15, fontWeight: FontWeight.w500),
            children: <TextSpan>[
              TextSpan(
                  text:
                      'https:reporte\ndeudas.sbs.gob.pe/ReporteSituacion\nPrevisional/Afil_Consulta.aspx',
                  style: TextStyle(
                      color: Color(0xffcc3162),
                      fontSize: 15,
                      decoration: TextDecoration.underline))
            ],
          ),
        ),
        const Text(
          '- Todas sus aportaciones realizadas a la ONP se pierden cuando se traslada a la AFP.',
          style: TextStyle(fontSize: 15, fontWeight: FontWeight.w500),
        ),
        const SizedBox(height: 30),
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
              onPressed: () {
                Navigator.pop(context);
              },
              child: const Text(
                'CONFIRMAR\nAFILIACIÓN',
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
