# frozen_string_literal: true

require 'json'
require 'pry-byebug'

class LayoutLoader
  class << self
    def load(file)
      loaded_file = File.read(file)
      layout = JSON.parse(loaded_file)
      deep_symbolize_keys(layout)
    end

    private

    def deep_symbolize_keys(layout)
      layout.map do |castle|
        symbolize_keys(castle)
      end
    end

    def symbolize_keys(object)
      return unless object.is_a? Hash

      object.transform_keys!(&:to_sym)

      object.each do |_key, value|
        if value.is_a? Array
          value.each do |value_item|
            symbolize_keys(value_item)
          end
        else
          symbolize_keys(value)
        end
      end
    end
  end
end
