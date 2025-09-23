// ==========================
// == LANGKAH 1 ==
// ==========================
// *Jalankan kode program*
// JAWAB :
void main() {
  var record = ('first', a: 2, b: true, 'last');
  print(record); 
// ==========================


// ==========================
// == LANGKAH 2 ==
// ==========================
// *Silakan coba eksekusi (Run) kode pada langkah 1 tersebut. Apa yang terjadi? 
// Jelaskan! Lalu perbaiki jika terjadi error.*
// JAWAB : 
// Hasil Output :
// >> (first, last, a: 2, b: true)
// Program berjalan normal, tanpa error. 
// Penggunaan record ini menggabungkan data tuple dan map-like data.
// ==========================


// ==========================
// == LANGKAH 3 ==
// ==========================
// *(a) Tambahkan kode program berikut di luar scope void main(), lalu coba eksekusi (Run) kode Anda.
// (b) Apa yang terjadi ? Jika terjadi error, silakan perbaiki. Gunakan fungsi tukar() di dalam main() sehingga 
// tampak jelas proses pertukaran value field di dalam Records.*
// JAWAB : 
// (b)
  var recordResult = (14, 26);
  print('Record Awal: $recordResult');

  var result = tukar(recordResult);
  print('Setelah ditukar: $result');
// Hasil Output : 
// >> Record Awal: (14, 26)
// >> Setelah ditukar: (26, 14)
// ==========================


// ==========================
// == LANGKAH 4 ==
// ==========================
// *(a) Tambahkan kode program berikut di dalam scope void main(), lalu coba eksekusi (Run) kode Anda.
// (b) Apa yang terjadi ? Jika terjadi error, silakan perbaiki. Inisialisasi field nama dan NIM Anda pada 
// variabel record mahasiswa di atas.*
// JAWAB : 
// (a)
  // (String, int) mahasiswa;            -> error, karena belum diinisialisasi
  (String, int) mahasiswa = ('Rizkya Salsabila', 2341720056);       // -> tambahkan ini untuk solusinya
  print(mahasiswa);         

// (b)
// Hasil Output : 
// >> (Rizkya Salsabila, 2341720056)
// Jika kode sesuai modul dijalankan, maka error. Namun setelah diperbaiki, kode berjalan. 
// Hal ini karena mahasiswa sudah dideklarasikan dengan tipe 'String' dan 'int', namun belum
// diinisialisasi. Solusinya, dengan menambahkan nama dan nim.
// ========================== 


// ==========================
// == LANGKAH 5 ==
// ==========================
// *(a) Tambahkan kode program berikut di dalam scope void main(), lalu coba eksekusi (Run) kode Anda.
// (b) Apa yang terjadi ? Jika terjadi error, silakan perbaiki. Gantilah salah satu isi record dengan nama dan NIM Anda*
// JAWAB : 
// (a)  
  var mahasiswa2 = ('first', a: 2, b: true, 'last');
  print(mahasiswa2.$1);
  print(mahasiswa2.a);
  print(mahasiswa2.b);
  print(mahasiswa2.$2);
// Hasil Output : 
// >> first
// >> 2
// >> true
// >> last

// (b)
  mahasiswa2 = ('Rizkya Salsabila', a: 2341720056, b: true, 'last');
  print(mahasiswa2.$1);
  print(mahasiswa2.a);
  print(mahasiswa2.b);
  print(mahasiswa2.$2);
}
// Hasil Output : 
// >> Rizkya Salsabila
// >> 2341720056
// >> true
// >> last
// ==========================


// (a) - Langkah 3
(int, int) tukar((int, int) record) {
  var (a, b) = record;
  return (b, a);
}