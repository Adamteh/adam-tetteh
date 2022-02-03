import 'dart:io';

import 'engine.dart';
import 'player.dart';
/* 
In this coding challenge, you going to create a Fighter Game in Dart 
The fight is going to be between to players
*/

//Start coding in the main function
void main() {
  //Initialize the game engine

  GameEngine _gameEngine = GameEngine();

  //Initialize your Player models
  Player _player1 = Player(name: 'John', health: 100);
  Player _player2 = Player(name: 'Mark', health: 100);

  //Run the function startGame
  _gameEngine.startGame(_player1, _player2);

  exit(0);
}

/*
Native Dart coding challenge 
Created by Benjamin Dotse 
*/
