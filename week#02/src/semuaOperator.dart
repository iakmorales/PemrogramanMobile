import 'dart:io';
void main() {

  print("=== Kalkulator BMI ===");

  stdout.write("Masukkan angka a: ");
  int a = int.parse(stdin.readLineSync()!);

  stdout.write("Masukkan angka b: ");
  int b = int.parse(stdin.readLineSync()!);

  print("Penjumlahan: ${a + b}");
  print("Pengurangan: ${a - b}");
  print("Perkalian: ${a * b}");
  print("Pembagian: ${a / b}");
  print("Modulus: ${a % b}");

  print("a > b: ${a > b}");
  print("a == b: ${a == b}");

  bool kondisi = (a > b) && (b < 10);
  print("Hasil logika: $kondisi");

  a += 5;
  print("Nilai a setelah += 5: $a");
}



