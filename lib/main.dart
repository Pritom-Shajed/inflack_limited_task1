import 'package:flutter/material.dart';
import 'package:inflack_limited/Bindings/bindings.dart';
import 'package:inflack_limited/Utils/colors.dart';
import 'package:inflack_limited/View/authentication/login_page.dart';
import 'package:get/get.dart';
import 'package:inflack_limited/View/home/home_page.dart';

import 'View/home/dashboard/dashboard_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Task 1',
      theme: ThemeData(
        useMaterial3: true,
        inputDecorationTheme: const InputDecorationTheme(
          filled: true,
          fillColor: AppColor.textFieldColor,
        ),
        appBarTheme: const AppBarTheme(color: Colors.white, elevation: 0),
        primarySwatch: Colors.blue,
      ),
      getPages: [
        GetPage(name: '/login', page: () => const LoginPage()),
        GetPage(name: '/home', page: () => HomePage()),
        GetPage(name: '/dashboard', page: () => const DashboardPage()),
      ],
      initialRoute: '/login',
      initialBinding: InitialBindings(),
    );
  }
}
