# frozen_string_literal: true

require './lib/interactors/command_line_interactor'

RSpec.describe CommandLineInteractor do
  context '#say' do
    let(:interactor) { CommandLineInteractor.new }
    let(:string) { 'hello world!' }

    it 'takes in a string and puts it' do
      expect(interactor).to receive(:puts).with(string)

      interactor.say(string)
    end
  end
end
