# ATS Mobile Programming

## 1. Judul Proyek & Ringkasan
**ATS Mobile Programming (uts_rival)**
Sebuah proyek pengembangan aplikasi mobile berbasis Flutter yang dibangun untuk tugas Penilaian Tengah Semester / Ujian ATS. Proyek ini menonjolkan solusi praktis pemrograman mobile yang berfokus pada kreativitas navigasi (*custom routing transitions*) dan desain visual.

## 2. Teknologi yang Digunakan (Tech Stack)
- **Frontend / Mobile**: Flutter Framework (SDK `^3.7.2`), Dart
- **UI Design**: Material Design Icons

## 3. Fitur Utama & Logika Bisnis
- **Halaman Utama (HomePage)**: Sebagai antarmuka awal aplikasi.
- **Halaman Penutup (Terima Kasih)**: Tampilan akhir dari interaksi pengguna.
- **Navigasi Layar Kustom (Custom Page Transitions)**: Menggunakan mekanisme `PageRouteBuilder` untuk menciptakan kombinasi animasi secara bersamaan (`SlideTransition` dari bawah dan `FadeTransition` untuk tingkat transparansi) ketika berpindah ke routes `/terimakasih`.

## 4. Struktur Direktori Proyek
- `lib/`: Folder inti yang menyimpan file logika (`main.dart`, `home.dart`, `terima_kasih.dart`).
- `android/`, `ios/`, `web/`, `windows/`: Struktur dasar bawaan yang mendukung eksekusi lintas platform (*cross-platform*).
- `pubspec.yaml`: Mengatur konfigurasi proyek dan *dependencies* Flutter SDK.

## 5. Panduan Instalasi & Cara Menjalankan Proyek
Untuk menjalankan (*run*) dan melakukan *build* program ini di perangkat lokal:

1. Unduh dan perbarui *package*:
   ```bash
   flutter pub get
   ```
2. Luncurkan emulator atau sambungkan perangkat Android/iOS, lalu jalankan:
   ```bash
   flutter run
   ```

## 6. Endpoint API / Skema Database
Aplikasi ini beroperasi menggunakan logika *client-side* sepenuhnya pada bagian antarmuka dan belum terhubung dengan sistem API eksternal maupun database.
