# frozen_string_literal: true

require './lib/castle'

RSpec.describe Castle do
  let(:castle_data) do
    {
      name: 'my castle',
      rooms: []
    }
  end
  subject { Castle.new(castle_data) }

  context '#name' do
    it 'returns the name of the castle from the given data' do
      expect(subject.name).to eq('my castle')
    end
  end
end
