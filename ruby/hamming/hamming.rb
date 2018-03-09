class BookKeeping
  VERSION=3
end

class Hamming
  def self.compute(strand_a, strand_b)
    raise ArgumentError if strand_a.length != strand_b.length
    differences = 0
    enums = [strand_a.each_byte, strand_b.each_byte]
    loop do
      a, b = enums.map(&:next)
      differences += 1 if a != b
    end
    differences
  end
end
