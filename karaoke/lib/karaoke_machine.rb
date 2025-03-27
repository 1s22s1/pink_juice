# frozen_string_literal: true

class KaraokeMachine
  KEY_BOARD_PATTERN = %w[C C# D D# E F F# G G# A A# B].freeze

  def initialize(melody)
    @melody = melody
  end

  def transpose(key)
    @melody.split('').map do |note_name|
      if KEY_BOARD_PATTERN.include?(note_name)
        index = KEY_BOARD_PATTERN.index(note_name) + key

        KEY_BOARD_PATTERN[index]
      else
        note_name
      end
    end.join
  end
end
