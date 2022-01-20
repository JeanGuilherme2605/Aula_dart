
main() {
  // primeiro loop
  // for (int x = 0; x < 10; x++) {
  // chamar a variavle usa $
  // print("rodou $x");}

  bool istrue = true;
  int x = 0;
  while (istrue) {
    print("rodou $x");
    if (x > 9) {
      istrue = false;
    }
    x++;
  }
}
