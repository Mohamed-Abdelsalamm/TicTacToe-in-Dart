import 'game.dart';

void main() {
  bool x = true;
  var game = Game();
  while (x == true) {
    if (game.turn % 2 != 0)
    {
      game.playerOne();
      game.transformationX();
      game.printGameBord();
      game.winnerX();
    }
    else
      {
        game.playerTwo();
        game.transformationY();
        game.printGameBord();
        game.winnerY();
      }
    if(game.win== false)
      {
        break;
      }
    else if (game.turn == 10)
    {
      print('The game is Draw');
      break;
    }
  }
}
