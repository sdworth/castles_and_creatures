# frozen_string_literal: true

class Castle
  attr_reader :name

  def initialize(castle_data)
    @name = castle_data[:name]
  end

  def enter; end
end
