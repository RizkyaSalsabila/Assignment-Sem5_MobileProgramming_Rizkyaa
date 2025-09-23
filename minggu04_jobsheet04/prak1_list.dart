// ==========================
// == LANGKAH 1 ==
// ==========================
// *Jalankan kode program*
// JAWAB : 
// void main() {
//   var list = [1, 2, 3];
//   assert(list.length == 3);
//   assert(list[1] == 2);
//   print(list.length);
//   print(list[1]);

//   list[1] = 1;
//   assert(list[1] == 1);
//   print(list[1]);
// }
// ===========================


// ==========================
// == LANGKAH 2 ==
// ==========================
// *Silakan coba eksekusi (Run) kode pada langkah 1 tersebut. Apa yang terjadi? Jelaskan!*
// JAWAB : 
// Hasil Output : 
// >> 3,
// >> 2, 
// >> 1
// Program tetap berjalan normal, karena semua kondisi dalam kode tersebut benar. 
// Selain itu, penggunaan assert pada kode program di atas untuk mengecek kondisi yang hanya
// berjalan di mode debug, sehingga ketika kondisinya salah maka program akan berhenti dengan error.
// ==========================


// ==========================
// == LANGKAH 3 ==
// ==========================
// *Ubah kode pada langkah 1 menjadi variabel final yang mempunyai index = 5 dengan default value = null. 
// Isilah nama dan NIM Anda pada elemen index ke-1 dan ke-2. Lalu print dan capture hasilnya.
// Apa yang terjadi ? Jika terjadi error, silakan perbaiki.*
// JAWAB : 
void main() {
  //membuat list final dengan panjang=5, default value null
  final List<String?> list = List.filled(5, null, growable: false);

  //mengisi elemen indeks ke 1 & ke 2
  list[1] = "Rizkya Salsabila";
  list[2] = "2341720056";

  //menampilkan seluruh list
  print("Semua Elemen Index 1 - 5 : $list");

  //menampilkan elemen tertentu
  print("Elemen index 1 : ${list[1]}");
  print("Elemen index 2 : ${list[2]}");
}
// Hasil Output : 
// >> Semua Elemen Index 1 - 5 : [null, Rizkya Salsabila, 2341720056, null, null]
// >> Elemen index 1 : Rizkya Salsabila
// >> Elemen index 2 : 2341720056
// ==========================