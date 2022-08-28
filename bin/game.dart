import 'dart:io';

class Game {
  List<List<String>> matrix = [
    ['1', '2', '3'],
    ['4', '5', '6'],
    ['7', '8', '9'],
  ];
  int turn=1;
  int? row = 3;
  int? cols = 3;
  String? play;
  bool win = true;


  Game() {
    print('');
    print('Welcome to tic tac toe game');
    print('---------------------------');
    printGameBord();
  }


  void printGameBord()
  {
    for (int i = 0; i < matrix.length; i++) {
      stdout.write('\n+---+---+---+\n| ');

      for (int j = 0; j < matrix[i].length; j++) {
        stdout.write(matrix[i][j] + ' | ' );
      }
    }
    print('\n+---+---+---+\n');
  }


  void transformationX()
  {
    if (play == '1')
    {
      matrix[0][0] = 'x';
    }
    else if (play == '2')
      {
        matrix[0][1] = 'x';
      }
    else if (play == '3')
      {
        matrix[0][2] = 'x';
      }
    else if (play == '4')
      {
        matrix[1][0] = 'x';
      }
    else if (play == '5')
      {
        matrix[1][1] = 'x';
      }
    else if (play == '6')
      {
        matrix[1][2] = 'x';
      }
    else if (play == '7')
      {
        matrix[2][0] = 'x';
      }
    else if (play == '8')
      {
        matrix[2][1] = 'x';
      }
    else if (play == '9')
      {
        matrix[2][2] = 'x';
      }

  }


  void transformationY()
  {
    if (play == '1')
    {
      matrix[0][0] = 'y';
    }
    else if (play == '2')
    {
      matrix[0][1] = 'y';
    }
    else if (play == '3')
    {
      matrix[0][2] = 'y';
    }
    else if (play == '4')
    {
      matrix[1][0] = 'y';
    }
    else if (play == '5')
    {
      matrix[1][1] = 'y';
    }
    else if (play == '6')
    {
      matrix[1][2] = 'y';
    }
    else if (play == '7')
    {
      matrix[2][0] = 'y';
    }
    else if (play == '8')
    {
      matrix[2][1] = 'y';
    }
    else if (play == '9')
    {
      matrix[2][2] = 'y';
    }
  }


  void winnerX()
  {

    if(matrix[0][0]=='x' && matrix[0][1]=='x' && matrix[0][2]=='x')
    {
      print("Player 1 is winner\n");
      win=false;
    }
    if(matrix[1][0]=='x' && matrix[1][1]=='x' && matrix[1][2]=='x')
    {
      print("Player 1 is winner\n");
      win=false;
    }
    if(matrix[2][0]=='x' && matrix[2][1]=='x' && matrix[2][2]=='x')
    {
      print("Player 1 is winner\n");
      win=false;
    }
    if(matrix[0][0]=='x' && matrix[1][0]=='x' && matrix[2][0]=='x')
    {
      print("Player 1 is winner\n");
      win=false;
    }
    if(matrix[0][1]=='x' && matrix[1][1]=='x' && matrix[2][1]=='x')
    {
      print("Player 1 is winner\n");
      win=false;
    }
    if(matrix[0][2]=='x' && matrix[1][2]=='x' && matrix[2][2]=='x')
    {
      print("Player 1 is winner\n");
      win=false;
    }
    if(matrix[0][0]=='x' && matrix[1][1]=='x' && matrix[2][2]=='x')
    {
      print("Player 1 is winner\n");
      win=false;
    }
    if(matrix[0][2]=='x' && matrix[1][1]=='x' && matrix[2][0]=='x')
    {
      print("Player 1 is winner\n");
      win=false;
    }

  }


  void winnerY()
  {
    if(matrix[0][0]=='y' && matrix[0][1]=='y' && matrix[0][2]=='y')
    {
      print("Player 2 is winner\n");
      win=false;
    }
    if(matrix[1][0]=='y' && matrix[1][1]=='y' && matrix[1][2]=='y')
    {
      print("Player 2 is winner\n");
      win=false;
    }
    if(matrix[2][0]=='y' && matrix[2][1]=='y' && matrix[2][2]=='y')
    {
      print("Player 2 is winner\n");
      win=false;
    }
    if(matrix[0][0]=='y' && matrix[1][0]=='y' && matrix[2][0]=='y')
    {
      print("Player 2 is winner\n");
      win=false;
    }
    if(matrix[0][1]=='y' && matrix[1][1]=='y' && matrix[2][1]=='y')
    {
      print("Player 2 is winner\n");
      win=false;
    }
    if(matrix[0][2]=='y' && matrix[1][2]=='y' && matrix[2][2]=='y')
    {
      print("Player 2 is winner\n");
      win=false;
    }
    if(matrix[0][0]=='y' && matrix[1][1]=='y' && matrix[2][2]=='y')
    {
      print("Player 2 is winner\n");
      win=false;
    }
    if(matrix[0][2]=='y' && matrix[1][1]=='y' && matrix[2][0]=='y')
    {
      print("Player 2 is winner\n");
      win=false;
    }

  }


  void playerOne()
  {
    print('player 1 turn  (X) \n');
    print('Enter number from  1 ----> 9');
    turn++;
    play = stdin.readLineSync();

  }


 void playerTwo()
  {
    print('player 2 turn  (Y) \n');
    print('Enter number from  1 ----> 9');
    turn++;
    play = stdin.readLineSync();
  }


}
