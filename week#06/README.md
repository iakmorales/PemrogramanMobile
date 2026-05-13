# Praktikum Pemrograman Mobile – Week 06


| Nama  : | Zaskia Maulidina Mutiara Hati |
|---------|-------------------------------|
| Kelas : | SIB 2-F                       |
| NIM   : | 244107060056                  |

# Langkah 1: Buat Project Baru
Buatlah sebuah project flutter baru dengan nama flutter_plugin_pubdev. Lalu jadikan repository di GitHub Anda dengan nama flutter_plugin_pubdev.

![Screenshot week#6](/docs/Langkah%201.png) 

# Langkah 2: Menambahkan Plugin
Tambahkan plugin auto_size_text menggunakan perintah berikut di terminal

![Screenshot week#6](/docs/Langkah%202.png)

Menambahkan plugin auto_size_text agar dapat menggunakan widget yang tidak tersedia secara default di flutter.

# Langkah 3: Buat file red_text_widget.dart
Buat file baru bernama red_text_widget.dart di dalam folder lib lalu isi kode seperti berikut.

![Screenshot week#6](/docs/Langkah%203.png)

# Langkah 4: Tambah Widget AutoSizeText
Masih di file red_text_widget.dart, untuk menggunakan plugin auto_size_text, ubahlah kode return Container() menjadi seperti berikut.

![Screenshot week#6](/docs/Langkah%204.png)

Muncul error karena, Plugin belum di-import dan Variabel text belum dibuat. Flutter tidak mengenali AutoSizeText karena belum dilakukan import, dan tidak mengenali text karena belum dideklarasikan.

# Langkah 5: Buat Variabel text dan parameter di constructor
Tambahkan variabel text dan parameter di constructor seperti berikut.

![Screenshot week#6](/docs/Langkah%205.png)

Digunakan untuk untuk menyimpan isi teks required, memastikan nilai wajib diisi Constructor digunakan untuk menerima data dari luar widget. Dengan ini, widget menjadi reusable dan dinamis.

# Langkah 6: Tambahkan widget di main.dart
Buka file main.dart lalu tambahkan di dalam children: pada class _MyHomePageState

![Screenshot week#6](/docs/Langkah%206.png)

Fungsi dan Perbedaan Kedua Widget
 - RedTextWidget (AutoSizeText) Teks berwarna merah Ukuran teks otomatis menyesuaikan container Tidak overflow
 - Text Biasa Teks default Flutter Tidak menyesuaikan ukuran Bisa terpotong jika ruang kecil

Perbedaan utama:
 - AutoSizeText → responsif
 - Text → statis


Penjelasan:
 - text → isi teks yang ditampilkan
 - style → mengatur tampilan teks (warna, ukuran, dll)
 - fontSize → ukuran awal teks
 - maxLines → jumlah maksimal baris
 - overflow → perilaku saat teks terlalu panjang
AutoSizeText akan otomatis mengecilkan ukuran font agar tetap muat di dalam batas maxLines.

# Run aplikasi tersebut dengan tekan F5, maka hasilnya akan seperti berikut.

![Screenshot week#6](/docs/Hasil%20Run.png)


