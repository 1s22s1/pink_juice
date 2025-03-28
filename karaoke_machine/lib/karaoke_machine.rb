class KaraokeMachine
  KEYBOARD_PATTERN = %w(C C# D D# E F F# G G# A A# B).freeze

  def initialize(melody)
    @melody = melody
  end

  def transpose(key)
    @melody.scan(/\|| |[ACDFG]#/).map do |pattern|
      if ['|', ' '].include?(pattern)
        pattern
      else
        KEYBOARD_PATTERN[KEYBOARD_PATTERN.find_index(pattern) + 1]
      end
    end.join
  end
end
