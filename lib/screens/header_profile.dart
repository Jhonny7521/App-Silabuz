import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:proyecto_final_silabuz/user_provider.dart';

class ImageAndNameWidget extends StatelessWidget {
  const ImageAndNameWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      //color: Colors.amber,
      child: Stack(
        children: [
          Image.asset('assets/user.jpg'),
          Column(
            children: [
              Padding(
                padding: const EdgeInsets.all(20.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: const [
                    Icon(
                      Icons.add_a_photo_rounded,
                      size: 30,
                      color: Colors.white,
                    ),
                  ],
                ),
              ),
              const SizedBox(
                height: 130,
              ),
              Padding(
                padding: const EdgeInsets.only(right: 20, left: 22, top: 8),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Padding(
                      padding: EdgeInsets.only(right: 25),
                      child: Icon(
                        Icons.account_circle,
                        size: 30,
                        color: Colors.white,
                      ),
                    ),
                    Flexible(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const Text(
                            'Nombres y Apellidos',
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 15,
                              fontWeight: FontWeight.w300,
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(top: 8),
                            child: Text(
                              context.read<UserProvider>().userName ??
                                  'Valor nulo',
                              style: const TextStyle(
                                  color: Colors.white,
                                  fontSize: 23,
                                  overflow: TextOverflow.ellipsis),
                            ),
                          )
                        ],
                      ),
                    )
                  ],
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
