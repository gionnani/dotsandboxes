Dot and Boxes

Developed in C# Core 3.0

---------------------------------------------------------------
Structure

Files
------------
Board.cs - Represents board, implements interface IBoard de MCTS.
Game.cs - Initialize the game.
Agent.cs - Represents the player.
GameType.cs - Enumeration to game type.
Machine - Folder Machine contains MCTS algorithm, trees and nodes.
play.bat - Used to play many games.
Program.cs - Main file. starts here.
Settings.cs - Settings to program.
settings.json - Parameters file.
settings1.json - Parameters file.
settings2.json - Parameters file.

Folder Machine
--------------
Data.cs - Represents data to export gameplay.
DataController.cs - Controller to export data.
MCTS - Folder

MCST Folder
--------------
BoardStatus.cs - Enumaration to board status.
IBoard.cs - Interface Board.
MonteCarloTreeSearch.cs - Monte Carlo tree search algorithm.
Node.cs - Node.
State.cs - Game status.
Tree.cs - Tree.
Uct.cs - Utc calculos.