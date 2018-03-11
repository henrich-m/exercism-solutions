module BookKeeping
  VERSION=4
end

class InvalidNucleotideError < StandardError; end

class Complement
  MAP={
    'C' => 'G',
    'G' => 'C',
    'T' => 'A',
    'A' => 'U',
  }

  def self.of_dna(strand)
    strand.chars.map do |nucleotide|
      translate(nucleotide)
    end.join
  rescue InvalidNucleotideError => _error
    ''
  end

  def self.translate(nucleotide)
    raise InvalidNucleotideError unless MAP.key?(nucleotide)
    MAP[nucleotide]
  end
end

