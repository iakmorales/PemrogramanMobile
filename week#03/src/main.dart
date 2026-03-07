import 'dart:io';
void main() {
  print("=== Program Matematika ===");
  print("1. Hitung Faktorial");
  print("2. Cek Bilangan Prima");

  stdout.write("Pilih menu: ");
  int pilihan = int.parse(stdin.readLineSync()!);

  stdout.write("Masukkan angka: ");
  int angka = int.parse(stdin.readLineSync()!);

  if (pilihan == 1) {
    int hasil = 1;

    for (int i = 1; i <= angka; i++) {
      hasil *= i;
    }

    print("Faktorial dari $angka adalah $hasil");

  } else if (pilihan == 2) {
    bool prima = true;

    if (angka <= 1) {
      prima = false;
    } else {
      for (int i = 2; i <= angka ~/ 2; i++) {
        if (angka % i == 0) {
          prima = false;
          break;
        }
      }
    }

    if (prima) {
      print("$angka adalah bilangan prima");
    } else {
      print("$angka bukan bilangan prima");
    }
  } else {
    print("Pilihan tidak valid");
  }
}


