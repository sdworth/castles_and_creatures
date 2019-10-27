require './lib/game'
require './lib/layout_loader'

layout_file = ARGV[0] || './fantasy_game.json'

layout = LayoutLoader.load(layout_file)

game = Game.new(layout)

game.start