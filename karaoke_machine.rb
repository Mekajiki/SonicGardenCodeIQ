class KaraokeMachine
  def initialize(melody)
    @melody = melody
  end

  def transpose(ammount)
    convert_table = KEYS.zip(KEYS.rotate(ammount)).to_h
    @melody.gsub(KEY_REGEXP, convert_table)
  end

  private
  KEYS = %w(A A# B C C# D D# E F F# G G#)
  KEY_REGEXP = /[A-G]#?/
end
