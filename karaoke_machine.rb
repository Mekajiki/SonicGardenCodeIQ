class KaraokeMachine
  def initialize(melody)
    @melody = melody
  end

  def transpose(ammount)
    symbols.map do |symbol|
      if code_num = CODES.index(symbol)
        CODES[(code_num + ammount) % CODES.length]
      else
        symbol
      end
    end
    .join
  end

  private
  CODES = %w(A A# B C C# D D# E F F# G G#)

  def symbols
    if @symbols
      @symbols
    else
      @symbols = []

      @melody.split('').each do |symbol|
        if symbol == '#'
          @symbols[-1] += symbol
        else
          @symbols.push symbol
        end
      end

      @symbols
    end
  end
end
