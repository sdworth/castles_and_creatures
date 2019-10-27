require 'json'

class LayoutLoader
  def self.load(file)
    loaded_file = File.open(file)
    layout = JSON.load(loaded_file)
    loaded_file.close
    layout.map {|castle| castle.transform_keys(&:to_sym)}
  end
end