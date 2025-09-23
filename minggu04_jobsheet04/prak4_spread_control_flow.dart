// ==========================
// == LANGKAH 1 ==
// ==========================
// *Jalankan kode program*
// JAWAB :
void main() {
  var list = [1, 2, 3];
  var list2 = [0, ...list];     //-> penerapan spread
  // print(list1);                -> seharusnya 'list'
  print(list);
  print(list2);
  print(list2.length);
// ==========================


// ==========================
// == LANGKAH 2 ==
// ==========================
// *Silakan coba eksekusi (Run) kode pada langkah 1 tersebut. Apa yang terjadi? 
// Jelaskan! Lalu perbaiki jika terjadi error.*
// JAWAB : 
// Hasil Output :
// >> [1, 2, 3]
// >> [0, 1, 2, 3]
// >> 4
// Program berjalan normal, tanpa error. Karena sudah diganti menggunakan variabel list untuk mencetak.
// ==========================


// ==========================
// == LANGKAH 3 ==
// ==========================
// *(a) Tambahkan kode program, lalu coba eksekusi (Run) kode Anda.
// (b) Apa yang terjadi ? Jika terjadi error, silakan perbaiki.
// (c) Tambahkan variabel list berisi NIM Anda menggunakan Spread Operators.*
// JAWAB : 
// (a)
// list1 = [1, 2, null];      -> error
  List<int?> list1 = [1, 2, null];
  print(list1);
  var list3 = [0, ...?list1];
  print(list3);
  print(list3.length);

// (b)
// Error, karena tidak ada variabel 'list1'. Namun kode sudah diperbaiki.
// Hasil Output : 
// >> [1, 2, null]
// >> [0, 1, 2, null]
// >> 4

// (c)
  var nim = [2, 3, 4, 1, 7, 2, 0, 0, 5, 6];
  print(nim);

  var gabungan = [...list3, ...nim];    // ->penerapan spread operators
  print(gabungan);
  print(gabungan.length);
// Hasil Output : 
// >> [2, 3, 4, 1, 7, 2, 0, 0, 5, 6]
// >> [0, 1, 2, null, 2, 3, 4, 1, 7, 2, 0, 0, 5, 6]
// >> 14
// ==========================


// ==========================
// == LANGKAH 4 ==
// ==========================
// *(a) Tambahkan kode program, lalu coba eksekusi (Run) kode Anda.
// (b) Apa yang terjadi ? Jika terjadi error, silakan perbaiki. Tunjukkan 
//  hasilnya jika variabel promoActive ketika true dan false
// JAWAB : 
// (a)
  bool promoActive = true;    // -> tambahkan ini untuk solusinya
  var nav = ['Home', 'Furniture', 'Plants', if (promoActive) 'Outlet'];   // ->error, karena belum dideklarasikan
  print(nav);

// (b)
// Hasil Output : 
// >> [Home, Furniture, Plants, Outlet]   -> true
// >> [Home, Furniture, Plants]           -> false
// Dari hasil output ini, menunjukkan bahwa 'Outlet' akan dicetak ketika list bernilai true.
// Sebaliknya, jika bernilai false maka tidak ditampilkan.
// ========================== 


// ==========================
// == LANGKAH 5 ==
// ==========================
// *(a) Tambahkan kode program, lalu coba eksekusi (Run) kode Anda.
// (b) Apa yang terjadi ? Jika terjadi error, silakan perbaiki. Tunjukkan 
// hasilnya jika variabel login mempunyai kondisi lain.*
// JAWAB : 
// (a)  
  String login = 'Manager';           // -> tambahkan ini untuk solusinya
  var nav2 = ['Home', 'Furniture', 'Plants', if (login case 'Manager') 'Inventory'];      // ->error, karena belum dideklarasikan
  print(nav2);

// (b)
// Program tidak bisa dijalankan, karena variabel login belum dideklarasikan. Namun, sudah diperbaiki.
// Hasil Output : 
// >> [Home, Furniture, Plants, Inventory]    -> login: Manager
// >> [Home, Furniture, Plants]               -> login: Guest
// ==========================


// ==========================
// == LANGKAH 6 ==
// ==========================
// *(a) Tambahkan kode program, lalu coba eksekusi (Run) kode Anda.
// (b) Apa yang terjadi ? Jika terjadi error, silakan perbaiki. Jelaskan manfaat Collection For.*
// JAWAB : 
// (a)
  var listOfInts = [1, 2, 3];
  var listOfStrings = ['#0', for (var i in listOfInts) '#$i'];
  assert(listOfStrings[1] == '#1'); 
  print(listOfStrings); 
}

// (b)
// Hasil Output : 
// >> [#0, #1, #2, #3]
// Manfaat dari Collection for yaitu bisa membangun list secara dinamis berdasarkan
// elemen list lain.
// ==========================