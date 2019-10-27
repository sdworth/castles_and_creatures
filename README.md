✨🐉 A command line based adventure game inspired by the castles and creatures problem found [here](http://users.csc.calpoly.edu/~jdalbey/103/Projects/ProgrammingPractice.html). 🏰✨

### Play the game

```
$ ruby castles_and_creatures.rb
```

This will use the default castle layout file to run the game. You can pass in the name of a different layout file to embark on a different adventure:

```
$ ruby castles_and_creatures.rb "./fantasy_game.json"
```

### Run the specs

Ensure you have ruby 2.6.5 installed first.

```
$ bundle
$ bundle exec rspec
```