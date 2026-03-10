void main() {
  // Identitas & NIM
  String nama = "Zaskia Maulidina Mutiara Hati";
  String nim = "244107060056";


  double nilaiUnikNIM = 56.0;

  // Variabel & Tipe Data
  List<double> hargaBarang = [
    45000.5,
    78000.0,
    12000.75,
    35000.25,
    15000.0
  ];

  hargaBarang.add(nilaiUnikNIM);

  // Hitung total
  double totalAwal = hitungTotal(hargaBarang);

  // Null safety
  String? pesanDiskon;

  double diskon = 0;

  // Percabangan diskon
  if (totalAwal > 200000) {
    diskon = totalAwal * 0.10;
    pesanDiskon = "Diskon 10%";
  } else if (totalAwal >= 100000 && totalAwal <= 200000) {
    diskon = totalAwal * 0.05;
    pesanDiskon = "Diskon 5%";
  } else {
    diskon = 0;
    pesanDiskon = "Tidak ada diskon";
  }
  
  double totalAkhir = totalAwal - diskon;

  // Output
  print("Nama: $nama");
  print("NIM: $nim");
  print("Total Awal: Rp $totalAwal");
  print("Besar Diskon: Rp $diskon");
  print("Total Akhir: Rp $totalAkhir");
  print("Keterangan: ${pesanDiskon!}");
}

// Function hitung total
double hitungTotal(List<double> harga) {
  double total = 0;

  for (var item in harga) {
    total += item;
  }

  return total;
}