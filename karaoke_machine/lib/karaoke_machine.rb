# frozen_string_literal: true

class KaraokeMachine
  KEYBOARD_PATTERN = %w[C C# D D# E F F# G G# A A# B].freeze

  def initialize(melody)
    @melody = melody
  end

  def transpose(key)
    @melody.scan(/\|| |[ACDFG]#|[A-G]/).map do |pattern|
      if ['|', ' '].include?(pattern)
        pattern
      else
        KEYBOARD_PATTERN[(KEYBOARD_PATTERN.find_index(pattern) + key) % KEYBOARD_PATTERN.length]
      end
    end.join
  end
end
