import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:supabase_flutter/supabase_flutter.dart';
import 'package:torakka_anime/requests/mal_queries.dart';
import 'package:torakka_anime/utils/constants.dart';
import 'package:torakka_anime/view/widgets/fundoInicial.dart';
import 'package:torakka_anime/requests/mal_queries.dart';

class Inicial_Tela00 extends StatefulWidget {
  const Inicial_Tela00({Key? key}) : super(key: key);

  @override
  State<Inicial_Tela00> createState() => _Inicial_Tela00State();
}

class _Inicial_Tela00State extends State<Inicial_Tela00> {

  @override
  Widget build(BuildContext context) {
    print('hello');
    // --------------------------------------------------------- plano de fundo -------------------------------------------------------------------------------
    return Scaffold(
        body: Stack(
      children: [
        Container(
          child: const FundoInicial(title: 'background'),
        ),
        Container(
          // --------------------------------------------------------- logo -------------------------------------------------------------------------------
          child: Center(
            child: Container(
              height: 300,
              width: 300,
              child: Image.asset('assets/img/logo1.png'),
            ),
          ),
        ),
        Center(
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: <Widget>[
              const SizedBox(height: 400),
              GestureDetector(
                onTap: () {
                  Navigator.of(context).pushReplacementNamed("/entrar");
                },
                child: Container(
                  // --------------------------------------------------------- BOTAO Log in -------------------------------------------------------------------------------
                  height: 60,
                  width: 160,
                  decoration: BoxDecoration(
                    color: const Color.fromARGB(255, 11, 53, 205),
                    borderRadius: BorderRadius.circular(1000),
                  ),
                  child: const Center(
                    child: Text(
                      'Log in',
                      style: TextStyle(
                        color: Color.fromARGB(255, 255, 255, 255),
                        fontWeight: FontWeight.bold,
                        fontSize: 25,
                      ),
                    ),
                  ),
                ),
              ),
              const SizedBox(height: 15),
              GestureDetector(
                onTap: () {
                  Navigator.of(context).pushReplacementNamed('/cadastrar');
                },
                child: Container(
                  // ---------------------------------------------------------- BOTAO sign up -------------------------------------------------------------------------------
                  height: 60,
                  width: 160,
                  decoration: BoxDecoration(
                    color: const Color.fromARGB(255, 255, 255, 255),
                    borderRadius: BorderRadius.circular(1000),
                  ),
                  child: const Center(
                    child: Text(
                      "Sign up",
                      style: TextStyle(
                        color: Color.fromARGB(255, 0, 0, 0),
                        fontWeight: FontWeight.bold,
                        fontSize: 25,
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ],
    ));
  }
}
