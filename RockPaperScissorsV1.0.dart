import 'dart:io';
import 'dart:math';


enum durum {tas, kagit, makas}
void main(List<String> args) {

  Random random = new Random();
  bool go = true;
  
  do {

    print("tas, kagit, makas??");
    var player = stdin.readLineSync();

    int rndm = random.nextInt(3) + 0;
    var computer = durum.values.elementAt(rndm);

    print("Seçtiğiniz $player bilgisayarın seçtiği " + computer.name);

    if (player == "tas") {
      print((tas(computer.name)));
    }
    else if(player == "kagit"){
      print((kagit(computer.name)));
    }
    else if(player == "makas"){
      print((makas(computer.name)));
    }
    else{
      print("Geçerli bir seçenek girmediniz.");
    }

    print("Çıkmak için 1'e devam etmek için rastgele bir tuşa basınız. ");
    var deger = stdin.readLineSync();

    if (deger == '1') {
      go = false;
    } 

  } while (go);

}

String tas(var pc) {
  String winner = "";
  if (pc == "kagit") {
    winner = "Kaybettiniz.";
  }
  if (pc == "makas") {
    winner = "Kazandınız.";
  }
  if (pc == "tas") {
    winner = "Berabere.";
  }
  return winner;
}

String kagit(var pc) {
  String winner = "";
  if (pc == "tas") {
    winner = "Kazandınız.";
  }
  if (pc == "makas") {
    winner = "Kaybettiniz.";
  }
  if (pc == "kagit") {
    winner = "Berabere.";
  }
  return winner;
}

String makas(var pc) {
  String winner = "";
  if (pc == "kagit") {
    winner = "Kazandınız.";
  }
  if (pc == "tas") {
    winner = "Kaybettiniz.";
  }
  if (pc == "makas") {
    winner = "Berabere.";
  }
  return winner;
}
