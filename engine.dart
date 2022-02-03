/* 
  This file contains the code for the GameEngine
*/
import 'player.dart';

class GameEngine {
/* 
  Create a property round as int
  In the constructor assign the round property to 1
*/

  int? round;

  GameEngine({this.round = 1});

/* 
  Below create a loop in the function to run till the 
  _subEngine returns true
  The function has two Player model as parameters 
*/
  void startGame(Player player1, Player player2) {
    while (true) {
      //Display Fight information details as seen in the screenshot
      print(
          '-------------------------------------------------------------------');
      print('Round $round: ${player1.name} attacks ${player2.name}');
      print(
          '-------------------------------------------------------------------');

      //Assign _subEngine here

      bool? player1nPlayer2 = _subEngine(player1, player2);

      //Verify match results from _subEngine
      if (player1nPlayer2!) {
        break;
      }

      //Display Fight information details as seen in the screenshot
      print(
          '-------------------------------------------------------------------');
      print('Round $round: ${player2.name} attacks ${player1.name}');
      print(
          '-------------------------------------------------------------------');

      //Assign _subEngine here

      bool? player2nPlayer1 = _subEngine(player2, player1);

      //Verify match results from _subEngine
      if (player2nPlayer1!) {
        break;
      }

      round = round! + 1;
    }
  }

/* 
  Below, return a bool from the function 
  checking the health of a player if it's less or equal to 0
  The function has two Player model as parameters 
*/
  _subEngine(Player player1, Player player2) {
    bool done = false;
    //Assign the player's attack
    int? playerAttack = player1.attack;

    //Display the health status of the players as seen in the screenshot
    print("\n${player1.name}'s health: ${player1.health}");
    print("${player2.name}'s health: ${player2.health}");

    //Display name and attack of the attacking player as seen in the screenshot
    print("\n${player1.name} attack with $playerAttack");

    //Calculate and update the new health of the player who was attacked
    player2.health = player2.health! - playerAttack;
    print("${player2.name}'s health: ${player2.health}");

    /*
    Verify the fight round 
      if Game Over: Display player health and a win message with player name
      else: Display player health and continue   
    */
    if (player1.health! <= 0) {
      print("\n${player1.name} is dead, ${player2.name} wins the fight");
      done = true;
    } else if (player2.health! <= 0) {
      print("\n${player2.name} is dead, ${player1.name} wins the fight");
      done = true;
    }

    return done;
  }
}
