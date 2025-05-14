import 'package:flutter/material.dart';
import 'terima_kasih.dart';
import 'home.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Praktikum',
      theme: ThemeData(primarySwatch: Colors.blue, fontFamily: 'Roboto'),
      initialRoute: '/',
      onGenerateRoute: (settings) {
        switch (settings.name) {
          case '/':
            // Rute utama menuju halaman HomePage
            return MaterialPageRoute(builder: (context) => HomePage());

          case '/terimakasih':
            // Rute ke halaman Terima Kasih dengan animasi transisi
            return PageRouteBuilder(
              settings: settings,
              pageBuilder:
                  (context, animation, secondaryAnimation) => TerimaKasih(),
              transitionsBuilder: (
                context,
                animation,
                secondaryAnimation,
                child,
              ) {
                // Transisi: kombinasi slide dari bawah dan fade in
                const beginOffset = Offset(0.0, 0.3); // geser dari bawah
                const endOffset = Offset.zero; // posisi akhir normal
                const curve = Curves.easeInOut; // kurva animasi halus

                final offsetTween = Tween(
                  begin: beginOffset,
                  end: endOffset,
                ).chain(CurveTween(curve: curve));

                final fadeTween = Tween<double>(
                  begin: 0.0,
                  end: 1.0,
                ).chain(CurveTween(curve: curve));

                return SlideTransition(
                  position: animation.drive(offsetTween),
                  child: FadeTransition(
                    opacity: animation.drive(fadeTween),
                    child: child,
                  ),
                );
              },
            );

          default:
            // Jika route tidak dikenali, kembalikan null
            return null;
        }
      },
    );
  }
}
