module BookKeeping
  VERSION = 4
end

class Squares
  def initialize(number)
    @number = number
    @range = (1..number)
  end

  def square_of_sum
    @square_of_sum ||= begin
      @range.sum**2
    end
  end

  def sum_of_squares
    @sum_of_squares ||= begin
      @range.map do |number|
        number**2
      end.inject(:+)
    end
  end

  def difference
    square_of_sum - sum_of_squares
  end
end
