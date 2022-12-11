void drawBoard(int screenSize) {
  line(screenSize * .67, 0, screenSize * .67, screenSize);
  line(screenSize * .33, 0, screenSize * .33, screenSize);
  line(0, screenSize * .67, screenSize, screenSize * .67);
  line(0, screenSize * .33, screenSize, screenSize * .33);
}

int[] board = new int[9];
boolean isPlayerTurn = false;
boolean gameOver = false;

void checkForWinners() {
  fill(0, 0, 0);
  textSize(60);

  //Player Victories
 if(board[0] == 1 && board[1] == 1 && board[2] == 1) {
    println("Player wins!");
    text("Player wins!", 40, 250);
    noLoop();
    gameOver = true;
  }
  if(board[0] == 1 && board[4] == 1 && board[8] == 1) {
    println("Player wins!");
    text("Player wins!", 40, 250);
    noLoop();
    gameOver = true;
  }
  if(board[0] == 1 && board[3] == 1 && board[6] == 1) {
    println("Player wins!");
    text("Player wins!", 40, 250);
    noLoop();
    gameOver = true;
  }
  if(board[6] == 1 && board[7] == 1 && board[8] == 1) {
    println("Player wins!");
    text("Player wins!", 40, 250);
    noLoop();
    gameOver = true;
  }
  if(board[2] == 1 && board[5] == 1 && board[8] == 1) {
    println("Player wins!");
    text("Player wins!", 40, 250);
    noLoop();
    gameOver = true;
  }
  if(board[2] == 1 && board[4] == 1 && board[6] == 1) {
    println("Player wins!");
    text("Player wins!", 40, 250);
    noLoop();
    gameOver = true;
  }
  if(board[3] == 1 && board[4] == 1 && board[5] == 1) {
    println("Player wins!");
    text("Player wins!", 40, 250);
    noLoop();
    gameOver = true;
  }
  if(board[1] == 1 && board[4] == 1 && board[7] == 1) {
    println("Player wins!");
    text("Player wins!", 40, 250);
    noLoop();
    gameOver = true;
  }

  //AI Victories
  if(board[0] == 2 && board[1] == 2 && board[2] == 2) {
    println("Computer wins!");
    text("Computer wins!", 40, 250);
    noLoop();
    gameOver = true;
  }
  if(board[0] == 2 && board[4] == 2 && board[8] == 2) {
    println("Computer wins!");
    text("Computer wins!", 40, 250);
    noLoop();
    gameOver = true;
  }
  if(board[0] == 2 && board[3] == 2 && board[6] == 2) {
    println("Computer wins!");
    text("Computer wins!", 40, 250);
    noLoop();
    gameOver = true;
  }
  if(board[6] == 2 && board[7] == 2 && board[8] == 2) {
    println("Computer wins!");
    text("Computer wins!", 40, 250);
    noLoop();
    gameOver = true;
  }
  if(board[2] == 2 && board[5] == 2 && board[8] == 2) {
    println("Computer wins!");
    text("Computer wins!", 40, 250);
    noLoop();
    gameOver = true;
  }
  if(board[2] == 2 && board[4] == 2 && board[6] == 2) {
    println("Computer wins!");
    text("Computer wins!", 40, 250);
    noLoop();
    gameOver = true;
  }
   if(board[3] == 2 && board[4] == 2 && board[5] == 2) {
    println("Computer wins!");
    text("Computer wins!", 40, 250);
    noLoop();
    gameOver = true;
  }
  if(board[1] == 2 && board[4] == 2 && board[7] == 2) {
    println("Computer wins!");
    text("Computer wins!", 40, 250);
    noLoop();
    gameOver = true;
  }
}

boolean checkForDraw() {
  for(int i = 0; i < board.length; i++) {
    if(board[i] <= 0) {
      return false;
    }
  }
  return true;
}

void keyPressed() {
  if(key == '0' && isPlayerTurn && gameOver == false) {
    println("Player has pressed 0");
    if(board[0] != 0) {
      println("Already taken!");
    } else{
    board[0] = 1;
    noFill();
    drawCircle(75, 75, circleSize);
    isPlayerTurn = false;
    }
  }
  if(key == '1' && isPlayerTurn && gameOver == false) {
    println("Player has pressed 1");

    if(board[1] != 0) {
      println("Already taken!");
    } else{
    board[1] = 1;
    noFill();
    drawCircle(250, 75, circleSize);
    isPlayerTurn = false;
    }
  }
  if(key == '2' && isPlayerTurn && gameOver == false) {
    println("Player has pressed 2");
    if(board[2] != 0) {
      println("Already taken!");
    } else{
    board[2] = 1;
    noFill();
    drawCircle(410, 75, circleSize);
    isPlayerTurn = false;
    }
  }
  if(key == '3' && isPlayerTurn && gameOver == false) {
    println("Player has pressed 3");
    if(board[3] != 0) {
      println("Already taken!");
    } else{
    board[3] = 1;
    noFill();
    drawCircle(75, 250, circleSize);
    isPlayerTurn = false;
    }
  }
  if(key == '4' && isPlayerTurn && gameOver == false) {
    println("Player has pressed 4");
    if(board[4] != 0) {
      println("Already taken!");
    } else{
    board[4] = 1;
    noFill();
    drawCircle(250, 250, circleSize);
    isPlayerTurn = false;
    }
  }
  if(key == '5' && isPlayerTurn && gameOver == false) {
    println("Player has pressed 5");
    if(board[5] != 0) {
      println("Already taken!");
    } else{
    board[5] = 1;
    noFill();
    drawCircle(410, 250, circleSize);
    isPlayerTurn = false;
    }
  }
  if(key == '6' && isPlayerTurn && gameOver == false) {
    println("Player has pressed 6");
    if(board[6] != 0) {
      println("Already taken!");
    } else{
    board[6] = 1;
    noFill();
    drawCircle(75, 410, circleSize);
    isPlayerTurn = false;
    }
  }
  if(key == '7' && isPlayerTurn && gameOver == false) {
    println("Player has pressed 7");
    if(board[7] != 0) {
      println("Already taken!");
    } else{
    board[7] = 1;
    noFill();
    drawCircle(250, 410, circleSize);
    isPlayerTurn = false;
    }
  }
  if(key == '8' && isPlayerTurn && gameOver == false) {
    println("Player has pressed 8");

    if(board[8] != 0) {
      println("Already taken!");
    } else{
    board[8] = 1;
    noFill();
    drawCircle(410, 410, circleSize);
    isPlayerTurn = false;
    }
  }
}

void startGame() {
  println();
  if(!isPlayerTurn && gameOver == false) {
    int turnLocation = int(random(0, 9));

    if(turnLocation == 0) {
      if(board[0] != 0) {
        println("Already taken!");
      } else{
      board[0] = 2;
      noFill();
      drawX(75, 75, lengthX, lengthY);
      isPlayerTurn = true;
      }
    }
    if(turnLocation == 1) {
      if(board[1] != 0) {
        println("Already taken!");
      } else{
      board[1] = 2;
      noFill();
      drawX(250, 75, lengthX, lengthY);
      isPlayerTurn = true;
      }
    }
    if(turnLocation == 2) {
      if(board[2] != 0) {
        println("Already taken!");
      } else{
      board[2] = 2;
      noFill();
      drawX(410, 75, lengthX, lengthY);
      isPlayerTurn = true;
      }

    }
    if(turnLocation == 3) {
      if(board[3] != 0) {
        println("Already taken!");
      } else{
      board[3] = 2;
      noFill();
      drawX(75, 250, lengthX, lengthY);
      isPlayerTurn = true;
      }
   }
    if(turnLocation == 4) {
      if(board[4] != 0) {
        println("Already taken!");
      } else{
      board[4] = 2;
      noFill();
      drawX(250, 250, lengthX, lengthY);
      isPlayerTurn = true;
      }
    }
    if(turnLocation == 5) {
      if(board[5] != 0) {
        println("Already taken!");
      } else{
      board[5] = 2;
      noFill();
      drawX(410, 250, lengthX, lengthY);
      isPlayerTurn = true;
      }
    }
    if(turnLocation == 6) {
      if(board[6] != 0) {
        println("Already taken!");
      } else{
      board[6] = 2;
      noFill();
      drawX(75, 410, lengthX, lengthY);
      isPlayerTurn = true;
      }
    }
    if(turnLocation == 7) {
      if(board[7] != 0) {
        println("Already taken!");
      } else{
      board[7] = 2;
      noFill();
      drawX(250, 410, lengthX, lengthY);
      isPlayerTurn = true;
      }
    }
    if(turnLocation == 8) {
      if(board[8] != 0) {
        println("Already taken!");
      } else{
      board[8] = 2;
      noFill();
      drawX(410, 410, lengthX, lengthY);
      isPlayerTurn = true;
      }
    }
  }
}
