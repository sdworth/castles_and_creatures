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

    xit 'deep symbolizes keys' do
    end
  end
end