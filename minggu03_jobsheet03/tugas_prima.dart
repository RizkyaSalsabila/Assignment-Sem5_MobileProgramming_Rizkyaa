void main() {
  // Ganti dengan nama lengkap & NIM Anda
  String nama = "Rizkya Salsabila";
  String nim = "2341720056";

  print("Bilangan prima dari 0 sampai 201:");

  for (int i = 0; i <= 201; i++) {
    if (i < 2) continue; // lewati angka 0 dan 1 karena bukan prima

    // cek apakah i prima
    bool prima = true;
    for (int j = 2; j <= i ~/ 2; j++) {
      if (i % j == 0) {
        prima = false;
        break; // hentikan loop pengecekan karena sudah bukan prima
      }
    }

    if (prima) {
      print("$i termasuk bilangan prima → $nama ($nim)");
    }
  }
}