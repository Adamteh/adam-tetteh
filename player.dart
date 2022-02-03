/* This file contains the model/blueprint for a player */
import 'dart:math';

class Player {
  final String? name;
  int? health;

  Player({this.name, this.health});
/* 
  Create properties
  1. name as string
  2. health as int
*/

// Create a getter function (attack) to return a random integer ranging from 0 to 50
  int get attack {
    Random _random = Random();
    int _randomNumber = _random.nextInt(51);
    return _randomNumber;
  }
}
