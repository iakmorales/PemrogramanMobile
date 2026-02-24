import 'dart:io';
void main() {
  print("=== Kalkulator BMI ===");

  stdout.write("Masukkan berat badan (kg): ");
  double berat = double.parse(stdin.readLineSync()!);

  stdout.write("Masukkan tinggi badan (meter): ");
  double tinggi = double.parse(stdin.readLineSync()!);

  double bmi = berat / (tinggi * tinggi);

  print("\nBMI kamu adalah: ${bmi.toStringAsFixed(2)}");

  if (bmi < 18.5) {
    print("Kategori: Kurus");
  } else if (bmi >= 18.5 && bmi < 25) {
    print("Kategori: Normal");
  } else if (bmi >= 25 && bmi < 30) {
    print("Kategori: Overweight");
  } else {
    print("Kategori: Obesitas");
  }
}




