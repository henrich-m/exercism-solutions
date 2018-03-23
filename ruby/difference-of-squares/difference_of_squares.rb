module BookKeeping
  VERSION = 4
end

class Squares
  def initialize(number)
    @number = number
  end

  def square_of_sum
    @square_of_sum ||= begin
      sum = (1..@number).to_a.inject(:+)
      sum * sum
    end
  end

  def sum_of_squares
    @sum_of_squares ||= begin
      (1..@number).to_a.map do |number|
        number * number
      end.inject(:+)
    end
  end

  def difference
    square_of_sum - sum_of_squares
  end
end
