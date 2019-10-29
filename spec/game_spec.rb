# frozen_string_literal: true

require './lib/game'

RSpec.describe Game do
  let(:game) { Game.new(minimal_layout) }
  let(:minimal_layout) do
    [
      {
        name: 'Fixer-Upper Castle',
        rooms: []
      }
    ]
  end

  context '#start' do
    it 'says a welcome to game message' do
      expect(game).to receive(:say).with('welcome to the world!')

      game.start
    end
  end

  context '#say' do
    it 'takes in a string and puts it' do
      string = 'hello world!'

      expect(game).to receive(:puts).with(string)

      game.say(string)
    end
  end
end
