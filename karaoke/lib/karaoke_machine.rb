# frozen_string_literal: true

class KaraokeMachine
  KEY_BOARD_PATTERN = %w[C C# D D# E F F# G G# A A# B].freeze

  def initialize(melody)
    @melody = melody
  end

  def transpose(key)
    @melody.scan(/\|| |[A,C, D, F, G]#|[A-G]/).map do |pattern|
      if ['|', ' '].include?(pattern)
        pattern
      else
        index = (KEY_BOARD_PATTERN.index(pattern) + key) % KEY_BOARD_PATTERN.length
        KEY_BOARD_PATTERN[index]
      end
    end.join
  end
end
