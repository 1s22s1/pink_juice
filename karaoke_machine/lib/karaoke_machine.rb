class KaraokeMachine
  def initialize(melody)
    @melody = melody
  end

  def transpose(key)
    @melody.scan(/\|/) do |pattern|
      if ['|'].include?(pattern)
        pattern
      end
    end
  end
end
