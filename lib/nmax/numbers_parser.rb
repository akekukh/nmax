module Nmax
  # Parse numbers from input stream
  class NumbersParser
    def initialize(data)
      @data = data

      @numbers = []
    end

    # Parse numbers from string data
    def parse
      numbers = @data.scan(/\d{1,1000}/m).map(&:to_i)

      numbers
    end
  end
end
