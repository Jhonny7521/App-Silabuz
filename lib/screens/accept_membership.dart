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
        const Text('Tener en cuenta que:'),
        const SizedBox(height: 30),
        Expanded(
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: const [
              Text(
                '- Los nuevos afiliados al Sistema Privado de Pensiones deberán ser dados de alta en AFP Integra - Ley 29903 y su reglamento .',
                style: TextStyle(fontSize: 15, fontWeight: FontWeight.w500),
              ),
              SizedBox(
                height: 10,
              ),
              Text(
                '- Solo se afiliará al personal que no haya aportado anteriormente a ninguna AFP.',
                style: TextStyle(fontSize: 15, fontWeight: FontWeight.w500),
              ),
              Text(
                'Verificar en el siguiente link si usted ya se encuentra afiliado https : reportedeudas.sbs.gob.pe/ReporteSituacionPrevisional/Afil_Consulta.aspx',
                style: TextStyle(fontSize: 15, fontWeight: FontWeight.w500),
              ),
              SizedBox(
                height: 10,
              ),
              Text(
                '- Todas sus aportaciones realizadas a la ONP se pierden cuando se traslada a la AFP.',
                style: TextStyle(fontSize: 15, fontWeight: FontWeight.w500),
              ),
            ],
          ),
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
              onPressed: () {},
              child: const Text(
                'CONFIRMAR',
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
