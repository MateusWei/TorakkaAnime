import 'package:flutter/material.dart';
import 'package:torakka_anime/view/cadastrar_tela02.dart';
import 'package:torakka_anime/view/entrar_tela01.dart';
import 'package:torakka_anime/view/navpages/main_navpag.dart';
import 'package:torakka_anime/view/inicial_tela00.dart';
import 'package:torakka_anime/view/navpages/top_more.dart';

import 'requests/supabase_request.dart';

Future main() async {
  WidgetsFlutterBinding.ensureInitialized();

  await supabaseInitialize();

  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        theme: ThemeData(
          primarySwatch: Colors.blue,
        ),
        initialRoute: "/",
        routes: <String, WidgetBuilder>{
          "/": (BuildContext context) => const InicialTela00(),
          "/entrar": (BuildContext context) => const EntrarTela01(),
          "/cadastrar": (BuildContext context) => const CadastrarTela02(),
          "/home": (BuildContext context) => const MainNavPage(),
          "/more": (BuildContext context) => const TopMore(),
        });
  }
}
