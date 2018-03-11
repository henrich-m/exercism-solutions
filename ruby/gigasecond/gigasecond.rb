class Gigasecond
  def self.from(from_date)
    Time.at(from_date.to_i + 1_000_000_000).utc
  end
end

module BookKeeping
  VERSION=6
end
