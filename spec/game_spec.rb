# frozen_string_literal: true

require './lib/game'

RSpec.describe Game do
  let(:minimal_layout) do
    [
      {
        name: 'Fixer-Upper Castle',
        rooms: []
      }
    ]
  end
  let(:game) { Game.new(minimal_layout) }

  context '#start' do
    let(:castle) { instance_double(Castle, enter: '', name: 'Fixer-Upper Castle') }

    before do
      allow(Castle).to receive(:new).and_return(castle)
      allow(game).to receive(:say)
    end

    it 'says a welcome to game message' do
      game.start
      expect(game).to have_received(:say).with('Welcome to the world!')
    end

    it 'introduces the castle, and enters it' do
      game.start
      expect(game).to have_received(:say).with('You approach a Fixer-Upper Castle!')
      expect(castle).to have_received(:enter)
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
