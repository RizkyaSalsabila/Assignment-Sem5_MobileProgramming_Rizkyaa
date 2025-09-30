## 1. Silakan selesaikan Praktikum 1 sampai 5, lalu dokumentasikan berupa screenshot hasil pekerjaan Anda beserta penjelasannya!
## 2. Jelaskan yang dimaksud Functions dalam bahasa Dart!
**JAWAB :** 

Function dalam bahasa Dart adalah sekumpulan intruksi yang dikelompokkan untuk menjalankan tugas tertentu.

**Contoh kode:**
```dart
void main() {
  sapa("Rizkya");
  sapa("Salsabila");
}
```


## 3. Jelaskan jenis-jenis parameter di Functions beserta contoh sintaksnya!
**JAWAB :** 

(1) Positional Parameter (berdasarkan urutan)
```dart
void tambah(int a, int b) {
  print("Hasil tambah: ${a + b}");
}

void main() {
  tambah(3, 5);    // outputnya -> 8
}
```
(2) Optional Positional Parameter (boleh diisi atau tidak)
```dart
void sapa([String? nama]) {
  print("Halo, ${nama ?? 'Anomim'}");
}

void main() {
  sapa();          // output -> Halo, Anonim
  sapa("Rizkya");  // output -> Halo, Rizkya
}
```
(3) Named Parameter (berdasarkan nama, menggunakan {})
```dart
void biodata({required String nama, int umur = 0}) {
  print("Nama: $nama, Umur: $umur");
}

void main() {
  biodata(nama: "Bella", umur: 20);      // output -> Nama: Bella, Umur: 20
  biodata(nama: "Salsabila", umur: 18);  // output -> Nama: Salsabila, Umur: 18
}
```
## 4. Jelaskan maksud Functions sebagai first-class objects beserta contoh sintaknya!
**JAWAB :** 

(1) Bisa disimpan di variabel
```dart
void sapa(String nama) {
  print("Halo, $nama");
}

void main() {
  var myFunction = sapa;    //fungsi disimpan ke variabel
  myFunction("Rizkya");     //eksekusi fungsi lewat variabel
}
```
> Output
```dart
Halo, Rizkya
```
(2) Bisa disimpan sebagai parameter
```dart
void cetakPesan(String nama, Function format) {
  print(format(nama));
}

String upper(String teks) => teks.toUpperCase();

void main() {
  cetakPesan("Bella", upper);
}
```
> Output
```dart
BELLA
```
(3) Bisa mereturn fungsi dari fungsi lain
```dart
Function kali(int faktor) {
  return (int x) => x * faktor;
}

void main() {
  var kaliDua = kali(2);
  var kaliTiga = kali(3);

  print(kaliDua(5);
  print(kaliTiga(7); 
}
```
> Output
```dart
10
21
```

## 5. Apa itu Anonymous Functions? Jelaskan dan berikan contohnya!
**JAWAB :** 

Anonymous Functions merupakan fungsi tanpa nama, biasanya dipakai untuk fungsi singkat atau callback.
```dart
void main() {
  var list = ['A', 'B', 'C'];
  list.forEach(item) {
    print(item);
  }
}
```
> Output
```dart
A
B
C
```

## 6. Jelaskan perbedaan Lexical scope dan Lexical closure! Berikan contohnya!
**JAWAB :** 

(1) Lexical Scope
  - Tidak membawa variabel setelah fungsi berakhir.
  - Ditentukan saat kode ditulis, bukan saat dijalankan.
  - Aturan penentuan variabel bisa diakses berdasarkan posisi kode.
  - Variabel hanya bisa dipakai di blok dimana dia dideklarasikan dan blok di dalamnya.
```dart
void main() {
  var a = 10;
  void tampil() {
    print(a);     // Bisa, karena masih dalam scope
  }

  tampil();
  print(b);       // ERROR, 'b' di luar scope
}

void fungsiLain() {
  var b = 20;
  // print(a); // ERROR, 'a' tidak dalam scope sini
}
```
(2) Lexical Closure
  - Sering dipakai untuk membuat fungsi khusus.
  - Variabel luar masih bisa diakses walaupun scope asalnya sudah berakhir.
  - Fungsi yang menyimpan variabel dari scope dimana fungsi itu dibuat.
  - Dibentuk saat ada fungsi di dalam fungsi lain.
```dart
Function kali(int faktor) {
  return (int x) => x * faktor; // Closure, membawa 'faktor'
}

void main() {
  var kaliDua = kali(2);
  var kaliTiga = kali(3);

  print(kaliDua(5));  // 10
  print(kaliTiga(5)); // 15
}
```

## 7. Jelaskan dengan contoh cara membuat return multiple value di Functions!
**JAWAB :**

Untuk mengembalikan multiple value bisa menggunakan List, Map, dan Records. Berikut merupakan contoh kode program menggunakan List
```dart
List<int> hitung(int a, int b) {
  return [a + b, a - b];
}

void main() {
  var hasil = hitung(10, 5);
  print("Tambah: ${hasil[0]}"); 
  print("Kurang: ${hasil[1]}"); 
}
```
> Output
```dart
15
5
```

### Kumpulkan berupa link commit repo GitHub kepada dosen pengampu sesuai kesepakatan di kelas!
