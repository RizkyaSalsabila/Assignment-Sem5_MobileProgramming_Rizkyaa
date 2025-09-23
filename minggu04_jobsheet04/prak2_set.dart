// ==========================
// == LANGKAH 1 ==
// ==========================
// *Jalankan kode program*
// JAWAB : 
void main() {
  var halogens = {'fluorine', 'chlorine', 'bromine', 'iodine', 'astatine'};
  print(halogens);
// ==========================


// ==========================
// == LANGKAH 2 ==
// ==========================
// *Silakan coba eksekusi (Run) kode pada langkah 1 tersebut. Apa yang terjadi? 
// Jelaskan! Lalu perbaiki jika terjadi error.*
// JAWAB : 
// Hasil Output : 
// >> {fluorine, chlorine, bromine, iodine, astatine}
// Tidak terjadi error, dan output yang dikeluarkan adalah isi set 'halogens'.
// ==========================


// ==========================
// == LANGKAH 3 ==
// ==========================
// *Tambahkan kode program, lalu coba eksekusi (Run) kode Anda.
// Apa yang terjadi ? Jika terjadi error, silakan perbaiki namun tetap menggunakan 
// ketiga variabel tersebut. Tambahkan elemen nama dan NIM Anda pada kedua variabel Set tersebut 
// dengan dua fungsi berbeda yaitu .add() dan .addAll(). Untuk variabel Map dihapus, nanti kita coba di praktikum selanjutnya.*
// JAWAB : 
var names1 = <String>{};
Set<String> names2 = {};
var names3 = {};

print(names1);
print(names2);
print(names3);
// Hasil Output : 
// >> {fluorine, chlorine, bromine, iodine, astatine}
// >> {}
// >> {}
// >> {}    -> hasil map, bukan set

// nama dan nim menggunakan .add()
names1.add("Rizkya Salsabila");
names1.add("2341720056");

// nama dan nim menggunakan .addAll()
names2.addAll({"Rizkya Salsabila", "2341720056"});

// cetak
print("names1: $names1");
print("names2: $names2");
// Hasil Output : 
// >> {fluorine, chlorine, bromine, iodine, astatine}
// >> {}
// >> {}
// >> {}    -> hasil map, bukan set
// >> names1: {Rizkya Salsabila, 2341720056}
// >> names2: {Rizkya Salsabila, 2341720056}
}
// ==========================