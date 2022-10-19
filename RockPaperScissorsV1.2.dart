import 'dart:io';
import 'dart:math';


enum state {rock, paper, scissors}
void main(List<String> args) {
  
  Random random = new Random();
  bool go = true;
  int splayer = 0;
  int spc = 0;
  
  do {

    print("rock, paper, scissors???");
    var player = stdin.readLineSync();

    int rndm = random.nextInt(3) + 0;
    var computer = state.values.elementAt(rndm);

    print("Your choose: $player , PC choose: " + computer.name);

    if (player == "rock") {
      print((rock(computer.name)));
      if ((rock(computer.name)) == "You win.") {
        splayer++;
      }
      if((rock(computer.name)) == "You lost.") {
        spc++;
      }
    }
    else if(player == "paper"){
      print((paper(computer.name)));
      if ((paper(computer.name)) == "You win.") {
        splayer++;
      }
      if((paper(computer.name)) == "You lost.") {
        spc++;
      }
    }
    else if(player == "scissors"){
      print((scissors(computer.name)));
      if ((scissors(computer.name)) == "You win.") {
        splayer++;
      }
      if((scissors(computer.name)) == "You lost.") {
        spc++;
      }
    }
    else{
      print("You did not enter a valid option.");
    }

    print("skor:  $splayer - $spc");

    if (splayer == 3) {

      print("Congrats, you win...");

      print("Press '1' to exit. Press any key to continue. ");
      var value = stdin.readLineSync();

      if (value == '1') {
        go = false;
      } 

      splayer = 0;
      spc = 0;

    }

    if (spc == 3) {

      print("You lost. Good luck next time...");

      print("Press '1' to exit. Press any key to continue. ");
      var value = stdin.readLineSync();

      if (value == '1') {
        go = false;
      } 

      splayer = 0;
      spc = 0;

    }

  } while (go);

}

String rock(var pc) {

  String winner = "";
  if (pc == "paper") {
    winner = "You lost.";
  }
  if (pc == "scissors") {
    winner = "You win.";
  }
  if (pc == "rock") {
    winner = "Berabere.";
  }
  return winner;

}

String paper(var pc) {

  String winner = "";
  if (pc == "rock") {
    winner = "You win.";
  }
  if (pc == "scissors") {
    winner = "You lost.";
  }
  if (pc == "paper") {
    winner = "Berabere.";
  }
  return winner;

}

String scissors(var pc) {

  String winner = "";
  if (pc == "paper") {
    winner = "You win.";
  }
  if (pc == "rock") {
    winner = "You lost.";
  }
  if (pc == "scissors") {
    winner = "Berabere.";
  }
  return winner;

}
