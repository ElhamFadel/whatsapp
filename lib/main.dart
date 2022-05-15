import 'package:challenge/whatsapp_home.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const WhatsApp());
}

class WhatsApp extends StatelessWidget {
  const WhatsApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'WhatsApp Clone',
      theme: ThemeData(
        primaryColor: const Color(0xff075E54), 
        colorScheme: ColorScheme.fromSwatch().copyWith(secondary: const Color(0xff25D366)),
      ),
      home:WhatsAppHome(),
      debugShowCheckedModeBanner: false,
    );
  }
}
