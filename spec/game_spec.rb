# frozen_string_literal: true

require './lib/game'
require './spec/support/fake_interactor'

RSpec.describe Game do
  let(:minimal_layout) do
    [
      {
        name: 'Fixer-Upper Castle',
        rooms: []
      }
    ]
  end
  let(:interactor) { FakeInteractor.new }
  let(:game) { Game.new(minimal_layout, interactor) }

  context '#start' do
    let(:castle) { instance_double(Castle, enter: '', name: 'Fixer-Upper Castle') }

    before do
      allow(Castle).to receive(:new).and_return(castle)
      allow(interactor).to receive(:say)
    end

    it 'says a welcome to game message' do
      game.start
      expect(interactor).to have_received(:say).with('Welcome to the world!')
    end

    it 'introduces the castle, and enters it' do
      game.start
      expect(interactor).to have_received(:say).with('You approach a Fixer-Upper Castle!')
      expect(castle).to have_received(:enter)
    end
  end
end
