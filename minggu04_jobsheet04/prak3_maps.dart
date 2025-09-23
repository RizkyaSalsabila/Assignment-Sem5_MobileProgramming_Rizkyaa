// ==========================
// == LANGKAH 1 ==
// ==========================
// *Jalankan kode program*
// JAWAB : 
void main() {
  var gifts = {
    //Key : Value
    'first': 'partridge',
    'second': 'turtledoves',
    'fifth': 1
  };

  var nobleGases = {
    2: 'helium', 
    10: 'neon', 
    18: 2,
  };

  // print(gifts);
  // print(nobleGases);
// ==========================


// ==========================
// == LANGKAH 2 ==
// ==========================
// *Silakan coba eksekusi (Run) kode pada langkah 1 tersebut. Apa yang terjadi? 
// Jelaskan! Lalu perbaiki jika terjadi error.*
// JAWAB : 
// Hasil Output :
// >> {first: partridge, second: turtledoves, fifth: 1}
// >> {2: helium, 10: neon, 18: 2}
// Program berjalan normal, tanpa error. 
// ==========================


// ==========================
// == LANGKAH 3 ==
// ==========================
// *(a) Tambahkan kode program, lalu coba eksekusi (Run) kode Anda.
// (b) Apa yang terjadi ? Jika terjadi error, silakan perbaiki.
// (c) Tambahkan elemen nama dan NIM Anda pada tiap variabel di atas 
// (gifts, nobleGases, mhs1, dan mhs2). Dokumentasikan hasilnya dan buat laporannya!*
// JAWAB : 
// (a)
  var mhs1 = Map<String, String>();
  gifts['first'] = 'partridge';
  gifts['second'] = 'turtledoves';
  gifts['fifth'] = 'golden rings';

  var mhs2 = Map<int, String>();
  nobleGases[2] = 'helium';
  nobleGases[10] = 'neon';
  nobleGases[18] = 'argon';

// (b)
// Penggunaan map 'mhs1' dan 'mhs2' tidak memberikan output

// (c) 
  // menambahkan pada gifts
  gifts['nama'] = 'Rizkya Salsabila';
  gifts['nim'] = '2341720056';
  // menambahkan pada nobleGases (key unik)
  nobleGases[25] = 'Rizkya Salsabila';
  nobleGases[26] = '2341720056';
  // menambahkan pada mhs1
  mhs1['nama'] = 'Rizkya Salsabila';
  mhs1['nim'] = '2341720056';
  // menambahkan pada mhs2
  mhs2[25] = 'Rizkya Salsabila';
  mhs2[26] = '2341720056';

  print('Isi Gifts:$gifts');
  print('Isi NobleGases:$nobleGases');
  print('Isi Mhs1:$mhs1');
  print('Isi Mhs2:$mhs2');
}
// Hasil Output : 
// >> Isi Gifts:{first: partridge, second: turtledoves, fifth: golden rings, nama: Rizkya Salsabila, nim: 2341720056}
// >> Isi NobleGases:{2: helium, 10: neon, 18: argon, 25: Rizkya Salsabila, 26: 2341720056}
// >> Isi Mhs1:{nama: Rizkya Salsabila, nim: 2341720056}
// >> Isi Mhs2:{25: Rizkya Salsabila, 26: 2341720056}
// ==========================