import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:tugas2/constants/theme_cubit.dart';
import 'package:tugas2/pages/main_page.dart';
import 'package:tugas2/pages/profil_page.dart';
import 'package:tugas2/pages/setting_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return BlocProvider<ThemeCubit>(
      create: (context) => ThemeCubit(),
      child: BlocBuilder<ThemeCubit, ThemeMode>(
        builder: (context, themeMode) {
          return MaterialApp(
            title: 'Flutter Tugas 2',
            debugShowCheckedModeBanner: false,
            theme: ThemeData.light(useMaterial3: true),
            darkTheme: ThemeData.dark(useMaterial3: true),
            themeMode: themeMode,
            initialRoute: '/main',
            routes: {
              '/main': (context) => const MainPage(),
              '/setting': (context) => const SettingPage(),
              '/profil': (context) => const ProfilPage(),
            },
          );
        },
      ),
    );
  }
}
