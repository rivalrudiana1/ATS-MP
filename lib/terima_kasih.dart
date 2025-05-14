import 'package:flutter/material.dart';

// Komponen Stateless karena tidak ada perubahan data di dalamnya
class TerimaKasih extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // Mengambil argumen "nama" yang dikirim dari halaman sebelumnya
    final String nama = ModalRoute.of(context)?.settings.arguments as String;

    return Scaffold(
      // AppBar dengan judul "Terima Kasih"
      appBar: AppBar(title: Text('Terima Kasih')),

      // Isi halaman ditampilkan di tengah layar
      body: Center(
        // Menambahkan animasi opacity (fade in) selama 1 detik
        child: AnimatedOpacity(
          opacity: 1.0, // Target opacity (penuh terlihat)
          duration: Duration(seconds: 1), // Durasi animasi 1 detik
          child: Text(
            'Terima kasih telah mengisi form, $nama!', // Pesan personal
            style: TextStyle(fontSize: 18),
            textAlign: TextAlign.center, // Teks ditengah
          ),
        ),
      ),
    );
  }
}
