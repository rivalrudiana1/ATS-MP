import 'package:flutter/material.dart';

// Komponen Stateful karena kita akan menyimpan dan memproses inputan pengguna
class HomePage extends StatefulWidget {
  @override
  State<HomePage> createState() => _HomePageState();
}

// State dari HomePage
class _HomePageState extends State<HomePage> {
  // Kunci form untuk validasi
  final _formKey = GlobalKey<FormState>();

  // Controller untuk mengambil nilai dari TextField nama dan email
  final TextEditingController _namaController = TextEditingController();
  final TextEditingController _emailController = TextEditingController();

  // Fungsi saat tombol Submit ditekan
  void _submitForm() {
    // Mengecek apakah form valid
    if (_formKey.currentState!.validate()) {
      String nama = _namaController.text;
      String email = _emailController.text;

      // Menampilkan AlertDialog dengan data nama dan email
      showDialog(
        context: context,
        builder:
            (context) => AlertDialog(
              title: Text('Informasi'),
              content: Text('Halo, $nama! Email Anda adalah $email.'),
              actions: [
                // Tombol OK pada dialog
                TextButton(
                  onPressed: () {
                    Navigator.of(context).pop(); // Menutup dialog
                    Navigator.pushNamed(
                      context,
                      '/terimakasih', // Navigasi ke halaman terima kasih
                      arguments: nama, // Mengirimkan nama sebagai argumen
                    );
                  },
                  child: Text('OK'),
                ),
              ],
            ),
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    // Mengecek apakah lebar layar lebih besar dari 600 (tablet)
    final isTablet = MediaQuery.of(context).size.width > 600;

    return Scaffold(
      appBar: AppBar(title: Text('Flutter Praktikum')), // Judul AppBar
      backgroundColor: Colors.grey[200], // Warna latar belakang soft
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(16.0), // Padding luar
          child: Card(
            elevation: 4, // Efek bayangan pada card
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(16), // Membuat sudut membulat
            ),
            child: Padding(
              padding: const EdgeInsets.all(24.0), // Padding dalam
              child: LayoutBuilder(
                builder: (context, constraints) {
                  // Form dengan validasi
                  return Form(
                    key: _formKey,
                    child:
                        isTablet
                            ? Row(
                              // Layout untuk tablet (horizontal)
                              children: [
                                Expanded(child: _buildNamaField()),
                                SizedBox(width: 16),
                                Expanded(child: _buildEmailField()),
                                SizedBox(width: 16),
                                _buildSubmitButton(),
                              ],
                            )
                            : Column(
                              // Layout untuk smartphone (vertikal)
                              mainAxisSize: MainAxisSize.min,
                              children: [
                                _buildNamaField(),
                                SizedBox(height: 16),
                                _buildEmailField(),
                                SizedBox(height: 24),
                                _buildSubmitButton(),
                              ],
                            ),
                  );
                },
              ),
            ),
          ),
        ),
      ),
    );
  }

  // Widget untuk input Nama dengan validasi
  Widget _buildNamaField() {
    return TextFormField(
      controller: _namaController,
      decoration: InputDecoration(
        labelText: 'Nama',
        border: OutlineInputBorder(borderRadius: BorderRadius.circular(12)),
      ),
      validator: (value) {
        if (value == null || value.isEmpty) {
          return 'Nama tidak boleh kosong'; // Validasi jika kosong
        }
        return null;
      },
    );
  }

  // Widget untuk input Email dengan validasi
  Widget _buildEmailField() {
    return TextFormField(
      controller: _emailController,
      decoration: InputDecoration(
        labelText: 'Email',
        border: OutlineInputBorder(borderRadius: BorderRadius.circular(12)),
      ),
      validator: (value) {
        if (value == null || value.isEmpty) {
          return 'Email tidak boleh kosong';
        } else if (!value.contains('@') || !value.contains('.')) {
          return 'Format email tidak valid';
        }
        return null;
      },
    );
  }

  // Widget tombol Submit
  Widget _buildSubmitButton() {
    return ElevatedButton(
      onPressed: _submitForm, // Memanggil fungsi saat tombol ditekan
      style: ElevatedButton.styleFrom(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(12), // Tombol membulat
        ),
        backgroundColor: Colors.blue,
        padding: EdgeInsets.symmetric(horizontal: 24, vertical: 16),
      ),
      child: Text(
        'Submit',
        style: TextStyle(
          fontSize: 16,
          color: Colors.white, // Warna teks putih
        ),
      ),
    );
  }
}
