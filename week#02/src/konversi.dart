import 'dart:io';

void main() {
  print("=== Konversi Mata Uang ===");

  const double rupiahToDollar = 0.000064;
  const double rupiahToYen = 0.0096;

  stdout.write("Masukkan jumlah Rupiah: ");
  double rupiah = double.parse(stdin.readLineSync()!);

  double dollar = rupiah * rupiahToDollar;
  double yen = rupiah * rupiahToYen;

  print("\nHasil Konversi:");
  print("Dollar: ${dollar.toStringAsFixed(2)} USD");
  print("Yen: ${yen.toStringAsFixed(2)} JPY");
}


