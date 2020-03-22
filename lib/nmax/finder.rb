module Nmax
  class Finder

    def initialize(input, numbers_count)
      @input = input
      @numbers_count = numbers_count
    end

    attr_reader :input, :numbers_count

    def find
      numbers = []
      puts 'Reading file by lines...'
      input.each_line do |line|
        numbers = numbers | NumbersParser.new(line).parse.uniq
      end
      max_elements(numbers)
    end

    private

    def max_elements(numbers)
      numbers.uniq.sort.reverse[0..(numbers_count - 1)]
    end
  end
end
