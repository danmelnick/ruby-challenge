# frozen_string_literal: true

class Dispute
  attr_reader :name

  def initialize(name:)
    @name = name
  end
end
