import 'package:flutter/material.dart';
import 'package:notif/navigasi/theme_provider.dart';
import 'package:notif/pages/profile_petugas';
import 'package:provider/provider.dart';
import 'package:notif/navigasi/app_navigation.dart';
import 'package:notif/pages/list_data_pelanggan.dart';
import 'package:notif/pages/list_notifikasi.dart';

void main() {
  runApp(
    MultiProvider(
      providers: [
        ChangeNotifierProvider(
            create: (_) => ThemeProvider()), // Tambahkan ThemeProvider di sini
      ],
      child: const MyApp(),
    ),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Suplis App',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      initialRoute: '/home',
      routes: {
        '/listData': (context) => ListDataPelanggan(),
        '/home': (context) => AppNavigation(),
        '/listNotifikasi': (context) => ListNotifikasi(),
        '/profile': (context) => ProfilePetugas(),
      },
    );
  }
}
