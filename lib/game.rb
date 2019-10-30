# frozen_string_literal: true

require './lib/castle'

class Game
  def initialize(layout)
    @castles = layout.map { |castle_data| Castle.new(castle_data) }
  end

  def start
    say('Welcome to the world!')

    say("You approach a #{@castles.first.name}!")

    @castles.first.enter
  end

  def say(text)
    puts text
  end
end
