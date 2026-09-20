# ATS Mobile Programming

## 1. Tajuk Projek & Ringkasan
**ATS Mobile Programming (uts_rival)**
Sebuah projek pembangunan aplikasi bimbit berasaskan Flutter yang dibangunkan untuk tugasan Penilaian Tengah Semester / Ujian ATS. Projek ini mengetengahkan penyelesaian praktikal pengatucaraan mudah alih yang memberi tumpuan kepada kreativiti pengemudian (*custom routing transitions*) dan reka bentuk visual.

## 2. Teknologi yang Digunakan (Tech Stack)
- **Frontend / Mobile**: Flutter Framework (SDK `^3.7.2`), Dart
- **UI Design**: Material Design Icons

## 3. Ciri-Ciri Utama & Logik Perniagaan
- **Halaman Utama (HomePage)**: Sebagai antaramuka permulaan aplikasi.
- **Halaman Penutup (Terima Kasih)**: Paparan akhir interaksi pengguna.
- **Pengemudian Skrin Kustom (Custom Page Transitions)**: Menggunakan mekanisma `PageRouteBuilder` bagi mencipta gabungan animasi secara serentak (`SlideTransition` dari bawah dan `FadeTransition` bagi tahap kelegapan) apabila bertukar ke rute `/terimakasih`.

## 4. Struktur Direktori Projek
- `lib/`: Folder perisian teras yang memegang fail-fail logik (`main.dart`, `home.dart`, `terima_kasih.dart`).
- `android/`, `ios/`, `web/`, `windows/`: Struktur asas terbina yang menyokong pelaksanaan merentas platform (cross-platform).
- `pubspec.yaml`: Menyelaraskan tetapan projek dan kebergantungan Flutter SDK.

## 5. Panduan Pemasangan & Cara Menjalankan Projek
Untuk me-larikan (run) dan membina program ini di peranti tempatan:

1. Dapatkan dan perbaharui pakej:
   ```bash
   flutter pub get
   ```
2. Lancarkan peranti simulasi atau sambungkan telefon Android/iOS, lalu laksanakan:
   ```bash
   flutter run
   ```

## 6. Endpoint API / Skema Pangkalan Data
Aplikasi ini beroperasi menggunakan logik pelanggan sepenuhnya (client-side) di bahagian antaramuka dan belum disambungkan kepada sistem API luar atau pangkalan data.
