//KODE SESUAI MODUL (SALAH)
// void main() {
//   String test = "test2";
// if (test == "test1") {
//    print("Test1");
// } else If (test == "test2") {
//    print("Test2");
// } Else {
//    print("Something else");
// }

// if (test == "test2") print("Test2 again");

// String test = "true";
//   if (test) {
//     print("Kebenaran");
//   }
// }

//KODE YANG BENAR
void main() {
  String test = "test2";
  if (test == "test1") {
    print("Test1");
  } else if (test == "test2") {
    print("Test2");
  } else {
    print("Something else");
  }

  if (test == "test2") print("Test2 again");

  test = "true";
  if (test == "true") {
    print("Kebenaran");
  }
}