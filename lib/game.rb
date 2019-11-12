# frozen_string_literal: true

require './lib/castle'
require './lib/interactors/command_line_interactor'

class Game
  def initialize(layout, interactor = CommandLineInteractor.new)
    @interactor = interactor
    @castles = layout.map { |castle_data| Castle.new(castle_data) }
  end

  def start
    interactor.say('Welcome to the world!')

    interactor.say("You approach a #{@castles.first.name}!")

    @castles.first.enter
  end

  private

  attr_reader :interactor
end
