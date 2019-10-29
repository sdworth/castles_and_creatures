# frozen_string_literal: true

require './lib/layout_loader'

RSpec.describe LayoutLoader do
  context '.load' do
    it 'loads a json file and converts it to a ruby object' do
      expect(LayoutLoader.load('./spec/test_layouts/minimal_layout.json')).to eq(
        [
          {
            name: 'Fixer-Upper Castle',
            rooms: []
          }
        ]
      )
    end

    it 'deep symbolizes keys' do
      expect(LayoutLoader.load('./spec/test_layouts/tiny_castle.json')).to eq(
        [
          {
            name: 'Tiny Castle',
            rooms: [{
              name: 'The Only Room',
              monster: {
                name: 'Claustrophobia',
                win_chance: 95
              },
              treasure: {
                type: 'Self-Satisfaction',
                points: 10
              }
            }]
          }
        ]
      )
    end
  end
end
